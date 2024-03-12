<?php
$databaseHost = 'localhost';
$databaseName = 'mealdeals';
$databaseUsername = 'sqluser';
$databasePassword = 'password';

// Open a new connection to the MySQL server
$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName); 