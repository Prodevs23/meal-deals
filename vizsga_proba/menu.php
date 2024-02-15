

<header class="fejlec">

    <?php include_once "header.php"; ?>

</header>

<?php include_once "head.php"; ?>


<!DOCTYPE html>
    <html lang="hu">
    <head>
        <meta charset="utf-8">
        <title>User Registraion using PHP OOPs Concept</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="substyle.css">
        <!--
        <link href="assests/style.css" rel="stylesheet">
        <script src="assests/jquery-1.11.1.min.js"></script>
        <script src="assests/bootstrap.min.js"></script>
    -->
    </head>
    
<nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Meal-deals</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll"
                aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarScroll">
                <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.php" name="home">Home</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="about.php">About</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            Menu
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="login.php">Login</a></li>
                            <li><a class="dropdown-item" href="subscribe.php">Subscribe</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="alapanyagok.php">Alapanyagok</a></li>
                        </ul>
                    </li>

                </ul>

                <div class="c">
                    <h6><?php include_once "text.php"; echo $var; 
                    ?></h6>
                </div>

                <form class="d-flex" role="search" action="logout.php">
                    <div class="loginuser" type="">
                        <h6><?php if (isset($_SESSION['username'])) echo $_SESSION['username']; ?></h6>
                    </div>
                    <button class="btn btn-success" type="submit">Logout</button>
                </form>

                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
</html>