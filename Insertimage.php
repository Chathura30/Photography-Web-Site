<?php
if (isset($_POST['redirectButton'])) {
    $redirectValue = $_POST['redirectButton'];
    switch ($redirectValue) {
        case 'Weddings':
            header("Location:Editwedding.html");
            break;
        case 'Portrait':
            header("Location:Editportrait.html");
            break;
        case 'wildlife':
            header("Location:Editwildlife.html");
            break;
        case 'SpecialEvent':
             header("Location:Editspecialevents.html");
                break;
        default:
            
            break;
    }
exit();
}
?>