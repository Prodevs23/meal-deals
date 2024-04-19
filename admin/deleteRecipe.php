<?php
if (isset($_GET['id'])) {
include("connect.php");
$id = $_GET['id'];
$sql = "DELETE FROM recipes WHERE recipe_id='$id'";
if(mysqli_query($conn,$sql)){
    session_start();
    $_SESSION["deleteRecipe"] = "Recept törölve!";
    header("Location:adminRecipes.php");
}else{
    die("Valami hibádzik !");
}
}else{
    echo "A felhasználó nem létezik";
}
?>