<?php
// Database connection
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
    $contact = $_POST['contact'];
    $country = $_POST['country'];

    // Insert data into the database
    $sql = "INSERT INTO client (name, email, contact, country) VALUES ('$name', '$email', '$contact', '$country')";

    if ($conn->query($sql) === TRUE) {
        echo "Account Created successfully!";
        // Redirect to sign-in page after a delay
        header("refresh:3; url=SignUp.html"); // Redirect after 3 seconds
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>

