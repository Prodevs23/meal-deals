<?php
session_start();
?>

<header class="fejlec" style="text-align: center;">

    <?php 
        include_once "../header.php"; 
        include_once "../menu.php";
    ?>


</header>

<div class="form-element my-4">
                <select name="type" id="" class="" onchange="location = this.value;">
                    <option value="">Adat táblák:</option>
                    <option value="adminUsers.php">Felhasználók</option>
                    <option value="adminRecipes.php">Receptek</option>
                    <option value="adminIngredients.php">Hozzávalók</option>
                </select>
</div>
