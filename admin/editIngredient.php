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
            <a href="adminIngredients.php" class="btn btn-primary">Vissza</a>
            </div>
        </header>
        <form action="processIngredient.php" method="post">
            <?php 
            
            if (isset($_GET['id'])) {
                include("connect.php");
                $id = $_GET['id'];
                $sql = "SELECT * FROM ingredients WHERE ingredient_id=$id";
                $result = mysqli_query($conn,$sql);
                $row = mysqli_fetch_array($result);
                ?>
                     <div class="form-elemnt my-4">
                        <label for="ingredient_name">Név:</label>
                        <input type="text" class="form-control" name="ingredient_name" value="<?php echo $row["ingredient_name"]; ?>">
                     </div>
                     <div class="form-elemnt my-4">
                        <label for="category_id">Kategória:</label>
                        <input type="number" class="form-control" name="category_id" value="<?php echo $row["category_id"]; ?>">
                     </div>
                     <div class="form-elemnt my-4">
                        <label for="measure_unit_id">Mértékegység:</label>
                        <input type="number" class="form-control" name="measure_unit_id" value="<?php echo $row["measure_unit_id"]; ?>">
                     </div>
                     <div class="form-elemnt my-4">
                        <label for="allergie_id">Allergia:</label>
                        <input type="number" class="form-control" name="allergie_id" value="<?php echo $row["allergie_id"]; ?>">
                     </div>
                     <div class="form-elemnt my-4">
                        <label for="allergie">Felhasználó:</label>
                        <input type="number" class="form-control" name="user_id" value="<?php echo $row["user_id"]; ?>">
                     </div>
            
            <input type="hidden" value="<?php echo $id; ?>" name="id">
            <div class="form-element my-4">
                <input type="submit" name="editIngredient" value="Frissítés" class="btn btn-primary">
            </div>
                <?php
            }else{
                echo "<h3>Az alapanyag nem létezik</h3>";
            }
            ?>
           
        </form>
        
        
    </div>
</body>
</html>