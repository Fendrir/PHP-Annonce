<?php 

if(isset($_GET['p'])){
    $p = $_GET['p'];
}else{
    $p = 'home';
}

ob_start();

if($p === 'home'){
    include('./pages/home.php');
}
if($p === 'advert'){
    include('./pages/advert.php');
}
if($p === 'quelquechose'){
    include('./pages/quelquechose.php');
}

$content = ob_get_clean();
include('./pages/templates/default.php');
?>
