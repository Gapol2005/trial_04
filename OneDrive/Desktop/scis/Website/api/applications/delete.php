<?php
    require_once '../config/database.php';
    require_once '../middleware/auth.php';
    require_once '../helpers/response.php';

    $database = new Database();
    $db = $database->getConnection();

    $auth = new AuthMiddleware($db);
    if (!$auth->authenticate()) exit;

    $input = json_decode(file_get_contents('php://input'));
    $id = $input->id ?? null;
    if (!$id) Response::error('Application id required', 400);

    try {
        $db->beginTransaction();

        // Remove application documents
        $stmt = $db->prepare('DELETE FROM application_documents WHERE application_id = ?');
        $stmt->execute([$id]);

        // Remove the application row
        $stmt = $db->prepare('DELETE FROM applications WHERE id = ?');
        $stmt->execute([$id]);

        $db->commit();
        Response::success(null, 'Application deleted successfully');
    } catch (Exception $e) {
        if ($db->inTransaction()) $db->rollBack();
        Response::error('Failed to delete application: ' . $e->getMessage(), 500);
    }
