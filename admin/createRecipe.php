<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>Recept hozzáadása</title>
</head>
<body>
    <div class="container my-5">
    <header class="d-flex justify-content-between my-4">
            <h1>Recept hozzáadása</h1>
            <div>
            <a href="adminRecipes.php" class="btn btn-primary">Vissza</a>
            </div>
        </header>
        
        <form action="processRecipe.php" method="post">
            <div class="form-elemnt my-4">
                <input type="text" class="form-control" name="recipe_name" placeholder="Receptnév:">
            </div>

            <div class="form-elemnt my-4">
                <textarea rows="3" cols="148" name="description" placeholder="Leírás:"></textarea>
            </div>

            <div class="form-elemnt my-4">
                <input type="text" class="form-control" name="cook_time" placeholder="Főzési idő:">
            </div>

            <div class="form-elemnt my-4">
                <input type="text" class="form-control" name="difficulty" placeholder="Bonyolultság(1-5):">
            </div>

            <div class="form-elemnt my-4">
                <input type="text" class="form-control" name="calorie" placeholder="Kalória:">
            </div>

            <div class="form-elemnt my-4">
                <input type="text" class="form-control" name="allergie" placeholder="Allergia:">
            </div>

            <div class="form-element my-4">
                <input type="submit" name="createRecipe" value="Új recept hozzáadása" class="btn btn-primary">
            </div>
        </form>
        
        
    </div>
</body>
</html>