<?php
$adminUsername = "admin";
$adminPassword = "admin123";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];

    if ($username === $adminUsername && $password === $adminPassword) {
        session_start();
        $_SESSION["admin"] = true;
        header("Location: admin.php");
        exit();
    } else {
        header("Location: admin.html");
        exit();
    }
}
?>
