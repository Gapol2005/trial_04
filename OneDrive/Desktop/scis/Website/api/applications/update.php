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
    if (!$deferred && isset($data->contact_info)) {
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
    }

    // Update senior personal info (or store into applicant_payload when deferred)
    if (isset($data->personal_info)) {
        $p = $data->personal_info;
        if (!$deferred) {
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

            $existing['personal_info'] = array_merge($existing['personal_info'] ?? [], (array)$p);
            $payload_json = json_encode($existing);
            try {
                $col = $db->prepare("SHOW COLUMNS FROM applications LIKE 'applicant_payload'");
                $col->execute();
                if ($col->rowCount() > 0) {
                    $up = $db->prepare('UPDATE applications SET applicant_payload = :payload WHERE id = :id');
                    $up->execute([':payload' => $payload_json, ':id' => $application_id]);
                } else {
                    $marker = "\n[APPLICANT_PAYLOAD]" . $payload_json;
                    $up = $db->prepare("UPDATE applications SET notes = CONCAT(IFNULL(notes,''), :marker) WHERE id = :id");
                    $up->execute([':marker' => $marker, ':id' => $application_id]);
                }
            } catch (Exception $ex) { /* non-blocking */ }
        }
    }

    // Replace family members if provided (or store into applicant_payload when deferred)
    if (isset($data->family_members) && is_array($data->family_members)) {
        if (!$deferred) {
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
            // Merge into applicant_payload
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
                    $marker = "\n[APPLICANT_PAYLOAD]" . json_encode($existing);
                    $up = $db->prepare("UPDATE applications SET notes = CONCAT(IFNULL(notes,''), :marker) WHERE id = :id");
                    $up->execute([':marker' => $marker, ':id' => $application_id]);
                }
            } catch (Exception $ex) { /* non-blocking */ }
        }
    }

    // Replace target sectors if provided (or store into applicant_payload when deferred)
    if (isset($data->target_sectors) && is_array($data->target_sectors)) {
        if (!$deferred) {
            $del = $db->prepare('UPDATE senior_target_sectors SET is_active = 0 WHERE senior_id = ?');
            $del->execute([$senior_id]);
            $ins = $db->prepare('INSERT INTO senior_target_sectors (senior_id, sector_id, other_specification, enrollment_date, is_active) VALUES (?, ?, ?, CURDATE(), 1)');
            foreach ($data->target_sectors as $s) {
                $ins->execute([
                    $senior_id,
                    $s->sector_id ?? null,
                    $s->other_specification ?? null
                ]);
            }
        } else {
            try {
                $col = $db->prepare("SHOW COLUMNS FROM applications LIKE 'applicant_payload'");
                $col->execute();
                if ($col->rowCount() > 0) {
                    $pstmt = $db->prepare('SELECT applicant_payload FROM applications WHERE id = ?');
                    $pstmt->execute([$application_id]);
                    $existing = json_decode($pstmt->fetchColumn() ?: 'null', true) ?? [];
                    $existing['target_sectors'] = $data->target_sectors;
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
                    $existing['target_sectors'] = $data->target_sectors;
                    $marker = "\n[APPLICANT_PAYLOAD]" . json_encode($existing);
                    $up = $db->prepare("UPDATE applications SET notes = CONCAT(IFNULL(notes,''), :marker) WHERE id = :id");
                    $up->execute([':marker' => $marker, ':id' => $application_id]);
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
            $map = [
                'proof_of_age' => ['age','birth','birth certificate','birth'],
                'barangay_certification' => ['barangay','certificate','residency','resid'],
                'comelec_id' => ['comelec','voter','comelec'],
                'senior_picture' => ['picture','photo','image']
            ];
            $fname = strtolower($fieldName);
            foreach ($map as $key => $keywords) {
                if (strpos($fname, $key) !== false) {
                    foreach ($docTypes as $dt) {
                        $lname = strtolower($dt['name']);
                        foreach ($keywords as $kw) {
                            if (strpos($lname, $kw) !== false) return $dt['id'];
                        }
                    }
                }
            }
            foreach ($docTypes as $dt) { if (strpos(strtolower($dt['name']), $fname) !== false) return $dt['id']; }
            return $defaultId;
        }

        foreach ($_FILES as $fieldName => $fileInfo) {
            if ($fieldName === 'payload') continue;
            if (is_array($fileInfo['name'])) {
                for ($i = 0; $i < count($fileInfo['name']); $i++) {
                    if (!empty($fileInfo['tmp_name'][$i]) && is_uploaded_file($fileInfo['tmp_name'][$i])) {
                        $original = $fileInfo['name'][$i];
                        $ext = pathinfo($original, PATHINFO_EXTENSION);
                        $newName = time() . '_' . bin2hex(random_bytes(4)) . ($ext ? '.' . $ext : '');
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
                            $doc_stmt->execute([$application_id, $docTypeId, $relativePath, $original, $fileInfo['size'][$i] ?? null, $auth->getUserId()]);
                        }
                    }
                }
            } else {
                if (!empty($fileInfo['tmp_name']) && is_uploaded_file($fileInfo['tmp_name'])) {
                    $original = $fileInfo['name'];
                    $ext = pathinfo($original, PATHINFO_EXTENSION);
                    $newName = time() . '_' . bin2hex(random_bytes(4)) . ($ext ? '.' . $ext : '');
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
                        $doc_stmt->execute([$application_id, $docTypeId, $relativePath, $original, $fileInfo['size'] ?? null, $auth->getUserId()]);
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
