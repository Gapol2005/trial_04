<?php
require_once '../config/database.php';
require_once '../middleware/auth.php';
require_once '../helpers/response.php';

$database = new Database();
$db = $database->getConnection();

$auth = new AuthMiddleware($db);
if (!$auth->authenticate()) exit;

// Accept multipart/form-data with a 'payload' JSON field or raw JSON
$raw = file_get_contents('php://input');
if (isset($_POST['payload'])) {
    $data = json_decode($_POST['payload']);
} else {
    $data = json_decode($raw);
}

if (!$data || !isset($data->application_id)) {
    Response::error('application_id required', 400);
}

$application_id = (int)$data->application_id;

// detect saving as draft to avoid overwriting senior/contact records with empty values
$isDraft = isset($data->is_draft) && $data->is_draft === true;

try {
    $db->beginTransaction();

    // Fetch application and linked senior
    $stmt = $db->prepare('SELECT * FROM applications WHERE id = ?');
    $stmt->execute([$application_id]);
    $app = $stmt->fetch(PDO::FETCH_ASSOC);
    if (!$app) Response::error('Application not found', 404);

    $senior_id = $app['senior_id'];

    // If the application has no linked senior (deferred creation), allow updating
    // by persisting the applicant payload on the application record instead of
    // trying to update `senior_citizens`.
    $deferred = !$senior_id;

    if (!$deferred) {
        // Permission: ensure user can access barangay via senior record
        $bstmt = $db->prepare('SELECT barangay_id FROM senior_citizens WHERE id = ?');
        $bstmt->execute([$senior_id]);
        $s = $bstmt->fetch(PDO::FETCH_ASSOC);
        if (!$s) Response::error('Senior not found', 404);
        if (!$auth->canAccessBarangay($s['barangay_id'])) Response::error('No access to this application', 403);
    } else {
        // For deferred applications, check permission using application's submitted_by or branch rules
        if (!$auth->checkPermission('applications', 'can_edit')) {
            Response::error('No permission to edit this application', 403);
        }
    }

    // Update contact if provided (only when senior exists)
    if (!$deferred && isset($data->contact_info) && !$isDraft) {
        // If senior has contact_id, update; otherwise create. Only update provided fields to avoid clearing existing values.
        $cstmt = $db->prepare('SELECT contact_id FROM senior_citizens WHERE id = ?');
        $cstmt->execute([$senior_id]);
        $contact_id = $cstmt->fetchColumn();
        $ci = $data->contact_info;
        if ($contact_id) {
            // fetch existing contact
            $get = $db->prepare('SELECT * FROM contacts WHERE id = ?');
            $get->execute([$contact_id]);
            $existingContact = $get->fetch(PDO::FETCH_ASSOC) ?: [];
            $fields = [];
            $params = [':id' => $contact_id];
            if (isset($ci->mobile_number)) { $fields[] = 'mobile_number = :mobile'; $params[':mobile'] = $ci->mobile_number; }
            if (isset($ci->telephone_number)) { $fields[] = 'telephone_number = :telephone'; $params[':telephone'] = $ci->telephone_number; }
            if (isset($ci->email)) { $fields[] = 'email = :email'; $params[':email'] = $ci->email; }
            if (isset($ci->house_number)) { $fields[] = 'house_number = :house'; $params[':house'] = $ci->house_number; }
            if (isset($ci->street)) { $fields[] = 'street = :street'; $params[':street'] = $ci->street; }
            if (isset($data->personal_info->barangay_id)) { $fields[] = 'barangay_id = :barangay'; $params[':barangay'] = $data->personal_info->barangay_id; }
            if (!empty($fields)) {
                $uq = 'UPDATE contacts SET ' . implode(', ', $fields) . ' WHERE id = :id';
                $ust = $db->prepare($uq);
                $ust->execute($params);
            }
        } else {
            $iq = "INSERT INTO contacts (mobile_number, telephone_number, email, house_number, street, barangay_id, city, postal_code) VALUES (:mobile, :telephone, :email, :house, :street, :barangay, 'Zamboanga City', '7000')";
            $ist = $db->prepare($iq);
            $ist->execute([
                ':mobile' => $ci->mobile_number ?? null,
                ':telephone' => $ci->telephone_number ?? null,
                ':email' => $ci->email ?? null,
                ':house' => $ci->house_number ?? null,
                ':street' => $ci->street ?? null,
                ':barangay' => $data->personal_info->barangay_id ?? null
            ]);
            $newContactId = $db->lastInsertId();
            $up = $db->prepare('UPDATE senior_citizens SET contact_id = ? WHERE id = ?');
            $up->execute([$newContactId, $senior_id]);
        }
    } else if ($deferred && isset($data->contact_info)) {
        // For deferred applications, store contact_info in applicant_payload
        try {
            $col = $db->prepare("SHOW COLUMNS FROM applications LIKE 'applicant_payload'");
            $col->execute();
            if ($col->rowCount() > 0) {
                $pstmt = $db->prepare('SELECT applicant_payload FROM applications WHERE id = ?');
                $pstmt->execute([$application_id]);
                $existing = json_decode($pstmt->fetchColumn() ?: 'null', true) ?? [];
                // Only merge fields that are not null/empty to avoid overwriting existing data
                $ciToMerge = array_filter((array)$data->contact_info, function($v) { return $v !== null && $v !== ''; });
                $existing['contact_info'] = array_merge($existing['contact_info'] ?? [], $ciToMerge);
                $up = $db->prepare('UPDATE applications SET applicant_payload = :payload WHERE id = :id');
                $up->execute([':payload' => json_encode($existing), ':id' => $application_id]);
            } else {
                $pstmt = $db->prepare('SELECT notes FROM applications WHERE id = ?');
                $pstmt->execute([$application_id]);
                $notes = $pstmt->fetchColumn();
                $existing = [];
                if ($notes && strpos($notes, '[APPLICANT_PAYLOAD]') !== false) {
                    $parts = explode('[APPLICANT_PAYLOAD]', $notes);
                    $json = end($parts);
                    $existing = json_decode($json, true) ?? [];
                }
                $ciToMerge = array_filter((array)$data->contact_info, function($v) { return $v !== null && $v !== ''; });
                $existing['contact_info'] = array_merge($existing['contact_info'] ?? [], $ciToMerge);
                // Remove any existing APPLICANT_PAYLOAD marker before adding new one
                $pstmt2 = $db->prepare('SELECT notes FROM applications WHERE id = ?');
                $pstmt2->execute([$application_id]);
                $currentNotes = $pstmt2->fetchColumn() ?: '';
                if (strpos($currentNotes, '[APPLICANT_PAYLOAD]') !== false) {
                    $parts = explode('[APPLICANT_PAYLOAD]', $currentNotes);
                    $currentNotes = trim($parts[0]);
                }
                $marker = "\n[APPLICANT_PAYLOAD]" . json_encode($existing);
                $up = $db->prepare("UPDATE applications SET notes = CONCAT(IFNULL(:notes,''), :marker) WHERE id = :id");
                $up->execute([':notes' => $currentNotes, ':marker' => $marker, ':id' => $application_id]);
            }
        } catch (Exception $ex) { /* non-blocking */ }
    }

    // Update senior personal info (or store into applicant_payload when deferred)
    if (isset($data->personal_info)) {
        $p = $data->personal_info;
        if (!$deferred && !$isDraft) {
            // Fetch existing senior record and only update provided fields to avoid clearing data
            $getS = $db->prepare('SELECT * FROM senior_citizens WHERE id = ?');
            $getS->execute([$senior_id]);
            $existingSenior = $getS->fetch(PDO::FETCH_ASSOC) ?: [];
            $fields = [];
            $params = [':id' => $senior_id];
            if (isset($p->first_name)) { $fields[] = 'first_name = :first_name'; $params[':first_name'] = $p->first_name; }
            if (isset($p->middle_name)) { $fields[] = 'middle_name = :middle_name'; $params[':middle_name'] = $p->middle_name; }
            if (isset($p->last_name)) { $fields[] = 'last_name = :last_name'; $params[':last_name'] = $p->last_name; }
            if (isset($p->extension)) { $fields[] = 'extension = :extension'; $params[':extension'] = $p->extension; }
            if (isset($p->birthdate)) { $fields[] = 'birthdate = :birthdate'; $params[':birthdate'] = $p->birthdate; }
            if (isset($p->gender_id)) { $fields[] = 'gender_id = :gender_id'; $params[':gender_id'] = $p->gender_id; }
            if (isset($p->barangay_id)) { $fields[] = 'barangay_id = :barangay_id'; $params[':barangay_id'] = $p->barangay_id; }
            if (isset($p->educational_attainment_id)) { $fields[] = 'educational_attainment_id = :education'; $params[':education'] = $p->educational_attainment_id; }
            if (isset($p->monthly_salary)) { $fields[] = 'monthly_salary = :salary'; $params[':salary'] = $p->monthly_salary; }
            if (isset($p->occupation)) { $fields[] = 'occupation = :occupation'; $params[':occupation'] = $p->occupation; }
            if (isset($p->other_skills)) { $fields[] = 'other_skills = :skills'; $params[':skills'] = $p->other_skills; }
            if (!empty($fields)) {
                $uq = 'UPDATE senior_citizens SET ' . implode(', ', $fields) . ' WHERE id = :id';
                $ust = $db->prepare($uq);
                $ust->execute($params);
            }
        } else {
            // Persist personal_info into application applicant_payload
            // Load existing payload (if any)
            $existing = null;
            try {
                $col = $db->prepare("SHOW COLUMNS FROM applications LIKE 'applicant_payload'");
                $col->execute();
                if ($col->rowCount() > 0) {
                    $pstmt = $db->prepare('SELECT applicant_payload FROM applications WHERE id = ?');
                    $pstmt->execute([$application_id]);
                    $existing = json_decode($pstmt->fetchColumn() ?: 'null', true) ?? [];
                } else {
                    // try to parse notes marker
                    $pstmt = $db->prepare('SELECT notes FROM applications WHERE id = ?');
                    $pstmt->execute([$application_id]);
                    $notes = $pstmt->fetchColumn();
                    $existing = [];
                    if ($notes && strpos($notes, '[APPLICANT_PAYLOAD]') !== false) {
                        $parts = explode('[APPLICANT_PAYLOAD]', $notes);
                        $json = end($parts);
                        $existing = json_decode($json, true) ?? [];
                    }
                }
            } catch (Exception $ex) { $existing = []; }

            // Only merge fields that are not null/empty to avoid overwriting existing data
            // For full submissions (not draft), include all provided fields even if empty to ensure data is saved
            if ($isDraft) {
                $pToMerge = array_filter((array)$p, function($v) { return $v !== null && $v !== ''; });
            } else {
                // For full submission, include all fields from personal_info to ensure complete data is saved
                $pToMerge = (array)$p;
            }
            $existing['personal_info'] = array_merge($existing['personal_info'] ?? [], $pToMerge);
            $payload_json = json_encode($existing);
            try {
                $col = $db->prepare("SHOW COLUMNS FROM applications LIKE 'applicant_payload'");
                $col->execute();
                if ($col->rowCount() > 0) {
                    $up = $db->prepare('UPDATE applications SET applicant_payload = :payload WHERE id = :id');
                    $up->execute([':payload' => $payload_json, ':id' => $application_id]);
                } else {
                    // Remove any existing APPLICANT_PAYLOAD marker before adding new one
                    $pstmt = $db->prepare('SELECT notes FROM applications WHERE id = ?');
                    $pstmt->execute([$application_id]);
                    $currentNotes = $pstmt->fetchColumn() ?: '';
                    // Remove existing marker if present
                    if (strpos($currentNotes, '[APPLICANT_PAYLOAD]') !== false) {
                        $parts = explode('[APPLICANT_PAYLOAD]', $currentNotes);
                        $currentNotes = trim($parts[0]); // Keep everything before the marker
                    }
                    $marker = "\n[APPLICANT_PAYLOAD]" . $payload_json;
                    $up = $db->prepare("UPDATE applications SET notes = CONCAT(IFNULL(:notes,''), :marker) WHERE id = :id");
                    $up->execute([':notes' => $currentNotes, ':marker' => $marker, ':id' => $application_id]);
                }
            } catch (Exception $ex) { /* non-blocking */ }
        }
    }

    // Replace family members if provided (or store into applicant_payload when deferred)
    if (isset($data->family_members) && is_array($data->family_members)) {
        if (!$deferred && !$isDraft) {
            $del = $db->prepare('DELETE FROM family_members WHERE senior_id = ?');
            $del->execute([$senior_id]);
            $ins = $db->prepare('INSERT INTO family_members (senior_id, first_name, middle_name, last_name, extension, relationship, age, monthly_salary, contact_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)');
            foreach ($data->family_members as $member) {
                $ins->execute([
                    $senior_id,
                    $member->first_name ?? null,
                    $member->middle_name ?? null,
                    $member->last_name ?? null,
                    $member->extension ?? null,
                    $member->relationship ?? null,
                    $member->age ?? null,
                    $member->monthly_salary ?? null,
                    null
                ]);
            }
        } else {
            // Merge into applicant_payload — only when non-empty to avoid accidental clears
            if (!empty($data->family_members)) {
                try {
                    $col = $db->prepare("SHOW COLUMNS FROM applications LIKE 'applicant_payload'");
                    $col->execute();
                    if ($col->rowCount() > 0) {
                        $pstmt = $db->prepare('SELECT applicant_payload FROM applications WHERE id = ?');
                        $pstmt->execute([$application_id]);
                        $existing = json_decode($pstmt->fetchColumn() ?: 'null', true) ?? [];
                        $existing['family_members'] = $data->family_members;
                        $up = $db->prepare('UPDATE applications SET applicant_payload = :payload WHERE id = :id');
                        $up->execute([':payload' => json_encode($existing), ':id' => $application_id]);
                    } else {
                        $pstmt = $db->prepare('SELECT notes FROM applications WHERE id = ?');
                        $pstmt->execute([$application_id]);
                        $notes = $pstmt->fetchColumn();
                        $existing = [];
                        if ($notes && strpos($notes, '[APPLICANT_PAYLOAD]') !== false) {
                            $parts = explode('[APPLICANT_PAYLOAD]', $notes);
                            $json = end($parts);
                            $existing = json_decode($json, true) ?? [];
                        }
                        $existing['family_members'] = $data->family_members;
                        // Remove any existing APPLICANT_PAYLOAD marker before adding new one
                        $pstmt2 = $db->prepare('SELECT notes FROM applications WHERE id = ?');
                        $pstmt2->execute([$application_id]);
                        $currentNotes = $pstmt2->fetchColumn() ?: '';
                        if (strpos($currentNotes, '[APPLICANT_PAYLOAD]') !== false) {
                            $parts = explode('[APPLICANT_PAYLOAD]', $currentNotes);
                            $currentNotes = trim($parts[0]);
                        }
                        $marker = "\n[APPLICANT_PAYLOAD]" . json_encode($existing);
                        $up = $db->prepare("UPDATE applications SET notes = CONCAT(IFNULL(:notes,''), :marker) WHERE id = :id");
                        $up->execute([':notes' => $currentNotes, ':marker' => $marker, ':id' => $application_id]);
                    }
                } catch (Exception $ex) { /* non-blocking */ }
            }
        }
    }

    // Replace target sectors if provided (or store into applicant_payload when deferred)
    if (isset($data->target_sectors) && is_array($data->target_sectors)) {
        if (!$deferred) {
            // If saving as draft for an existing senior, persist sectors into applicant_payload instead of modifying senior_target_sectors
            if ($isDraft) {
                try {
                    $col = $db->prepare("SHOW COLUMNS FROM applications LIKE 'applicant_payload'");
                    $col->execute();
                    if ($col->rowCount() > 0) {
                        $pstmt = $db->prepare('SELECT applicant_payload FROM applications WHERE id = ?');
                        $pstmt->execute([$application_id]);
                        $existing = json_decode($pstmt->fetchColumn() ?: 'null', true) ?? [];
                        if (!empty($data->target_sectors)) $existing['target_sectors'] = $data->target_sectors;
                        $up = $db->prepare('UPDATE applications SET applicant_payload = :payload WHERE id = :id');
                        $up->execute([':payload' => json_encode($existing), ':id' => $application_id]);
                    } else {
                        $pstmt = $db->prepare('SELECT notes FROM applications WHERE id = ?');
                        $pstmt->execute([$application_id]);
                        $notes = $pstmt->fetchColumn();
                        $existing = [];
                        if ($notes && strpos($notes, '[APPLICANT_PAYLOAD]') !== false) {
                            $parts = explode('[APPLICANT_PAYLOAD]', $notes);
                            $json = end($parts);
                            $existing = json_decode($json, true) ?? [];
                        }
                        if (!empty($data->target_sectors)) {
                            $existing['target_sectors'] = $data->target_sectors;
                            // Remove any existing APPLICANT_PAYLOAD marker before adding new one
                            $pstmt2 = $db->prepare('SELECT notes FROM applications WHERE id = ?');
                            $pstmt2->execute([$application_id]);
                            $currentNotes = $pstmt2->fetchColumn() ?: '';
                            if (strpos($currentNotes, '[APPLICANT_PAYLOAD]') !== false) {
                                $parts = explode('[APPLICANT_PAYLOAD]', $currentNotes);
                                $currentNotes = trim($parts[0]);
                            }
                            $marker = "\n[APPLICANT_PAYLOAD]" . json_encode($existing);
                            $up = $db->prepare("UPDATE applications SET notes = CONCAT(IFNULL(:notes,''), :marker) WHERE id = :id");
                            $up->execute([':notes' => $currentNotes, ':marker' => $marker, ':id' => $application_id]);
                        }
                    }
                } catch (Exception $ex) { /* non-blocking */ }
            } else {
                $del = $db->prepare('UPDATE senior_target_sectors SET is_active = 0 WHERE senior_id = ?');
                $del->execute([$senior_id]);
                $ins = $db->prepare('INSERT INTO senior_target_sectors (senior_id, sector_id, other_specification, enrollment_date, is_active) VALUES (?, ?, ?, CURDATE(), 1)');
                $unmatched = [];
                foreach ($data->target_sectors as $s) {
                    // Handle both string values (from form) and object values (with sector_id property)
                    if (is_string($s)) {
                        $code = trim((string)$s);
                        // Try exact match by code or name
                        $tstmt = $db->prepare('SELECT id FROM target_sectors WHERE code = :code OR name = :name LIMIT 1');
                        $tstmt->execute([':code' => $code, ':name' => $code]);
                        $tsid = $tstmt->fetchColumn();
                        if ($tsid) {
                            $ins->execute([$senior_id, (int)$tsid, null]);
                        } else {
                            // Try partial match
                            $tstmt2 = $db->prepare('SELECT id FROM target_sectors WHERE code LIKE :q OR name LIKE :q LIMIT 1');
                            $tstmt2->execute([':q' => "%$code%"]);
                            $tsid2 = $tstmt2->fetchColumn();
                            if ($tsid2) {
                                $ins->execute([$senior_id, (int)$tsid2, null]);
                            } else {
                                // collect unmatched strings to persist into applicant_payload
                                $unmatched[] = $code;
                            }
                        }
                    } else {
                        $ins->execute([
                            $senior_id,
                            isset($s->sector_id) ? $s->sector_id : 0,
                            $s->other_specification ?? null
                        ]);
                    }
                }
                if (!empty($unmatched)) {
                    try {
                        $col = $db->prepare("SHOW COLUMNS FROM applications LIKE 'applicant_payload'");
                        $col->execute();
                        if ($col->rowCount() > 0) {
                            $pstmt = $db->prepare('SELECT applicant_payload FROM applications WHERE id = ?');
                            $pstmt->execute([$application_id]);
                            $existing = json_decode($pstmt->fetchColumn() ?: 'null', true) ?? [];
                            $existing['target_sectors_unmatched'] = array_merge($existing['target_sectors_unmatched'] ?? [], $unmatched);
                            $up = $db->prepare('UPDATE applications SET applicant_payload = :payload WHERE id = :id');
                            $up->execute([':payload' => json_encode($existing), ':id' => $application_id]);
                        } else {
                            $pstmt = $db->prepare('SELECT notes FROM applications WHERE id = ?');
                            $pstmt->execute([$application_id]);
                            $notes = $pstmt->fetchColumn();
                            $existing = [];
                            if ($notes && strpos($notes, '[APPLICANT_PAYLOAD]') !== false) {
                                $parts = explode('[APPLICANT_PAYLOAD]', $notes);
                                $json = end($parts);
                                $existing = json_decode($json, true) ?? [];
                            }
                            $existing['target_sectors_unmatched'] = array_merge($existing['target_sectors_unmatched'] ?? [], $unmatched);
                            // Remove any existing APPLICANT_PAYLOAD marker before adding new one
                            $pstmt2 = $db->prepare('SELECT notes FROM applications WHERE id = ?');
                            $pstmt2->execute([$application_id]);
                            $currentNotes = $pstmt2->fetchColumn() ?: '';
                            if (strpos($currentNotes, '[APPLICANT_PAYLOAD]') !== false) {
                                $parts = explode('[APPLICANT_PAYLOAD]', $currentNotes);
                                $currentNotes = trim($parts[0]);
                            }
                            $marker = "\n[APPLICANT_PAYLOAD]" . json_encode($existing);
                            $up = $db->prepare("UPDATE applications SET notes = CONCAT(IFNULL(:notes,''), :marker) WHERE id = :id");
                            $up->execute([':notes' => $currentNotes, ':marker' => $marker, ':id' => $application_id]);
                        }
                    } catch (Exception $ex) { /* non-blocking */ }
                }
            }
        } else {
            try {
                $col = $db->prepare("SHOW COLUMNS FROM applications LIKE 'applicant_payload'");
                $col->execute();
                if ($col->rowCount() > 0) {
                    $pstmt = $db->prepare('SELECT applicant_payload FROM applications WHERE id = ?');
                    $pstmt->execute([$application_id]);
                    $existing = json_decode($pstmt->fetchColumn() ?: 'null', true) ?? [];
                    if (!empty($data->target_sectors)) $existing['target_sectors'] = $data->target_sectors;
                    $up = $db->prepare('UPDATE applications SET applicant_payload = :payload WHERE id = :id');
                    $up->execute([':payload' => json_encode($existing), ':id' => $application_id]);
                } else {
                    $pstmt = $db->prepare('SELECT notes FROM applications WHERE id = ?');
                    $pstmt->execute([$application_id]);
                    $notes = $pstmt->fetchColumn();
                    $existing = [];
                    if ($notes && strpos($notes, '[APPLICANT_PAYLOAD]') !== false) {
                        $parts = explode('[APPLICANT_PAYLOAD]', $notes);
                        $json = end($parts);
                        $existing = json_decode($json, true) ?? [];
                    }
                    if (!empty($data->target_sectors)) {
                        $existing['target_sectors'] = $data->target_sectors;
                        // Remove any existing APPLICANT_PAYLOAD marker before adding new one
                        $pstmt2 = $db->prepare('SELECT notes FROM applications WHERE id = ?');
                        $pstmt2->execute([$application_id]);
                        $currentNotes = $pstmt2->fetchColumn() ?: '';
                        if (strpos($currentNotes, '[APPLICANT_PAYLOAD]') !== false) {
                            $parts = explode('[APPLICANT_PAYLOAD]', $currentNotes);
                            $currentNotes = trim($parts[0]);
                        }
                        $marker = "\n[APPLICANT_PAYLOAD]" . json_encode($existing);
                        $up = $db->prepare("UPDATE applications SET notes = CONCAT(IFNULL(:notes,''), :marker) WHERE id = :id");
                        $up->execute([':notes' => $currentNotes, ':marker' => $marker, ':id' => $application_id]);
                    }
                }
            } catch (Exception $ex) { /* non-blocking */ }
        }
    }

    // Handle sub-categories (store into applicant_payload)
    if (isset($data->sub_categories) && is_array($data->sub_categories)) {
        // Only persist when non-empty to avoid accidental clears of existing selections
        if (!empty($data->sub_categories)) {
            try {
                $col = $db->prepare("SHOW COLUMNS FROM applications LIKE 'applicant_payload'");
                $col->execute();
                if ($col->rowCount() > 0) {
                    $pstmt = $db->prepare('SELECT applicant_payload FROM applications WHERE id = ?');
                    $pstmt->execute([$application_id]);
                    $existing = json_decode($pstmt->fetchColumn() ?: 'null', true) ?? [];
                    $existing['sub_categories'] = $data->sub_categories;
                    $up = $db->prepare('UPDATE applications SET applicant_payload = :payload WHERE id = :id');
                    $up->execute([':payload' => json_encode($existing), ':id' => $application_id]);
                } else {
                    $pstmt = $db->prepare('SELECT notes FROM applications WHERE id = ?');
                    $pstmt->execute([$application_id]);
                    $notes = $pstmt->fetchColumn();
                    $existing = [];
                    if ($notes && strpos($notes, '[APPLICANT_PAYLOAD]') !== false) {
                        $parts = explode('[APPLICANT_PAYLOAD]', $notes);
                        $json = end($parts);
                        $existing = json_decode($json, true) ?? [];
                    }
                    $existing['sub_categories'] = $data->sub_categories;
                    // Remove any existing APPLICANT_PAYLOAD marker before adding new one
                    $pstmt2 = $db->prepare('SELECT notes FROM applications WHERE id = ?');
                    $pstmt2->execute([$application_id]);
                    $currentNotes = $pstmt2->fetchColumn() ?: '';
                    if (strpos($currentNotes, '[APPLICANT_PAYLOAD]') !== false) {
                        $parts = explode('[APPLICANT_PAYLOAD]', $currentNotes);
                        $currentNotes = trim($parts[0]);
                    }
                    $marker = "\n[APPLICANT_PAYLOAD]" . json_encode($existing);
                    $up = $db->prepare("UPDATE applications SET notes = CONCAT(IFNULL(:notes,''), :marker) WHERE id = :id");
                    $up->execute([':notes' => $currentNotes, ':marker' => $marker, ':id' => $application_id]);
                }
            } catch (Exception $ex) { /* non-blocking */ }
        }
    }

    // Update application notes/status
    $updateFields = [];
    $params = [':id' => $application_id];
    if (isset($data->notes)) { $updateFields[] = 'notes = :notes'; $params[':notes'] = $data->notes; }

    // Handle draft vs full submission
    if (isset($data->is_draft)) {
        if ($data->is_draft === true) {
            $updateFields[] = "status = 'Pending'";
        } else {
            // full submission -> move to For Verification
            $updateFields[] = "status = 'For Verification'";
            $updateFields[] = "submission_date = :submission_date";
            $params[':submission_date'] = date('Y-m-d H:i:s');
            // ensure submitted_by is set to current user if not present
            $updateFields[] = "submitted_by = :submitted_by";
            $params[':submitted_by'] = $auth->getUserId();
        }
    }

    if (!empty($updateFields)) {
        $q = 'UPDATE applications SET ' . implode(', ', $updateFields) . ' WHERE id = :id';
        $ust = $db->prepare($q);
        $ust->execute($params);
    }

    // Handle uploaded files similar to create.php
    if (!empty($_FILES)) {
        $uploadDir = __DIR__ . '/../../uploads/applications/';
        if (!is_dir($uploadDir)) mkdir($uploadDir, 0755, true);
        $doc_query = "INSERT INTO application_documents (application_id, document_type_id, file_path, original_filename, file_size, uploaded_by) VALUES (?, ?, ?, ?, ?, ?)";
        $doc_stmt = $db->prepare($doc_query);

        // Attempt to map document types
        $docTypes = [];
        try {
            $dtStmt = $db->query("SELECT id, name FROM document_types ORDER BY id");
            $docTypes = $dtStmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (Exception $ex) { $docTypes = []; }
        $default_doc_type_id = $docTypes[0]['id'] ?? null;

        function infer_doc_type_id_update($fieldName, $docTypes, $defaultId) {
            $fname = strtolower($fieldName);
            // Prioritized checks to avoid false positives
            $checks = [
                'barangay' => ['barangay'],
                'birth' => ['birth', 'age', 'proof'],
                'senior' => ['senior', 'photo', 'picture', 'image'],
                'comelec' => ['comelec', 'voter'],
                'thumb' => ['thumb', 'mark']
            ];

            foreach ($checks as $key => $keywords) {
                foreach ($keywords as $kw) {
                    if (strpos($fname, $kw) !== false) {
                        // find a docType whose name contains the keyword
                        foreach ($docTypes as $dt) {
                            if (strpos(strtolower($dt['name']), $kw) !== false) return $dt['id'];
                        }
                    }
                }
            }

            // Fallback: try to match any docType name contained in field name
            foreach ($docTypes as $dt) {
                $dtName = strtolower($dt['name']);
                if (strpos($fname, $dtName) !== false) return $dt['id'];
            }

            // Last resort: return default
            return $defaultId;
        }

        function infer_doc_label($fieldName) {
            $fname = strtolower($fieldName);
            if (strpos($fname, 'barangay') !== false) return 'barangay_certificate';
            if (strpos($fname, 'birth') !== false || strpos($fname, 'age') !== false || strpos($fname, 'proof') !== false) return 'birth_certificate';
            if (strpos($fname, 'senior') !== false || strpos($fname, 'photo') !== false || strpos($fname, 'picture') !== false) return 'senior_photo';
            if (strpos($fname, 'comelec') !== false || strpos($fname, 'voter') !== false) return 'comelec_id';
            if (strpos($fname, 'thumb') !== false || strpos($fname, 'mark') !== false) return 'thumbmark';
            // fallback: sanitize fieldName to safe label
            $lbl = preg_replace('/[^a-z0-9_\-]/', '_', preg_replace('/\s+/', '_', $fname));
            return $lbl ?: 'uploaded_document';
        }

        foreach ($_FILES as $fieldName => $fileInfo) {
            if ($fieldName === 'payload') continue;
            if (is_array($fileInfo['name'])) {
                for ($i = 0; $i < count($fileInfo['name']); $i++) {
                    if (!empty($fileInfo['tmp_name'][$i]) && is_uploaded_file($fileInfo['tmp_name'][$i])) {
                        $original = $fileInfo['name'][$i];
                        $ext = pathinfo($original, PATHINFO_EXTENSION);
                        $label = infer_doc_label($fieldName);
                        $displayName = $label . ($ext ? '.' . $ext : '');
                        $newName = time() . '_' . $label . '_' . bin2hex(random_bytes(4)) . ($ext ? '.' . $ext : '');
                        $target = $uploadDir . $newName;
                        if (move_uploaded_file($fileInfo['tmp_name'][$i], $target)) {
                            $relativePath = 'uploads/applications/' . $newName;
                            $docTypeId = infer_doc_type_id_update($fieldName, $docTypes, $default_doc_type_id);
                            // remove previous document of same type for this application (replace behaviour)
                            try {
                                $sel = $db->prepare('SELECT file_path FROM application_documents WHERE application_id = ? AND document_type_id = ?');
                                $sel->execute([$application_id, $docTypeId]);
                                $oldDocs = $sel->fetchAll(PDO::FETCH_ASSOC);
                                foreach ($oldDocs as $od) {
                                    if (!empty($od['file_path'])) {
                                        $oldPath = __DIR__ . '/../../' . $od['file_path'];
                                        if (file_exists($oldPath)) @unlink($oldPath);
                                    }
                                }
                                $del = $db->prepare('DELETE FROM application_documents WHERE application_id = ? AND document_type_id = ?');
                                $del->execute([$application_id, $docTypeId]);
                            } catch (Exception $ex) {
                                // non-fatal
                            }
                            $doc_stmt->execute([$application_id, $docTypeId, $relativePath, $displayName, $fileInfo['size'][$i] ?? null, $auth->getUserId()]);
                        }
                    }
                }
            } else {
                if (!empty($fileInfo['tmp_name']) && is_uploaded_file($fileInfo['tmp_name'])) {
                    $original = $fileInfo['name'];
                    $ext = pathinfo($original, PATHINFO_EXTENSION);
                    $label = infer_doc_label($fieldName);
                    $displayName = $label . ($ext ? '.' . $ext : '');
                    $newName = time() . '_' . $label . '_' . bin2hex(random_bytes(4)) . ($ext ? '.' . $ext : '');
                    $target = $uploadDir . $newName;
                    if (move_uploaded_file($fileInfo['tmp_name'], $target)) {
                        $relativePath = 'uploads/applications/' . $newName;
                        $docTypeId = infer_doc_type_id_update($fieldName, $docTypes, $default_doc_type_id);
                        // remove previous document of same type for this application (replace behaviour)
                        try {
                            $sel = $db->prepare('SELECT file_path FROM application_documents WHERE application_id = ? AND document_type_id = ?');
                            $sel->execute([$application_id, $docTypeId]);
                            $oldDocs = $sel->fetchAll(PDO::FETCH_ASSOC);
                            foreach ($oldDocs as $od) {
                                if (!empty($od['file_path'])) {
                                    $oldPath = __DIR__ . '/../../' . $od['file_path'];
                                    if (file_exists($oldPath)) @unlink($oldPath);
                                }
                            }
                            $del = $db->prepare('DELETE FROM application_documents WHERE application_id = ? AND document_type_id = ?');
                            $del->execute([$application_id, $docTypeId]);
                        } catch (Exception $ex) {
                            // non-fatal
                        }
                        $doc_stmt->execute([$application_id, $docTypeId, $relativePath, $displayName, $fileInfo['size'] ?? null, $auth->getUserId()]);
                    }
                }
            }
        }
    }

    $db->commit();
    Response::success(['application_id' => $application_id], 'Application updated');

} catch (Exception $e) {
    if ($db->inTransaction()) $db->rollBack();
    Response::error('Failed to update application: ' . $e->getMessage(), 500);
}
