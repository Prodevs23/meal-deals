<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>Profil frissítése</title>
</head>
<body>
    <div class="container my-5">
    <header class="d-flex justify-content-between my-4">
            <h1>Adatok frissítése</h1>
            <div>
            <a href="adminRecipes.php" class="btn btn-primary">Vissza</a>
            </div>
        </header>
        <form action="processRecipe.php" method="post">
            <?php 
            
            if (isset($_GET['id'])) {
                include("connect.php");
                $id = $_GET['id'];
                $sql = "SELECT * FROM recipes WHERE recipe_id=$id";
                $result = mysqli_query($conn,$sql);
                $row = mysqli_fetch_array($result);
                ?>
                     <div class="form-elemnt my-4">
                        <label for="recipe_name">Név:</label>
                        <input type="text" class="form-control" name="recipe_name" value="<?php echo $row["recipe_name"]; ?>">
                     </div>
                     
                     <div class="form-elemnt my-4">
                        <label for="description">Leírás:</label>
                        <textarea rows="3" cols="148" name="description"><?php echo $row["description"]; ?></textarea>
                     </div>
                     
                     <div class="form-elemnt my-4">
                        <label for="cook_time">Főzési idő:</label>
                        <input type="number" class="form-control" name="cook_time" value="<?php echo $row["cook_time"]; ?>">
                     </div>
                     <div class="form-elemnt my-4">
                        <label for="difficulty">Bonyolultság:</label>
                        <input type="text" class="form-control" name="difficulty" value="<?php echo $row["difficulty"]; ?>">
                     </div>
                     <div class="form-elemnt my-4">
                        <label for="calorie">Kalória:</label>
                        <input type="text" class="form-control" name="calorie" value="<?php echo $row["calorie"]; ?>">
                     </div>
                     <div class="form-elemnt my-4">
                        <label for="allergie">Allergia:</label>
                        <input type="text" class="form-control" name="allergie" value="<?php echo $row["allergie"]; ?>">
                     </div>
            
            <input type="hidden" value="<?php echo $id; ?>" name="id">
            <div class="form-element my-4">
                <input type="submit" name="editRecipe" value="Frissítés" class="btn btn-primary">
            </div>
                <?php
            }else{
                echo "<h3>A recept nem létezik</h3>";
            }
            ?>
           
        </form>
        
        
    </div>
</body>
</html>