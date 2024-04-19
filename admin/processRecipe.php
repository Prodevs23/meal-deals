<?php
    session_start();

include('connect.php');
if (isset($_POST["createRecipe"])) {
    
    $name = mysqli_real_escape_string($conn, $_POST["recipe_name"]);
    $description = mysqli_real_escape_string($conn, $_POST["description"]);
    $cooktime = mysqli_real_escape_string($conn, $_POST["cook_time"]);
    $difficulty = mysqli_real_escape_string($conn, $_POST["difficulty"]);
    $calorie = mysqli_real_escape_string($conn, $_POST["calorie"]);
    $allergie = mysqli_real_escape_string($conn, $_POST["allergie"]);
    //echo $_POST['id'];
    $sqlInsert = "INSERT INTO recipes(recipe_name, description, cook_time , difficulty , calorie, allergie, dish_id, user_id) VALUES ('$name', '$description','$cooktime','$difficulty', '$calorie', '$allergie', 0, NULL)";
    if(mysqli_query($conn,$sqlInsert)){
        
        $_SESSION["createRecipe"] = "A rögzítés sikeres!";
        header("Location:adminRecipes.php");
    }else{
        die("Valami hibádzik");
    }
}
if (isset($_POST["editRecipe"])) {
    
    $name = mysqli_real_escape_string($conn, $_POST["recipe_name"]);
    $description = mysqli_real_escape_string($conn, $_POST["description"]);
    $cooktime = mysqli_real_escape_string($conn, $_POST["cook_time"]);
    $difficulty = mysqli_real_escape_string($conn, $_POST["difficulty"]);
    $calorie = mysqli_real_escape_string($conn, $_POST["calorie"]);
    $allergie = mysqli_real_escape_string($conn, $_POST["allergie"]);
    $id = mysqli_real_escape_string($conn, $_POST["id"]);
    $sqlUpdate = "UPDATE recipes SET recipe_name = '$name', description = '$description', cook_time = '$cooktime', difficulty = '$difficulty', calorie = '$calorie', allergie = '$allergie' WHERE recipe_id='$id'";
    if(mysqli_query($conn,$sqlUpdate)){
        
        $_SESSION["updateRecipe"] = "A frissítés sikeres!";
        header("Location:adminRecipes.php");
    }else{
        die("Valami hibádzik");
    }
}
?>