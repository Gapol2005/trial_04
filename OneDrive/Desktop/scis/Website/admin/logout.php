<?php
    session_start();
    session_unset();
    session_destroy();
    header('Location: ../../Landing page/index.php');
    exit();
