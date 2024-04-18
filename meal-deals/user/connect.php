<?php
$dbName = "mealdeals";
$dbHost = "localhost";
$dbUser = "sqluser";
$dbPass = "password";
$dbPort = 3307;
$conn = mysqli_connect($dbHost, $dbUser, $dbPass, $dbName);
if (!$conn) {
    die("Something went wrong");
}
?>