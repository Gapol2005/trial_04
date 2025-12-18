<?php
    require_once '../config/database.php';
    require_once '../middleware/auth.php';
    require_once '../helpers/response.php';

    $database = new Database();
    $db = $database->getConnection();

    $auth = new AuthMiddleware($db);
    if (!$auth->authenticate()) exit;

    $id = isset($_GET['id']) ? (int)$_GET['id'] : null;
    if (!$id) Response::error('Application id required', 400);

    try {
        $query = "SELECT a.*, at.name as application_type, 
                    CONCAT(s.first_name, ' ', s.last_name) as senior_name,
                    s.*,
                    c.mobile_number, c.telephone_number, c.house_number, c.street,
                    b.name as barangay_name,
                    CONCAT(submitted.first_name, ' ', submitted.last_name) as submitted_by_name,
                    CONCAT(verified.first_name, ' ', verified.last_name) as verified_by_name
                  FROM applications a
                  LEFT JOIN senior_citizens s ON a.senior_id = s.id
                  LEFT JOIN contacts c ON s.contact_id = c.id
                  LEFT JOIN barangays b ON s.barangay_id = b.id
                  LEFT JOIN application_types at ON a.application_type_id = at.id
                  LEFT JOIN admin_users submitted ON a.submitted_by = submitted.id
                  LEFT JOIN admin_users verified ON a.verified_by = verified.id
                  WHERE a.id = ? LIMIT 1";

        $stmt = $db->prepare($query);
        $stmt->execute([$id]);
        $app = $stmt->fetch(PDO::FETCH_ASSOC);

        if (!$app) Response::error('Application not found', 404);

        // If no linked senior, try to populate display fields from stored applicant_payload
        if ((empty($app['first_name']) || empty($app['last_name']))) {
            $payload = null;
            if (!empty($app['applicant_payload'])) {
                $payload = json_decode($app['applicant_payload'], true);
            } elseif (!empty($app['notes']) && strpos($app['notes'], '[APPLICANT_PAYLOAD]') !== false) {
                // older installs stored payload appended to notes with marker [APPLICANT_PAYLOAD]
                $marker = '[APPLICANT_PAYLOAD]';
                $pos = strpos($app['notes'], $marker);
                if ($pos !== false) {
                    $json = substr($app['notes'], $pos + strlen($marker));
                    $decoded = json_decode($json, true);
                    if (is_array($decoded)) $payload = $decoded;
                }
            }
            if (is_array($payload)) {
                $personal = $payload['personal_info'] ?? [];
                // map common fields if present in payload.personal_info
                if (!empty($personal['first_name'])) $app['first_name'] = $personal['first_name'];
                if (!empty($personal['last_name'])) $app['last_name'] = $personal['last_name'];
                if (!empty($personal['middle_name'])) $app['middle_name'] = $personal['middle_name'];
                if (!empty($personal['extension'])) $app['extension'] = $personal['extension'];
                if (!empty($personal['birthdate'])) $app['birthdate'] = $personal['birthdate'];
                if (!empty($personal['sex'])) $app['sex'] = $personal['sex'];
                if (!empty($personal['gender_id'])) $app['gender_id'] = $personal['gender_id'];
                if (!empty($personal['house_number'])) $app['house_number'] = $personal['house_number'];
                if (!empty($personal['street'])) $app['street'] = $personal['street'];
                if (!empty($payload['photo_path'])) $app['photo_path'] = $payload['photo_path'];
                // Load contact_info from payload if not available from join
                if (empty($app['mobile_number']) && empty($app['telephone_number'])) {
                    $contact = $payload['contact_info'] ?? [];
                    if (!empty($contact['mobile_number'])) $app['mobile_number'] = $contact['mobile_number'];
                    if (!empty($contact['telephone_number'])) $app['telephone_number'] = $contact['telephone_number'];
                    if (!empty($contact['house_number'])) $app['house_number'] = $contact['house_number'];
                    if (!empty($contact['street'])) $app['street'] = $contact['street'];
                }
                // resolve barangay name if barangay_id present
                if (!empty($personal['barangay_id'])) {
                    try {
                        $bstmt = $db->prepare('SELECT name FROM barangays WHERE id = ? LIMIT 1');
                        $bstmt->execute([$personal['barangay_id']]);
                        $brow = $bstmt->fetch(PDO::FETCH_ASSOC);
                        if ($brow) $app['barangay_name'] = $brow['name'];
                    } catch (Exception $e) {
                        // ignore
                    }
                }
                // compute age from birthdate
                if (!empty($app['birthdate'])) {
                    try {
                        $bd = new DateTime($app['birthdate']);
                        $now = new DateTime();
                        $age = $now->diff($bd)->y;
                        $app['age'] = $age;
                    } catch (Exception $e) {
                        $app['age'] = null;
                    }
                }
                // build senior_name for UI
                $app['senior_name'] = trim((isset($app['first_name']) ? $app['first_name'] : '') . ' ' . (isset($app['last_name']) ? $app['last_name'] : ''));
            }
        } else {
            // if senior fields exist, ensure age is present
            if (empty($app['age']) && !empty($app['birthdate'])) {
                try {
                    $bd = new DateTime($app['birthdate']);
                    $now = new DateTime();
                    $app['age'] = $now->diff($bd)->y;
                } catch (Exception $e) {
                    $app['age'] = null;
                }
            }
        }

        // Fetch documents
        $dstmt = $db->prepare('SELECT * FROM application_documents WHERE application_id = ?');
        $dstmt->execute([$id]);
        $docs = $dstmt->fetchAll(PDO::FETCH_ASSOC);

        $app['documents'] = $docs;

        // Include family members and target sectors (association)
        $family = [];
        $sectors = [];
        if (!empty($app['senior_name']) && !empty($app['id'])) {
            // If senior exists, try to fetch family_members and senior_target_sectors
            try {
                $sid = $app['senior_id'] ?? null;
                if ($sid) {
                    $fmst = $db->prepare('SELECT * FROM family_members WHERE senior_id = ?');
                    $fmst->execute([$sid]);
                    $family = $fmst->fetchAll(PDO::FETCH_ASSOC) ?: [];

                    $ts = $db->prepare('SELECT sts.*, ts.code as sector_code, ts.name as sector_name FROM senior_target_sectors sts LEFT JOIN target_sectors ts ON sts.sector_id = ts.id WHERE sts.senior_id = ? AND sts.is_active = 1');
                    $ts->execute([$sid]);
                    $sectors = $ts->fetchAll(PDO::FETCH_ASSOC) ?: [];
                }
            } catch (Exception $e) {
                $family = [];
                $sectors = [];
            }
        }

        // If no senior or no data, fallback to applicant_payload / notes storage
        if (empty($family) || empty($sectors)) {
            $payload = null;
            if (!empty($app['applicant_payload'])) {
                $payload = json_decode($app['applicant_payload'], true);
            } elseif (!empty($app['notes']) && strpos($app['notes'], '[APPLICANT_PAYLOAD]') !== false) {
                $marker = '[APPLICANT_PAYLOAD]';
                $pos = strpos($app['notes'], $marker);
                if ($pos !== false) {
                    $json = substr($app['notes'], $pos + strlen($marker));
                    $decoded = json_decode($json, true);
                    if (is_array($decoded)) $payload = $decoded;
                }
            }
            if (is_array($payload)) {
                if (empty($family) && !empty($payload['family_members'])) $family = $payload['family_members'];
                if (empty($sectors) && !empty($payload['target_sectors'])) $sectors = $payload['target_sectors'];
            }
        }

        $app['family_members'] = $family;
        $app['target_sectors'] = $sectors;

        Response::success($app, 'Application details retrieved');
    } catch (Exception $e) {
        Response::error('Failed to load application details: ' . $e->getMessage(), 500);
    }
