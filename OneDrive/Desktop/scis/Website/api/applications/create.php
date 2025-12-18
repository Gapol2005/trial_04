<?php
    require_once '../config/database.php';
    require_once '../middleware/auth.php';
    require_once '../helpers/response.php';
    require_once '../helpers/age_calculator.php';

    $database = new Database();
    $db = $database->getConnection();

    $auth = new AuthMiddleware($db);
    if (!$auth->authenticate()) exit;

    // Support both JSON body and multipart/form-data with a 'payload' field
    $rawInput = file_get_contents("php://input");
    if (isset($_POST['payload'])) {
        $data = json_decode($_POST['payload']);
    } else {
        $data = json_decode($rawInput);
    }

    // Validate required fields
    $required = ['application_type_id', 'personal_info'];
    foreach ($required as $field) {
        if (!isset($data->$field)) {
            Response::error("Field $field is required", 400);
        }
    }

    $personal = $data->personal_info;

    // AGE VALIDATION - CRITICAL: Must be 60+
    $birthdate = $personal->birthdate;
    $age = AgeCalculator::calculateAge($birthdate);

    if ($age < 60) {
        Response::error(
            "Applicant must be at least 60 years old to register. Current age: $age years. " .
            "Senior Citizen registration is only available for individuals aged 60 and above per RA 7432.",
            400,
            ['age' => $age, 'minimum_required' => 60]
        );
    }

    // Prevent duplicate registrations: if a senior_citizens record already exists
    // for the same person (match by first_name, last_name, birthdate, barangay),
    // reject the application to enforce 1 person => 1 registered.
    try {
        $dupQuery = "SELECT id, osca_id FROM senior_citizens WHERE TRIM(LOWER(first_name)) = TRIM(LOWER(:first))
                     AND TRIM(LOWER(last_name)) = TRIM(LOWER(:last))
                     AND birthdate = :birthdate
                     AND barangay_id = :barangay LIMIT 1";
        $dupStmt = $db->prepare($dupQuery);
        $dupStmt->execute([
            ':first' => $personal->first_name,
            ':last' => $personal->last_name,
            ':birthdate' => $birthdate,
            ':barangay' => $personal->barangay_id
        ]);
        $existing = $dupStmt->fetch(PDO::FETCH_ASSOC);
        if ($existing) {
            Response::error(
                'A senior citizen record already exists for this person. Please use the existing record instead of creating a duplicate.',
                409,
                ['senior_id' => $existing['id'], 'osca_id' => $existing['osca_id']]
            );
        }
    } catch (Exception $ex) {
        // if the table doesn't exist or query fails, continue — the later checks will catch FK errors
    }

    try {
        $db->beginTransaction();
        
        // Step 1: Create/Update Contact Information
        $contact_id = null;
        if (isset($data->contact_info)) {
            $contact = $data->contact_info;
            $query = "INSERT INTO contacts 
                    (mobile_number, telephone_number, email, house_number, 
                    street, barangay_id, city, postal_code)
                    VALUES (:mobile, :telephone, :email, :house, :street, 
                            :barangay, :city, :postal)";
            $stmt = $db->prepare($query);
            $stmt->execute([
                ':mobile' => $contact->mobile_number ?? null,
                ':telephone' => $contact->telephone_number ?? null,
                ':email' => $contact->email ?? null,
                ':house' => $contact->house_number ?? null, // OPTIONAL
                ':street' => $contact->street ?? null,
                ':barangay' => $personal->barangay_id,
                ':city' => 'Zamboanga City',
                ':postal' => '7000'
            ]);
            $contact_id = $db->lastInsertId();
        }
        
        // Step 2: Check if senior citizen already exists OR should be created now
        $senior_id = null;
        // By default, creation of the `senior_citizens` record is deferred until admin approval.
        // If the client explicitly requests immediate creation, send `create_senior_now=true`.
        $create_senior_now = isset($data->create_senior_now) && $data->create_senior_now === true;

        if (isset($data->senior_id) && $data->senior_id > 0) {
            // Using an existing senior record
            $senior_id = $data->senior_id;
        } elseif ($create_senior_now) {
            // Create new senior citizen record immediately (legacy behaviour)
            // Generate OSCA ID
            $year = date('Y');
            $query = "SELECT MAX(CAST(SUBSTRING(osca_id, -6) AS UNSIGNED)) as last_num 
                    FROM senior_citizens 
                    WHERE osca_id LIKE 'ZC-$year-%'";
            $stmt = $db->query($query);
            $last_num = $stmt->fetch(PDO::FETCH_ASSOC)['last_num'] ?? 0;
            $new_num = str_pad($last_num + 1, 6, '0', STR_PAD_LEFT);
            $osca_id = "ZC-$year-$new_num";

            $query = "INSERT INTO senior_citizens 
                    (osca_id, first_name, middle_name, last_name, extension,
                    birthdate, gender_id, barangay_id, branch_id, contact_id,
                    educational_attainment_id, monthly_salary, occupation, 
                    other_skills, socioeconomic_status_id, mobility_level_id,
                    registration_date, registration_status_id, registered_by,
                    photo_path, thumbmark_verified)
                    VALUES 
                    (:osca_id, :first_name, :middle_name, :last_name, :extension,
                    :birthdate, :gender_id, :barangay_id, :branch_id, :contact_id,
                    :education, :salary, :occupation, :skills, :socioeconomic,
                    :mobility, NOW(), 1, :registered_by, :photo, :thumbmark)";

            $stmt = $db->prepare($query);
            $stmt->execute([
                ':osca_id' => $osca_id,
                ':first_name' => $personal->first_name,
                ':middle_name' => $personal->middle_name ?? null,
                ':last_name' => $personal->last_name,
                ':extension' => $personal->extension ?? null,
                ':birthdate' => $birthdate,
                ':gender_id' => $personal->gender_id,
                ':barangay_id' => $personal->barangay_id,
                ':branch_id' => $auth->getBranchId(),
                ':contact_id' => $contact_id,
                ':education' => $personal->educational_attainment_id ?? null,
                ':salary' => $personal->monthly_salary ?? null,
                ':occupation' => $personal->occupation ?? null,
                ':skills' => $personal->other_skills ?? null,
                ':socioeconomic' => $personal->socioeconomic_status_id ?? null,
                ':mobility' => $personal->mobility_level_id ?? null,
                ':registered_by' => $auth->getUserId(),
                ':photo' => $data->photo_path ?? null,
                ':thumbmark' => isset($data->thumbmark_verified) ? 1 : 0
            ]);

            $senior_id = $db->lastInsertId();
        } else {
            // Defer creation: do not insert into `senior_citizens` now.
            $senior_id = null;
        }

        // Ensure any provided senior_id actually exists; if not, treat as deferred (avoid FK error)
        if ($senior_id) {
            try {
                $chk = $db->prepare('SELECT id FROM senior_citizens WHERE id = :id');
                $chk->execute([':id' => $senior_id]);
                if ($chk->rowCount() == 0) {
                    $senior_id = null; // treat as deferred
                }
            } catch (Exception $ex) {
                // ignore and proceed with deferred behaviour
                $senior_id = null;
            }
        }
        
        // Step 3: Create Application
        $year = date('Y');
        $query = "SELECT MAX(CAST(SUBSTRING(application_number, -6) AS UNSIGNED)) as last_num 
                FROM applications 
                WHERE application_number LIKE 'APP-$year-%'";
        $stmt = $db->query($query);
        $last_num = $stmt->fetch(PDO::FETCH_ASSOC)['last_num'] ?? 0;
        $new_num = str_pad($last_num + 1, 6, '0', STR_PAD_LEFT);
        $application_number = "APP-$year-$new_num";
        
        $is_draft = isset($data->is_draft) && $data->is_draft === true;
        // Map to registration workflow statuses: draft -> Pending, complete -> For Verification
        $status = $is_draft ? 'Pending' : 'For Verification';
        $submission_date = $is_draft ? null : date('Y-m-d H:i:s');
        
        // Build insert dynamically so we don't insert a NULL senior_id into a NOT NULL column
        $columns = ['application_number', 'application_type_id', 'status', 'submitted_by', 'submission_date', 'notes'];
        $placeholders = [':app_number', ':type_id', ':status', ':submitted_by', ':submission_date', ':notes'];
        $params = [
            ':app_number' => $application_number,
            ':type_id' => $data->application_type_id,
            ':status' => $status,
            ':submitted_by' => $auth->getUserId(),
            ':submission_date' => $submission_date,
            ':notes' => $data->notes ?? null
        ];

        if ($senior_id) {
            $columns[] = 'senior_id';
            $placeholders[] = ':senior_id';
            $params[':senior_id'] = $senior_id;
        }

        $query = 'INSERT INTO applications (' . implode(', ', $columns) . ') VALUES (' . implode(', ', $placeholders) . ')';
        $stmt = $db->prepare($query);
        $stmt->execute($params);
        
        $application_id = $db->lastInsertId();
        
        // Step 4: Handle Family Members (only if senior record exists)
        if ($senior_id && isset($data->family_members) && is_array($data->family_members)) {
            $family_query = "INSERT INTO family_members 
                            (senior_id, first_name, middle_name, last_name, 
                            extension, relationship, age, monthly_salary, contact_id)
                            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            $family_stmt = $db->prepare($family_query);
            
            foreach ($data->family_members as $member) {
                // Calculate age from birthdate
                $member_age = AgeCalculator::calculateAge($member->birthdate);
                
                // Check for KIA/WIA status
                $is_kia_wia = isset($member->is_kia_wia) && $member->is_kia_wia;
                
                $family_stmt->execute([
                    $senior_id,
                    $member->first_name,
                    $member->middle_name ?? null,
                    $member->last_name,
                    $member->extension ?? null,
                    $member->relationship . ($is_kia_wia ? ' (KIA/WIA)' : ''),
                    $member_age,
                    $member->monthly_salary ?? null,
                    null // contact_id if needed
                ]);
            }
        }
        
        // Step 5: Handle Target Sectors (only if senior record exists)
        if ($senior_id && isset($data->target_sectors) && is_array($data->target_sectors)) {
            $sector_query = "INSERT INTO senior_target_sectors 
                            (senior_id, sector_id, other_specification, enrollment_date, is_active)
                            VALUES (?, ?, ?, CURDATE(), 1)";
            $sector_stmt = $db->prepare($sector_query);
            
            foreach ($data->target_sectors as $sector) {
                $sector_stmt->execute([
                    $senior_id,
                    $sector->sector_id,
                    $sector->other_specification ?? null
                ]);
            }
        }
        
        // Step 6: Handle Document Uploads (JSON metadata and actual uploaded files)
        $doc_query = "INSERT INTO application_documents 
                    (application_id, document_type_id, file_path, 
                    original_filename, file_size, uploaded_by)
                    VALUES (?, ?, ?, ?, ?, ?)";
        $doc_stmt = $db->prepare($doc_query);

        // a) Documents provided as JSON metadata
        if (isset($data->documents) && is_array($data->documents)) {
            foreach ($data->documents as $doc) {
                $doc_stmt->execute([
                    $application_id,
                    $doc->document_type_id ?? null,
                    $doc->file_path,
                    $doc->original_filename,
                    $doc->file_size ?? null,
                    $auth->getUserId()
                ]);
            }
        }
        // b) Files uploaded via multipart/form-data (use input names to infer document types)
        if (!empty($_FILES)) {
            $uploadDir = __DIR__ . '/../../uploads/applications/';
            if (!is_dir($uploadDir)) mkdir($uploadDir, 0755, true);

            // Load document types for heuristic mapping
            $docTypes = [];
            try {
                $dtStmt = $db->query("SELECT id, name FROM document_types ORDER BY id");
                $docTypes = $dtStmt->fetchAll(PDO::FETCH_ASSOC);
            } catch (Exception $ex) {
                // ignore mapping if table missing
                $docTypes = [];
            }

            $default_doc_type_id = $docTypes[0]['id'] ?? null;

            // Helper: determine document_type_id based on input field name and available doc types
            function infer_doc_type_id($fieldName, $docTypes, $defaultId) {
                $fname = strtolower($fieldName);
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
                            foreach ($docTypes as $dt) {
                                if (strpos(strtolower($dt['name']), $kw) !== false) return $dt['id'];
                            }
                        }
                    }
                }

                foreach ($docTypes as $dt) {
                    $dtName = strtolower($dt['name']);
                    if (strpos($fname, $dtName) !== false) return $dt['id'];
                }

                return $defaultId;
            }

            function infer_doc_label($fieldName) {
                $fname = strtolower($fieldName);
                if (strpos($fname, 'barangay') !== false) return 'barangay_certificate';
                if (strpos($fname, 'birth') !== false || strpos($fname, 'age') !== false || strpos($fname, 'proof') !== false) return 'birth_certificate';
                if (strpos($fname, 'senior') !== false || strpos($fname, 'photo') !== false || strpos($fname, 'picture') !== false) return 'senior_photo';
                if (strpos($fname, 'comelec') !== false || strpos($fname, 'voter') !== false) return 'comelec_id';
                if (strpos($fname, 'thumb') !== false || strpos($fname, 'mark') !== false) return 'thumbmark';
                $lbl = preg_replace('/[^a-z0-9_\-]/', '_', preg_replace('/\s+/', '_', $fname));
                return $lbl ?: 'uploaded_document';
            }

            foreach ($_FILES as $fieldName => $fileInfo) {
                // skip the 'payload' if accidentally present
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
                                    $docTypeId = infer_doc_type_id($fieldName, $docTypes, $default_doc_type_id);
                                    $label = infer_doc_label($fieldName);
                                    $displayName = $label . ($ext ? '.' . $ext : '');
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
                                    } catch (Exception $ex) { /* non-fatal */ }
                                    $doc_stmt->execute([
                                        $application_id,
                                        $docTypeId,
                                        $relativePath,
                                        $displayName,
                                        $fileInfo['size'][$i] ?? null,
                                        $auth->getUserId()
                                    ]);
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
                                $docTypeId = infer_doc_type_id($fieldName, $docTypes, $default_doc_type_id);
                                $label = infer_doc_label($fieldName);
                                $displayName = $label . ($ext ? '.' . $ext : '');
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
                                } catch (Exception $ex) { /* non-fatal */ }
                                $doc_stmt->execute([
                                    $application_id,
                                    $docTypeId,
                                    $relativePath,
                                    $displayName,
                                    $fileInfo['size'] ?? null,
                                    $auth->getUserId()
                                ]);
                            }
                    }
                }
            }
        }
        
        // Step 7: Calculate and assign eligible benefits based on age (only if senior exists)
        $benefits = [];
        if ($senior_id) {
            $benefits = BenefitCalculator::calculateEligibleBenefits(
                $age, 
                $personal->barangay_id
            );
            
            if (!empty($benefits)) {
                $benefit_query = "INSERT INTO senior_eligible_benefits 
                                (senior_id, benefit_id, eligible_from, eligible_until)
                                VALUES (?, ?, CURDATE(), DATE_ADD(CURDATE(), INTERVAL 1 YEAR))";
                $benefit_stmt = $db->prepare($benefit_query);
                
                foreach ($benefits as $benefit_id) {
                    $benefit_stmt->execute([$senior_id, $benefit_id]);
                }
            }
        } else {
            // If creation was deferred, persist the applicant payload on the application record
            $applicant_payload = [
                'personal_info' => $personal,
                'contact_info' => $data->contact_info ?? null,
                'family_members' => $data->family_members ?? null,
                'target_sectors' => $data->target_sectors ?? null,
                'photo_path' => $data->photo_path ?? null
            ];
            $payload_json = json_encode($applicant_payload);

            // If table has applicant_payload column, store there; otherwise append to notes with a marker
            try {
                $colStmt = $db->prepare("SHOW COLUMNS FROM applications LIKE 'applicant_payload'");
                $colStmt->execute();
                if ($colStmt->rowCount() > 0) {
                    $up = $db->prepare("UPDATE applications SET applicant_payload = :payload WHERE id = :id");
                    $up->execute([':payload' => $payload_json, ':id' => $application_id]);
                } else {
                    $marker = "\n[APPLICANT_PAYLOAD]" . $payload_json;
                    $up = $db->prepare("UPDATE applications SET notes = CONCAT(IFNULL(notes,''), :marker) WHERE id = :id");
                    $up->execute([':marker' => $marker, ':id' => $application_id]);
                }
            } catch (Exception $ex) {
                // not a blocking error; continue silently
            }
        }
        
        $db->commit();
        
        Response::success([
            'application_id' => $application_id,
            'application_number' => $application_number,
            'senior_id' => $senior_id,
            'osca_id' => $osca_id ?? null,
            'status' => $status,
            'eligible_benefits' => $benefits,
            'deferred_creation' => $senior_id ? false : true
        ], "Application " . ($is_draft ? "saved as draft" : "submitted") . " successfully");
        
    } catch (Exception $e) {
        $db->rollBack();
        Response::error("Failed to create application: " . $e->getMessage(), 500);
    }

    // End of create.php main flow. Duplicate legacy create path removed to avoid
    // inserting invalid or null `senior_id` values that violate the FK constraint.