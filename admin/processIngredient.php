<?php
    session_start();

include('connect.php');
if (isset($_POST["createIngredient"])) {
    
    $name = mysqli_real_escape_string($conn, $_POST["ingredient_name"]);
    $category_id = mysqli_real_escape_string($conn, $_POST["category_id"]);
    $measure_unit_id = mysqli_real_escape_string($conn, $_POST["measure_unit_id"]);
    $allergie_id = mysqli_real_escape_string($conn, $_POST["allergie_id"]);
    $user_id = mysqli_real_escape_string($conn, $_POST["user_id"]);
    //echo $_POST['id'];
    $sqlInsert = "INSERT INTO ingredients(ingredient_name, category_id , measure_unit_id , allergie_id, user_id) VALUES ('$name', '$category_id','$measure_unit_id', '$allergie_id', '$user_id)";
    if(mysqli_query($conn,$sqlInsert)){
        
        $_SESSION["createIngredient"] = "A rögzítés sikeres!";
        header("Location:adminIngredients.php");
    }else{
        die("Valami hibádzik");
    }
}
if (isset($_POST["editIngredient"])) {
    
    $name = mysqli_real_escape_string($conn, $_POST["ingredient_name"]);
    $category_id = mysqli_real_escape_string($conn, $_POST["category_id"]);
    $measure_unit_id = mysqli_real_escape_string($conn, $_POST["measure_unit_id"]);
    $allergie_id = mysqli_real_escape_string($conn, $_POST["allergie_id"]);
    $id = mysqli_real_escape_string($conn, $_POST["id"]);
    $sqlUpdate = "UPDATE ingredients SET ingredient_name = '$name', category_id = '$category_id', measure_unit_id = '$measure_unit_id', allergie_id = '$allergie_id' WHERE ingredient_id='$id'";
    if(mysqli_query($conn,$sqlUpdate)){
        
        $_SESSION["updateIngredient"] = "A frissítés sikeres!";
        header("Location:adminIngredients.php");
    }else{
        die("Valami hibádzik");
    }
}
?>