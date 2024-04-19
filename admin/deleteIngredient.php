<?php
if (isset($_GET['id'])) {
include("connect.php");
$id = $_GET['id'];
$sql = "DELETE FROM ingredients WHERE ingredient_id='$id'";
if(mysqli_query($conn,$sql)){
    session_start();
    $_SESSION["deleteIngredient"] = "Alapanyag törölve!";
    header("Location:adminIngredients.php");
}else{
    die("Valami hibádzik !");
}
}else{
    echo "Az alapanyag nem létezik";
}
?>