<?php
if (isset($_POST['redirectButton'])) {
    $redirectValue = $_POST['redirectButton'];
    switch ($redirectValue) {
        case 'changeGallery':
            header("Location: Editgallery.html");
            break;
        case 'changePricing':
            header("Location: Pricingchange.html");
            break;
        case 'viewInquiry':
            header("Location: Viewenquiry.html");
            break;
        default:
            
            break;
    }
exit();
}
?>