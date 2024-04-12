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
                    <a class="nav-link active" aria-current="page" href="/" name="home">Home</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/about">Rólunk</a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        Menü
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/login">Bejelentkezés</a></li>
                        <li><a class="dropdown-item" href="/subscribe">Feliratkozás</a></li>
                        <li><a class="dropdown-item" href="/profil">Profil</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="./alapanyagok.php">Alapanyagok</a></li>
                        <li><a class="dropdown-item" href="./receptek.php">Receptek</a></li>
                    </ul>
                </li>

            </ul>

            <div class="c">
                <h6>@yield('page', '{{ $page }}')</h6>
                <h6><?php
                
                //$path = $_SERVER['DOCUMENT_ROOT'];
                //$path = str_replace('\\', '/', $path);
                //include_once "$path/templates/text.php";
                ?></h6>
            </div>

            <form class="d-flex" role="search" 
                  action="
                  <?php

                    //$src = $_SERVER['REQUEST_URI'];
                    //$src = substr($src, strrpos($src, '/') + 1);

                    //if ($src = "renderAdmin.php") {
                    //    echo "../logout.php";    
                    //}else
                    //echo "logout.php";
                  ?>
                  
                  ">
                <div class="loginuser" type="">
                    <h6><?php //if (isset($_SESSION['username'])) echo $_SESSION['username']; ?></h6>
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