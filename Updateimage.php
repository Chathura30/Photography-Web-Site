<?php
if (isset($_POST['redirectButton'])) {
    $redirectValue = $_POST['redirectButton'];
    switch ($redirectValue) {
        case 'wedding':
            header("Location:Updatewedding.html");
            break;
        case 'portrait':
            header("Location:Updateportrait.html");
            break;
        case 'wildlife':
            header("Location:Updatewildlife.html");
            break;
        case 'SpecialEvent':
             header("Location:Updatespecialevent.html");
                break;
        default:
            
            break;
    }
exit();
}
?>