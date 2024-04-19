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
    
    <title>Felhasználók listája</title>
    <style>
        table  td, table th{
        vertical-align:middle;
        text-align:right;
        padding:20px!important;
        }
    </style>
</head>
<body>
    <div class="container my-4">
        <header class="d-flex justify-content-between my-4">
            <h1>Felhasználók listája</h1>
            <div>
                <a href="createUser.php" class="btn btn-primary">Felhasználó hozzáadása</a>
                <a href="admin.php" class="btn btn-primary">Vissza</a>
                <a href="./../logout.php" class="btn btn-primary">Kijelentkezés</a>
            </div>
        </header>
        <?php
        
        if (isset($_SESSION["createUser"])) {
        ?>
        <div class="alert alert-success">
            <?php 
            echo $_SESSION["createUser"];
            ?>
        </div>
        <?php
        unset($_SESSION["createUser"]);
        }
        ?>
         <?php
        if (isset($_SESSION["updateUser"])) {
        ?>
        <div class="alert alert-success">
            <?php 
            echo $_SESSION["updateUser"];
            ?>
        </div>
        <?php
        unset($_SESSION["updateUser"]);
        }
        ?>
        <?php
        if (isset($_SESSION["deleteUser"])) {
        ?>
        <div class="alert alert-success">
            <?php 
            echo $_SESSION["deleteUser"];
            ?>
        </div>
        <?php
        unset($_SESSION["deleteUser"]);
        }
        ?>
        
        <table class="table table-bordered">
        <thead>
            <tr>
                <th class="col-md-2">Név</th>
                <th class="col-md-1">Felhasználónév</th>
                <th class="col-md-2">Cím</th>
                <th class="col-md-1">Email</th>
                <th class="col-md-1">Telefon</th>
            </tr>
        </thead>
        <tbody>
        
        <?php
        
        $sqlSelect = "SELECT * FROM users";
        $result = mysqli_query($conn,$sqlSelect);

        while($data = mysqli_fetch_array($result)){
            ?>
            <tr>
                <td><?php echo $data['fullname']; ?></td>
                <td><?php echo $data['username']; ?></td>
                <td><?php echo $data['email']; ?></td>
                <td><?php echo $data['address']; ?></td>
                <td><?php echo $data['phone']; ?></td>
                <td>
                    <a href="editUser.php?id=<?php echo $data['user_id']; ?>" class="btn btn-warning">Szerkesztés</a>
                    <a href="deleteUser.php?id=<?php echo $data['user_id']; ?>" class="btn btn-danger">Törlés</a>
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