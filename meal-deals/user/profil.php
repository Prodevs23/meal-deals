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
            <a href="index.php" class="btn btn-primary">Vissza</a>
            </div>
        </header>
        <form action="processProfil.php" method="post">
            <?php 
            
            if (isset($_GET['id'])) {
                include("./user/connect.php");
                $id = $_GET['id'];
                $sql = "SELECT * FROM users WHERE user_id=$id";
                $result = mysqli_query($conn,$sql);
                $row = mysqli_fetch_array($result);
                ?>
                     <div class="form-elemnt my-4">
                        <label for="fullname">Név:</label>
                        <input type="text" class="form-control" name="fullname" value="<?php echo $row["fullname"]; ?>">
                     </div>
                     <div class="form-elemnt my-4">
                        <label for="username">Felhasználónév:</label>
                        <input type="text" class="form-control" name="username" value="<?php echo $row["username"]; ?>">
                     </div>
                     <div class="form-elemnt my-4">
                        <label for="email">Email:</label>
                        <input type="text" class="form-control" name="email" value="<?php echo $row["email"]; ?>">
                     </div>
                     <div class="form-elemnt my-4">
                        <label for="phone">Telefon:</label>
                        <input type="text" class="form-control" name="phone" value="<?php echo $row["phone"]; ?>">
                     </div>
                     <div class="form-elemnt my-4">
                        <label for="address">Cím:</label>
                        <input type="text" class="form-control" name="address" value="<?php echo $row["address"]; ?>">
                     </div>
            
            <input type="hidden" value="<?php echo $id; ?>" name="id">
            <div class="form-element my-4">
                <input type="submit" name="editUser" value="Frissítés" class="btn btn-primary">
            </div>
                <?php
            }else{
                echo "<h3>A felhasználó nem létezik</h3>";
            }
            ?>
           
        </form>
        
        
    </div>
</body>
</html>