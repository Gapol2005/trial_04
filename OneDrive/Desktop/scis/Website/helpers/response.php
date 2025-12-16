<?php
class Response {
    public static function success($data = null, $message = "Operation successful", $statusCode = 200) {
        http_response_code($statusCode);
        echo json_encode([
            "success" => true,
            "message" => $message,
            "data" => $data
        ]);
        exit();
    }

    public static function error($message = "An error occurred", $statusCode = 500, $errors = null) {
        http_response_code($statusCode);
        echo json_encode([
            "success" => false,
            "message" => $message,
            "errors" => $errors
        ]);
        exit();
    }
}
?>