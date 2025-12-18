<?php
// Temporary script to update application statuses
// Run this once via browser to fix the statuses, then delete this file

include 'auth_check.php';
require_once '../config/database.php';

$database = new Database();
$db = $database->getConnection();

try {
    $db->beginTransaction();
    
    // Update Draft to Pending for Pedro Mendoza
    $stmt = $db->prepare("
        UPDATE applications a
        INNER JOIN senior_citizens s ON a.senior_id = s.id
        SET a.status = 'Pending'
        WHERE s.first_name = 'Pedro' AND s.last_name = 'Mendoza' 
        AND a.status = 'Draft'
    ");
    $stmt->execute();
    $pedroUpdated = $stmt->rowCount();
    
    // Update Claimed to Approved for Maria Garcia
    $stmt = $db->prepare("
        UPDATE applications a
        INNER JOIN senior_citizens s ON a.senior_id = s.id
        SET a.status = 'Approved'
        WHERE s.first_name = 'Maria' AND s.last_name = 'Garcia' 
        AND a.status = 'Claimed'
    ");
    $stmt->execute();
    $mariaUpdated = $stmt->rowCount();
    
    $db->commit();
    
    ?>
    <!DOCTYPE html>
    <html>
    <head>
        <title>Status Update Complete</title>
        <style>
            body { font-family: Arial, sans-serif; padding: 20px; }
            .success { color: green; }
            .error { color: red; }
        </style>
    </head>
    <body>
        <h2>Status Update Completed</h2>
        <p class="success">✓ Pedro Mendoza: <?php echo $pedroUpdated; ?> application(s) updated from Draft to Pending</p>
        <p class="success">✓ Maria Garcia: <?php echo $mariaUpdated; ?> application(s) updated from Claimed to Approved</p>
        <p><a href="registration_category.php">← Back to Application List</a></p>
        <p style="color: red; font-size: 12px; margin-top: 20px;">⚠ Please delete this file (update_statuses.php) after running it once.</p>
    </body>
    </html>
    <?php
    
} catch (Exception $e) {
    if ($db->inTransaction()) $db->rollBack();
    ?>
    <!DOCTYPE html>
    <html>
    <head>
        <title>Status Update Error</title>
        <style>
            body { font-family: Arial, sans-serif; padding: 20px; }
            .error { color: red; }
        </style>
    </head>
    <body>
        <h2 class="error">Error</h2>
        <p class="error"><?php echo htmlspecialchars($e->getMessage()); ?></p>
        <p><a href="registration_category.php">← Back to Application List</a></p>
    </body>
    </html>
    <?php
}

