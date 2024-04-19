<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>Felhasználó hozzáadása</title>
</head>
<body>
    <div class="container my-5">
    <header class="d-flex justify-content-between my-4">
            <h1>Felhasználó hozzáadása</h1>
            <div>
            <a href="adminUsers.php" class="btn btn-primary">Vissza</a>
            </div>
        </header>
        
        <form action="processUser.php" method="post">
            <div class="form-elemnt my-4">
                <input type="text" class="form-control" name="lastname" placeholder="Vezetéknév:">
            </div>

            <div class="form-elemnt my-4">
                <input type="text" class="form-control" name="middlename" placeholder="Középső név:">
            </div>

            <div class="form-elemnt my-4">
                <input type="text" class="form-control" name="firstname" placeholder="Keresztnév:">
            </div>
            <div class="form-elemnt my-4">
                <input type="text" class="form-control" name="username" placeholder="Felhasználónév:">
            </div>
            
            <div class="form-element my-4">
                <input type="text" class="form-control" name="email" placeholder="Email:">
            </div>

            <div class="form-element my-4">
                <input type="text" class="form-control" name="phone" placeholder="Telefon:">
            </div>

            <div class="form-element my-4">
                <input type="text" class="form-control" name="address" placeholder="Cím:">
            </div>

            <div class="form-element my-4">
                <input type="text" class="form-control" name="password" placeholder="Jelszó:">
            </div>

            <div class="form-element my-4">
                <input type="submit" name="createUser" name="password2" value="Új felhsználó hozzáadása" class="btn btn-primary">
            </div>
        </form>
        
        
    </div>
</body>
</html>