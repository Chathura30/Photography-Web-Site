    <?php
    
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "malcom photography";

    
    $conn = new mysqli($servername, $username, $password, $dbname);


    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    
    $sql = "SELECT name, email, message FROM enquiry";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row["name"] . "</td>";
            echo "<td>" . $row["email"] . "</td>";
            echo "<td>" . $row["message"] . "</td>";
            echo "</tr>";
        }
    } else {
        echo "No enquiries found.";
    }

    $conn->close();
    ?>
