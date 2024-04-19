<?php
    session_start();

    include('connect.php');

?>

<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    
    <title>Receptek listája</title>
    <style>
        table  td, table th{
        vertical-align:middle;
        text-align:center;
        /*margin:20px!important;*/
        table-layout: fixed;
        width: 50px;
        }
    </style>
</head>
<body>
    <div class="container my-4">
        <header class="d-flex justify-content-between my-4">
            <h1>Receptek listája</h1>
            <div>
                <a href="createRecipe.php" class="btn btn-primary">Hozzávaló hozzáadása</a>
                <a href="admin.php" class="btn btn-primary">Vissza</a>
                <a href="./../logout.php" class="btn btn-primary">Kijelentkezés</a>
            </div>
        </header>
        <?php
        
        if (isset($_SESSION["createRecipe"])) {
        ?>
        <div class="alert alert-success">
            <?php 
            echo $_SESSION["createRecipe"];
            ?>
        </div>
        <?php
        unset($_SESSION["createRecipe"]);
        }
        ?>
         <?php
        if (isset($_SESSION["updateRecipe"])) {
        ?>
        <div class="alert alert-success">
            <?php 
            echo $_SESSION["updateRecipe"];
            ?>
        </div>
        <?php
        unset($_SESSION["updateRecipe"]);
        }
        ?>
        <?php
        if (isset($_SESSION["deleteRecipe"])) {
        ?>
        <div class="alert alert-success">
            <?php 
            echo $_SESSION["deleteRecipe"];
            ?>
        </div>
        <?php
        unset($_SESSION["deleteRecipe"]);
        }
        ?>
        
        <table class="table table-bordered table-fixed">
        <thead>
            <tr>
                <th class="col-md-2">Név</th>
                <th class="col-md-2">Leírás</th>
                <th class="col-md-1">Főzési idő</th>
                <th class="col-md-1">Nehézség</th>
                <th class="col-md-1">Kalória</th>
                <th class="col-md-1">Allergia</th>
                <th class="col-md-1">Felhasználó</th>
            </tr>
        </thead>
        <tbody>
        
        <?php
        
        $sqlSelect = "SELECT * FROM recipes";
        $result = mysqli_query($conn,$sqlSelect);

        while($data = mysqli_fetch_array($result)){
            ?>
            <tr>
                <td><?php echo $data['recipe_name']; ?></td>
                <td>
                <textarea rows="3" cols="25">
                    <?php echo $data['description']; ?>
                </textarea>
                    
                </td>
                <td><?php echo $data['cook_time']; ?></td>
                <td><?php echo $data['difficulty']; ?></td>
                <td><?php echo $data['calorie']; ?></td>
                <td><?php echo $data['allergie']; ?></td>
                <td><?php echo $data['user_id']; ?></td>
                <td>
                    <a href="editRecipe.php?id=<?php echo $data['recipe_id']; ?>" class="btn btn-warning">Szerkesztés</a>
                    <a href="deleteRecipe.php?id=<?php echo $data['recipe_id']; ?>" class="btn btn-danger">Törlés</a>
                </td>
            </tr>
            <?php
        }
        ?>
        </tbody>
        </table>
    </div>

    
</body>
</html>