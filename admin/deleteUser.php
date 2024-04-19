<?php
if (isset($_GET['id'])) {
include("connect.php");
$id = $_GET['id'];
$sql = "DELETE FROM users WHERE user_id='$id'";
if(mysqli_query($conn,$sql)){
    session_start();
    $_SESSION["deleteUser"] = "Felhasználó törölve!";
    header("Location:adminusers.php");
}else{
    die("Valami hibádzik !");
}
}else{
    echo "A felhasználó nem létezik";
}
?>