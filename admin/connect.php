<?php
$dbName = "mealdeals";
$dbHost = "localhost";
$dbUser = "root";
$dbPass = "p";
$dbPort = 3306;
$conn = mysqli_connect($dbHost, $dbUser, $dbPass, $dbName);
if (!$conn) {
    die("Something went wrong");
}
?>