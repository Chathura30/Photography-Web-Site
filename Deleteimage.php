<?php
if (isset($_POST['redirectButton'])) {
    $redirectValue = $_POST['redirectButton'];
    switch ($redirectValue) {
        case 'Weddings':
            header("Location:Deletewedding.html");
            break;
        case 'Portrait':
            header("Location:Deleteportrait.html");
            break;
        case 'wildlife':
            header("Location:Deletewildlife.html");
            break;
        case 'SpecialEvent':
             header("Location:Deletespecialevents.html");
                break;
        default:
            
            break;
    }
exit();
}
?>