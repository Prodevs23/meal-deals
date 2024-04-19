<?php
    $src = $_SERVER['REQUEST_URI'];
    $src = substr($src, strrpos($src, '/') + 1);
    
    if ($src = "renderAdmin.php") {
        echo "<img class='fejlec' src='../pic/logo.JPG' height='60px' alt='logo'/>";
    }else
    echo "<img class='fejlec' src='./pic/logo.JPG' height='60px' alt='logo'/>";
?>