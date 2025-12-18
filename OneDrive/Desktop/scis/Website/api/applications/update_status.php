<?php
require_once '../config/database.php';
require_once '../middleware/auth.php';
require_once '../helpers/response.php';
require_once '../helpers/age_calculator.php';

$database = new Database();
$db = $database->getConnection();

$auth = new AuthMiddleware($db);
if (!$auth->authenticate()) exit;

$data = json_decode(file_get_contents('php://input'));
$application_id = $data->application_id ?? null;
$new_status = $data->status ?? null;
if (!$application_id || !$new_status) Response::error('application_id and status required', 400);

// Map legacy 'Verified' to 'Approved' since registration_statuses uses 'Approved'
if (strtolower($new_status) === 'verified') {
    $new_status = 'Approved';
}

$valid_statuses = [
    'Draft', 'Submitted', 'For Verification', 'Verified',
    'For Printing', 'Printed', 'Ready for Release', 'Claimed', 'Rejected', 'Approved'
];
if (!in_array($new_status, $valid_statuses)) Response::error('Invalid status', 400);

try {
    $db->beginTransaction();

    // Fetch application; use LEFT JOIN so deferred applications (no senior yet) are allowed
    $query = "SELECT a.*, s.barangay_id FROM applications a LEFT JOIN senior_citizens s ON a.senior_id = s.id WHERE a.id = :id";
    $stmt = $db->prepare($query);
    $stmt->execute([':id' => $application_id]);
    $app = $stmt->fetch(PDO::FETCH_ASSOC);
    if (!$app) Response::error('Application not found', 404);

    // Permission: if there is a linked senior, check barangay access; otherwise require edit permission
    if (!empty($app['barangay_id'])) {
        if (!$auth->canAccessBarangay($app['barangay_id'])) Response::error('No access to this application', 403);
    } else {
        if (!$auth->checkPermission('applications', 'can_edit')) Response::error('No permission to edit this application', 403);
    }

    $update_fields = ['status' => $new_status];
    $user_id = $auth->getUserId();

    switch ($new_status) {
        case 'Submitted':
            $update_fields['submission_date'] = date('Y-m-d H:i:s');
            break;
        case 'Verified':
            $update_fields['verified_by'] = $user_id;
            $update_fields['verification_date'] = date('Y-m-d H:i:s');
            break;
        case 'Approved':
            // If there is no linked senior yet, attempt to create one from applicant_payload
            if (empty($app['senior_id'])) {
                // Load and normalize applicant payload from column or notes
                $payloadRaw = null;
                if (!empty($app['applicant_payload'])) {
                    $payloadRaw = $app['applicant_payload'];
                } elseif (!empty($app['notes']) && strpos($app['notes'], '[APPLICANT_PAYLOAD]') !== false) {
                    $parts = explode('[APPLICANT_PAYLOAD]', $app['notes']);
                    $payloadRaw = end($parts);
                }

                if (!$payloadRaw) {
                    Response::error('No applicant payload found to create senior record', 400);
                }

                // Ensure $payloadArr is an associative array regardless of storage format
                if (is_array($payloadRaw)) {
                    $payloadArr = $payloadRaw;
                } else {
                    $payloadArr = json_decode($payloadRaw, true);
                }
                // Debug log raw payload for troubleshooting malformed drafts
                try {
                    $logDir = __DIR__ . '/../../logs/';
                    if (!is_dir($logDir)) @mkdir($logDir, 0755, true);
                    $logFile = $logDir . 'app_payload_debug.log';
                    $entry = date('Y-m-d H:i:s') . " | APP_ID:" . $application_id . " | RAW_PAYLOAD:" . (is_string($payloadRaw) ? $payloadRaw : json_encode($payloadRaw)) . "\n";
                    @file_put_contents($logFile, $entry, FILE_APPEND | LOCK_EX);
                } catch (Exception $e) { /* non-fatal */ }
                if (!is_array($payloadArr)) Response::error('Invalid applicant payload JSON', 400);

                // Normalize personal_info: accept payload.personal_info or top-level personal keys
                $personal = [];
                if (isset($payloadArr['personal_info'])) {
                    $personal = (array)$payloadArr['personal_info'];
                }
                // merge top-level personal keys if present (some clients store directly)
                $topKeys = ['first_name','middle_name','last_name','extension','birthdate','gender_id','barangay_id','educational_attainment_id','monthly_salary','occupation','other_skills','photo_path','thumbmark_verified'];
                foreach ($topKeys as $k) {
                    if (empty($personal[$k]) && isset($payloadArr[$k])) $personal[$k] = $payloadArr[$k];
                }

                // contact, family, sectors
                $contact_info = isset($payloadArr['contact_info']) ? (array)$payloadArr['contact_info'] : [];
                $family_members = isset($payloadArr['family_members']) && is_array($payloadArr['family_members']) ? $payloadArr['family_members'] : [];
                $target_sectors = isset($payloadArr['target_sectors']) && is_array($payloadArr['target_sectors']) ? $payloadArr['target_sectors'] : [];

                // Debug log normalized personal info
                try {
                    $logFile = __DIR__ . '/../../logs/app_payload_debug.log';
                    $entry = date('Y-m-d H:i:s') . " | APP_ID:" . $application_id . " | NORMALIZED_PERSONAL:" . json_encode($personal) . "\n";
                    @file_put_contents($logFile, $entry, FILE_APPEND | LOCK_EX);
                } catch (Exception $e) { /* non-fatal */ }

                // basic validation
                if (empty($personal['first_name']) || empty($personal['last_name']) || empty($personal['birthdate']) || empty($personal['barangay_id'])) {
                    Response::error('Applicant personal info missing required fields (first_name, last_name, birthdate, barangay_id)', 400);
                }

                // Duplicate check
                $dupQ = "SELECT id, osca_id FROM senior_citizens WHERE TRIM(LOWER(first_name)) = TRIM(LOWER(:first))
                         AND TRIM(LOWER(last_name)) = TRIM(LOWER(:last))
                         AND birthdate = :birthdate AND barangay_id = :barangay LIMIT 1";
                $dupStmt = $db->prepare($dupQ);
                $dupStmt->execute([
                    ':first' => $personal['first_name'] ?? $personal->first_name ?? null,
                    ':last' => $personal['last_name'] ?? $personal->last_name ?? null,
                    ':birthdate' => $personal['birthdate'] ?? $personal->birthdate ?? null,
                    ':barangay' => $personal['barangay_id'] ?? $personal->barangay_id ?? null
                ]);
                $existing = $dupStmt->fetch(PDO::FETCH_ASSOC);
                if ($existing) {
                    Response::error('A senior record already exists for this person', 409, ['senior_id' => $existing['id'], 'osca_id' => $existing['osca_id']]);
                }

                // Create contact if provided
                $contact_id = null;
                if ($contact_info) {
                    $cq = "INSERT INTO contacts (mobile_number, telephone_number, email, house_number, street, barangay_id, city, postal_code) VALUES (:mobile, :telephone, :email, :house, :street, :barangay, 'Zamboanga City', '7000')";
                    $cstmt = $db->prepare($cq);
                    $cstmt->execute([
                        ':mobile' => $contact_info['mobile_number'] ?? $contact_info->mobile_number ?? null,
                        ':telephone' => $contact_info['telephone_number'] ?? $contact_info->telephone_number ?? null,
                        ':email' => $contact_info['email'] ?? $contact_info->email ?? null,
                        ':house' => $contact_info['house_number'] ?? $contact_info->house_number ?? null,
                        ':street' => $contact_info['street'] ?? $contact_info->street ?? null,
                        ':barangay' => $personal['barangay_id'] ?? $personal->barangay_id ?? null
                    ]);
                    $contact_id = $db->lastInsertId();
                }

                // Generate OSCA ID
                $year = date('Y');
                $q = "SELECT MAX(CAST(SUBSTRING(osca_id, -6) AS UNSIGNED)) as last_num FROM senior_citizens WHERE osca_id LIKE 'ZC-$year-%'";
                $ln = $db->query($q)->fetch(PDO::FETCH_ASSOC)['last_num'] ?? 0;
                $new_num = str_pad($ln + 1, 6, '0', STR_PAD_LEFT);
                $osca_id = "ZC-$year-$new_num";

                // Insert senior_citizens
                $ins = "INSERT INTO senior_citizens (osca_id, first_name, middle_name, last_name, extension, birthdate, gender_id, barangay_id, branch_id, contact_id, educational_attainment_id, monthly_salary, occupation, other_skills, socioeconomic_status_id, mobility_level_id, registration_date, registration_status_id, registered_by, photo_path, thumbmark_verified) VALUES (:osca_id, :first_name, :middle_name, :last_name, :extension, :birthdate, :gender_id, :barangay_id, :branch_id, :contact_id, :education, :salary, :occupation, :skills, :socioeconomic, :mobility, NOW(), 1, :registered_by, :photo, :thumbmark)";
                $ist = $db->prepare($ins);
                $ist->execute([
                    ':osca_id' => $osca_id,
                    ':first_name' => $personal['first_name'] ?? $app['first_name'] ?? '',
                    ':middle_name' => $personal['middle_name'] ?? $app['middle_name'] ?? '',
                    ':last_name' => $personal['last_name'] ?? $app['last_name'] ?? '',
                    ':extension' => $personal['extension'] ?? $app['extension'] ?? null,
                    ':birthdate' => $personal['birthdate'] ?? $app['birthdate'] ?? null,
                    ':gender_id' => $personal['gender_id'] ?? $app['gender_id'] ?? null,
                    ':barangay_id' => $personal['barangay_id'] ?? $app['barangay_id'] ?? null,
                    ':branch_id' => $auth->getBranchId(),
                    ':contact_id' => $contact_id,
                    ':education' => $personal['educational_attainment_id'] ?? $app['educational_attainment_id'] ?? null,
                    ':salary' => $personal['monthly_salary'] ?? $app['monthly_salary'] ?? null,
                    ':occupation' => $personal['occupation'] ?? $app['occupation'] ?? null,
                    ':skills' => $personal['other_skills'] ?? $app['other_skills'] ?? null,
                    ':socioeconomic' => $personal['socioeconomic_status_id'] ?? $app['socioeconomic_status_id'] ?? null,
                    ':mobility' => $personal['mobility_level_id'] ?? $app['mobility_level_id'] ?? null,
                    ':registered_by' => $auth->getUserId(),
                    ':photo' => $personal['photo_path'] ?? $app['photo_path'] ?? null,
                    ':thumbmark' => !empty($personal['thumbmark_verified']) || !empty($app['thumbmark_verified']) ? 1 : 0
                ]);
                $new_senior_id = $db->lastInsertId();

                // Insert family members
                if (!empty($family_members) && is_array($family_members)) {
                    $fin = $db->prepare('INSERT INTO family_members (senior_id, first_name, middle_name, last_name, extension, relationship, age, monthly_salary, contact_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)');
                    foreach ($family_members as $m) {
                        $age_calc = isset($m['birthdate']) ? AgeCalculator::calculateAge($m['birthdate']) : ($m['age'] ?? null);
                        $fin->execute([
                            $new_senior_id,
                            $m['first_name'] ?? $m->first_name ?? null,
                            $m['middle_name'] ?? $m->middle_name ?? null,
                            $m['last_name'] ?? $m->last_name ?? null,
                            $m['extension'] ?? $m->extension ?? null,
                            ($m['relationship'] ?? $m->relationship ?? null),
                            $age_calc,
                            $m['monthly_salary'] ?? $m->monthly_salary ?? null,
                            null
                        ]);
                    }
                }

                // Insert target sectors
                if (!empty($target_sectors) && is_array($target_sectors)) {
                    $sin = $db->prepare('INSERT INTO senior_target_sectors (senior_id, sector_id, other_specification, enrollment_date, is_active) VALUES (?, ?, ?, CURDATE(), 1)');
                    foreach ($target_sectors as $s) {
                        $sin->execute([$new_senior_id, $s['sector_id'] ?? $s->sector_id ?? null, $s['other_specification'] ?? $s->other_specification ?? null]);
                    }
                }

                // Assign eligible benefits
                $birth = $personal['birthdate'] ?? $personal->birthdate ?? null;
                $ageForBenefits = $birth ? AgeCalculator::calculateAge($birth) : null;
                if ($ageForBenefits !== null) {
                    $benefits = BenefitCalculator::calculateEligibleBenefits($ageForBenefits, $personal['barangay_id'] ?? $personal->barangay_id ?? null);
                    if (!empty($benefits)) {
                        $bq = $db->prepare('INSERT INTO senior_eligible_benefits (senior_id, benefit_id, eligible_from, eligible_until) VALUES (?, ?, CURDATE(), DATE_ADD(CURDATE(), INTERVAL 1 YEAR))');
                        foreach ($benefits as $bid) $bq->execute([$new_senior_id, $bid]);
                    }
                }

                // Link application to new senior
                $link = $db->prepare('UPDATE applications SET senior_id = :sid WHERE id = :id');
                $link->execute([':sid' => $new_senior_id, ':id' => $application_id]);

                // reflect in $app for subsequent permission logic
                $app['senior_id'] = $new_senior_id;
                $app['barangay_id'] = $personal['barangay_id'] ?? $personal->barangay_id ?? $app['barangay_id'] ?? null;
            }
            $update_fields['approved_by'] = $user_id;
            $update_fields['approval_date'] = date('Y-m-d H:i:s');
            break;
        case 'Approved':
            $update_fields['approved_by'] = $user_id;
            $update_fields['approval_date'] = date('Y-m-d H:i:s');
            break;
        case 'Printed':
            $update_fields['printed_by'] = $user_id;
            $update_fields['print_date'] = date('Y-m-d H:i:s');
            break;
        case 'Claimed':
            $update_fields['claimed_by'] = $user_id;
            $update_fields['claim_date'] = date('Y-m-d H:i:s');
            break;
    }

    // Build SET clause
    $set_clause = [];
    $params = [':id' => $application_id];
    foreach ($update_fields as $k => $v) {
        $set_clause[] = "$k = :$k";
        $params[":$k"] = $v;
    }

    // Append a status note
    $params[':status_note'] = date('Y-m-d H:i:s') . " - Status changed to $new_status by user $user_id";
    $query = "UPDATE applications SET " . implode(', ', $set_clause) . ", notes = CONCAT(COALESCE(notes,''), '\n', :status_note) WHERE id = :id";

    $ust = $db->prepare($query);
    $ust->execute($params);

    // Log activity
    $log_query = "INSERT INTO activity_logs (user_id, action, module, record_id, description) VALUES (:user_id, 'UPDATE_STATUS', 'applications', :app_id, :desc)";
    $lstmt = $db->prepare($log_query);
    $lstmt->execute([
        ':user_id' => $user_id,
        ':app_id' => $application_id,
        ':desc' => "Application status changed to: $new_status"
    ]);

    $db->commit();
    Response::success(['application_id' => $application_id, 'new_status' => $new_status], 'Application status updated');
} catch (Exception $e) {
    if ($db->inTransaction()) $db->rollBack();
    Response::error('Failed to update status: ' . $e->getMessage(), 500);
}