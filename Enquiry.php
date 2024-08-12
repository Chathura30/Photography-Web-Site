<?php
require 'PHPMailer-6.8.0/src/Exception.php';
require 'PHPMailer-6.8.0/src/PHPMailer.php';
require 'PHPMailer-6.8.0/src/SMTP.php';

use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\PHPMailer;

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "malcom photography";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] === "POST") { 
    // Form data
    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];

    // Insert data into the database
    $sql = "INSERT INTO enquiry ( Name, Email, Message) VALUES ('$name', '$email','$message')";

    if ($conn->query($sql) === TRUE) {
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}


try {
    $mail = new PHPMailer(true);

    // Server settings
    $mail->isSMTP();
    $mail->Host = 'smtp.gmail.com'; // SMTP server
    $mail->SMTPAuth = true;
    $mail->Username = 'chathurajayasanka79@gmail.com'; // SMTP username (your Gmail address)
    $mail->Password = 'eqvfwiuntwraorer'; // SMTP password (your Gmail password)
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS; // Enable TLS encryption
    $mail->Port = 587; // TCP port to connect to

    // Recipients
    $email = $_POST['email']; // Get the email address from the form data
    $mail->setFrom('chathurajayasanka79@gmail.com', 'Malcolm Photography');
    $mail->addAddress($email); // Add recipient email address

    // Content
    $mail->isHTML(true);
    $mail->Subject = 'Enquiry Submitted';
    $mail->Body = "Thank you! Your input is valuable in improving our services.";

    $mail->send();
// Redirect to homepage after successful sign-up
header("Location: Home.html");
exit();
} catch (Exception $e) {
echo "Error sending email: {$mail->ErrorInfo}";
}
?>

