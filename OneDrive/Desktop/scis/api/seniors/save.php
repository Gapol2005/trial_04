<?php
    require_once '../config/database.php';
    require_once '../middleware/auth.php';
    require_once '../helpers/response.php';

    $database = new Database();
    $db = $database->getConnection();

    $auth = new AuthMiddleware($db);
    if (!$auth->authenticate()) exit;

    $data = json_decode(file_get_contents("php://input"));
    $is_update = isset($data->id) && $data->id > 0;

    $permission = $is_update ? 'can_edit' : 'can_create';
    if (!$auth->checkPermission('senior_citizens', $permission)) {
        Response::error("No permission to " . ($is_update ? "update" : "create") . " senior citizens", 403);
    }

    // Validate required fields
    $required = ['first_name', 'last_name', 'birthdate', 'gender_id', 'barangay_id'];
    foreach ($required as $field) {
        if (!isset($data->$field) || empty($data->$field)) {
            Response::error("Field $field is required", 400);
        }
    }

    // Check barangay access
    if (!$auth->canAccessBarangay($data->barangay_id)) {
        Response::error("No access to create/update seniors in this barangay", 403);
    }

    try {
        $db->beginTransaction();
        
        // Handle contact info
        $contact_id = null;
        if (isset($data->contact)) {
            $query = "INSERT INTO contacts (mobile_number, telephone_number, email, 
                    house_number, street, barangay_id) 
                    VALUES (:mobile, :telephone, :email, :house, :street, :barangay)";
            $stmt = $db->prepare($query);
            $stmt->execute([
                ':mobile' => $data->contact->mobile_number ?? null,
                ':telephone' => $data->contact->telephone_number ?? null,
                ':email' => $data->contact->email ?? null,
                ':house' => $data->contact->house_number ?? null,
                ':street' => $data->contact->street ?? null,
                ':barangay' => $data->barangay_id
            ]);
            $contact_id = $db->lastInsertId();
        }
        
        if ($is_update) {
            // Update existing senior
            $query = "UPDATE senior_citizens SET 
                    first_name = :first_name,
                    middle_name = :middle_name,
                    last_name = :last_name,
                    extension = :extension,
                    birthdate = :birthdate,
                    gender_id = :gender_id,
                    barangay_id = :barangay_id,
                    educational_attainment_id = :education,
                    monthly_salary = :salary,
                    occupation = :occupation,
                    other_skills = :skills,
                    socioeconomic_status_id = :socioeconomic,
                    mobility_level_id = :mobility,
                    contact_id = COALESCE(:contact_id, contact_id)
                    WHERE id = :id";
            $stmt = $db->prepare($query);
            $stmt->execute([
                ':first_name' => $data->first_name,
                ':middle_name' => $data->middle_name ?? null,
                ':last_name' => $data->last_name,
                ':extension' => $data->extension ?? null,
                ':birthdate' => $data->birthdate,
                ':gender_id' => $data->gender_id,
                ':barangay_id' => $data->barangay_id,
                ':education' => $data->educational_attainment_id ?? null,
                ':salary' => $data->monthly_salary ?? null,
                ':occupation' => $data->occupation ?? null,
                ':skills' => $data->other_skills ?? null,
                ':socioeconomic' => $data->socioeconomic_status_id ?? null,
                ':mobility' => $data->mobility_level_id ?? null,
                ':contact_id' => $contact_id,
                ':id' => $data->id
            ]);
            $senior_id = $data->id;
        } else {
            // Generate OSCA ID
            $year = date('Y');
            $query = "SELECT MAX(CAST(SUBSTRING(osca_id, -6) AS UNSIGNED)) as last_num 
                    FROM senior_citizens 
                    WHERE osca_id LIKE 'ZC-$year-%'";
            $stmt = $db->query($query);
            $last_num = $stmt->fetch(PDO::FETCH_ASSOC)['last_num'] ?? 0;
            $new_num = str_pad($last_num + 1, 6, '0', STR_PAD_LEFT);
            $osca_id = "ZC-$year-$new_num";
            
            // Insert new senior
            $query = "INSERT INTO senior_citizens 
                    (osca_id, first_name, middle_name, last_name, extension, birthdate,
                    gender_id, barangay_id, contact_id, educational_attainment_id,
                    monthly_salary, occupation, other_skills, socioeconomic_status_id,
                    mobility_level_id, registration_date, registration_status_id,
                    registered_by, branch_id)
                    VALUES 
                    (:osca_id, :first_name, :middle_name, :last_name, :extension, :birthdate,
                    :gender_id, :barangay_id, :contact_id, :education, :salary, :occupation,
                    :skills, :socioeconomic, :mobility, NOW(), 1, :user_id, :branch_id)";
            $stmt = $db->prepare($query);
            $stmt->execute([
                ':osca_id' => $osca_id,
                ':first_name' => $data->first_name,
                ':middle_name' => $data->middle_name ?? null,
                ':last_name' => $data->last_name,
                ':extension' => $data->extension ?? null,
                ':birthdate' => $data->birthdate,
                ':gender_id' => $data->gender_id,
                ':barangay_id' => $data->barangay_id,
                ':contact_id' => $contact_id,
                ':education' => $data->educational_attainment_id ?? null,
                ':salary' => $data->monthly_salary ?? null,
                ':occupation' => $data->occupation ?? null,
                ':skills' => $data->other_skills ?? null,
                ':socioeconomic' => $data->socioeconomic_status_id ?? null,
                ':mobility' => $data->mobility_level_id ?? null,
                ':user_id' => $auth->getUserId(),
                ':branch_id' => $auth->getBranchId()
            ]);
            $senior_id = $db->lastInsertId();
        }
        
        $db->commit();
        
        Response::success(
            ['senior_id' => $senior_id], 
            "Senior citizen " . ($is_update ? "updated" : "created") . " successfully"
        );
        
    } catch (Exception $e) {
        $db->rollBack();
        Response::error("Failed to save senior citizen: " . $e->getMessage(), 500);
    }