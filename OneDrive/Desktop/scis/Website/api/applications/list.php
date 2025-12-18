<?php
    ini_set('display_errors', 0);
    ini_set('log_errors', 1);
    error_reporting(E_ALL);

    require_once '../config/database.php';
    require_once '../middleware/auth.php';
    require_once '../helpers/response.php';

    $database = new Database();
    $db = $database->getConnection();

    $auth = new AuthMiddleware($db);
    if (!$auth->authenticate()) exit;

    $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
    $limit = isset($_GET['limit']) ? (int)$_GET['limit'] : 10;
    $offset = ($page - 1) * $limit;

    $search = isset($_GET['search']) ? $_GET['search'] : '';
    $status = isset($_GET['status']) ? $_GET['status'] : null;
    $type = isset($_GET['type']) ? (int)$_GET['type'] : null;

    $accessible_barangays = $auth->getAccessibleBarangays();
    
    $where_parts = [];
    $params_to_bind = []; // To store parameters for binding

    if (!empty($accessible_barangays)) {
        // Create '?' placeholders for each accessible barangay
        $placeholders = implode(',', array_fill(0, count($accessible_barangays), '?'));
        // Include applications linked to seniors in accessible barangays OR deferred applications (no senior yet)
        $where_parts[] = "(s.barangay_id IN ($placeholders) OR a.senior_id IS NULL)";
        $params_to_bind = array_merge($params_to_bind, $accessible_barangays);
    } else {
        // If no accessible barangays, allow only deferred applications (no senior)
        $where_parts[] = "a.senior_id IS NULL";
    }

    if ($search) {
        $where_parts[] = "(s.first_name LIKE ?
                            OR s.last_name LIKE ?
                            OR a.application_number LIKE ?
                            OR s.osca_id LIKE ?)";
        $search_param = "%$search%";
        $params_to_bind[] = $search_param;
        $params_to_bind[] = $search_param;
        $params_to_bind[] = $search_param;
        $params_to_bind[] = $search_param;
    }

    if ($status) {
        // Handle special status cases that include multiple statuses
        if (strtolower($status) === 'completed') {
            $where_parts[] = "a.status IN (?, ?, ?)";
            $params_to_bind[] = 'Claimed';
            $params_to_bind[] = 'Printed';
            $params_to_bind[] = 'Ready for Release';
        } elseif (strtolower($status) === 'pending') {
            // Include both Pending and Draft statuses
            $where_parts[] = "a.status IN (?, ?)";
            $params_to_bind[] = 'Pending';
            $params_to_bind[] = 'Draft';
        } else {
            $where_parts[] = "a.status = ?";
            $params_to_bind[] = $status;
        }
    }

    if ($type) {
        $where_parts[] = "a.application_type_id = ?";
        $params_to_bind[] = $type;
    }

    $where = "WHERE " . implode(' AND ', $where_parts);

    try {
        // Count query
        $count_query = "SELECT COUNT(*) as total 
                FROM applications a
                LEFT JOIN senior_citizens s ON a.senior_id = s.id
                $where";
        $stmt = $db->prepare($count_query);
        $stmt->execute($params_to_bind); // Execute with the array of parameters
        $total = $stmt->fetch(PDO::FETCH_ASSOC)['total'];
    } catch (PDOException $e) {
        Response::error("Database query failed for applications count: " . $e->getMessage(), 500);
    }

try {
    // Data query
    $query = "SELECT a.*, 
                CONCAT(COALESCE(s.first_name,''), ' ', COALESCE(s.last_name,'')) as senior_name,
                s.osca_id, s.barangay_id,
                b.name as barangay_name,
                at.name as application_type,
                TIMESTAMPDIFF(YEAR, s.birthdate, CURDATE()) AS age,
                CONCAT(submitted.first_name, ' ', submitted.last_name) as submitted_by_name,
                CONCAT(verified.first_name, ' ', verified.last_name) as verified_by_name,
                COALESCE(rs_app.name, a.status) as status_name,
                rs_app.color_code as status_color
                FROM applications a
                LEFT JOIN (
                    SELECT id, first_name, last_name, osca_id, barangay_id, birthdate
                    FROM senior_citizens
                ) s ON a.senior_id = s.id
                LEFT JOIN barangays b ON s.barangay_id = b.id
            JOIN application_types at ON a.application_type_id = at.id
            LEFT JOIN admin_users submitted ON a.submitted_by = submitted.id
            LEFT JOIN admin_users verified ON a.verified_by = verified.id
            LEFT JOIN registration_statuses rs_app ON rs_app.name = a.status
            $where
            ORDER BY 
                CASE 
                WHEN a.status = 'Draft' THEN 1
                WHEN a.status = 'Submitted' THEN 2
                WHEN a.status = 'For Verification' THEN 3
                WHEN a.status = 'Verified' THEN 4
                WHEN a.status = 'For Printing' THEN 5
                ELSE 6
                END,
                a.submission_date DESC,
                a.created_at DESC
            LIMIT ? OFFSET ?";

    $stmt = $db->prepare($query);
    
    $param_index = 1;
    // Bind parameters from the WHERE clause
    foreach ($params_to_bind as $value) {
        $type = is_int($value) ? PDO::PARAM_INT : PDO::PARAM_STR;
        $stmt->bindValue($param_index++, $value, $type);
    }
    
    // Bind LIMIT and OFFSET explicitly as integers
    $stmt->bindValue($param_index++, $limit, PDO::PARAM_INT);
    $stmt->bindValue($param_index++, $offset, PDO::PARAM_INT);
    
    $stmt->execute();
    $applications = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Prefer DB-driven registration status label when available
    foreach ($applications as &$app) {
        if (isset($app['status_name']) && $app['status_name']) {
            $app['status'] = $app['status_name'];
        }
        // expose status color (if available) for the UI
        $app['status_color'] = $app['status_color'] ?? null;
        unset($app['status_name']);
        
        // if no senior_name (deferred), try to use applicant_payload (payload stores personal_info)
        if ((empty($app['senior_name']) || trim($app['senior_name']) === '')) {
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
                $personal = $payload['personal_info'] ?? [];
                $fn = !empty($personal['first_name']) ? $personal['first_name'] : '';
                $ln = !empty($personal['last_name']) ? $personal['last_name'] : '';
                $app['senior_name'] = trim($fn . ' ' . $ln);
                if (!empty($personal['birthdate'])) {
                    try {
                        $bd = new DateTime($personal['birthdate']);
                        $now = new DateTime();
                        $app['age'] = $now->diff($bd)->y;
                    } catch (Exception $e) {
                        $app['age'] = null;
                    }
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
            }
        }
    }

    Response::paginated($applications, $page, $limit, $total, "Applications retrieved");
    
} catch (PDOException $e) {
    Response::error("Database query failed for applications: " . $e->getMessage(), 500);
}
    
