<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>Alapanyag hozzáadása</title>
</head>
<body>
    <div class="container my-5">
    <header class="d-flex justify-content-between my-4">
            <h1>Alapanyag hozzáadása</h1>
            <div>
            <a href="adminIngredients.php" class="btn btn-primary">Vissza</a>
            </div>
        </header>
        
        <form action="processIngredient.php" method="post">
            <div class="form-elemnt my-4">
                <input type="text" class="form-control" name="ingredient_name" placeholder="Alapanyagnév:">
            </div>

            <div class="form-elemnt my-4">
                <input type="number" class="form-control" name="category_id" placeholder="Kategória:">
            </div>

            <div class="form-elemnt my-4">
                <input type="number" class="form-control" name="measure_unit_id" placeholder="Mértékegység:">
            </div>

            <div class="form-elemnt my-4">
                <input type="number" class="form-control" name="allergie_id" placeholder="Allergia:">
            </div>

            <div class="form-elemnt my-4">
                <input type="number" class="form-control" name="user_id" placeholder="Felhasználó:">
            </div>

            <div class="form-element my-4">
                <input type="submit" name="createIngredient" value="Új alapanyag hozzáadása" class="btn btn-primary">
            </div>
        </form>
        
        
    </div>
</body>
</html>