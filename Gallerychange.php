<?php
if (isset($_POST['redirectButton'])) {
    $redirectValue = $_POST['redirectButton'];
    switch ($redirectValue) {
        case 'changeGallery':
            header("Location: Insertimage.html");
            break;
        case 'changePricing':
            header("Location: Update Images.html");
            break;
        case 'viewInquiry':
            header("Location: Delete Images .html");
            break;
        default:
            
            break;
    }
exit();
}
?>
