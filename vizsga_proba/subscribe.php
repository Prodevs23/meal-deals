<?php
session_start();
?>

<header class="fejlec">

    <?php include_once "header.php"; ?>

</header>

<?php

include_once "menu.php";

include_once('function.php');

$newusercredentials = new DB_con();

if(isset($_POST['subscribe']))
{

$lastName = $_POST['lastname'];
$middleName = $_POST['middlename'];
$firstName = $_POST['firstname'];
$userName = $_POST['username'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$address = $_POST['address']; 
$pasword = md5($_POST['pass1']);

$ret = $newusercredentials->registration($lastName, $middleName, $firstName, $userName, $email, $phone, $address, $pasword);

//$num=mysqli_fetch_array($ret);

if($ret) {
    echo "<script>alert('Subscribe successfull');</script>";
}
else
{
// Message for unsuccessfull login
echo "<script>alert('Subscribe unsuccessfull, try once more');</script>";
}
}
?>

<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="utf-8">
    <title>User Subscribe</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="style.css">
    <!--
    <link href="assests/style.css" rel="stylesheet">
    <script src="assests/jquery-1.11.1.min.js"></script>
    <script src="assests/bootstrap.min.js"></script>
-->
</head>

<form action="" method="POST">
<div class="container">
    <div class="img__container">
        <img src="https://images.unsplash.com/photo-1546793665-c74683f339c1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80" alt="salad" class="img"> 
    </div>   
    <div class="content">
        <h2 class="subtitle">Subscribe (Never miss a recipe)</h2>
        <input type="text" class="inputbox" placeholder="Lastname" name="lastname" required>
        <input type="text" class="inputbox" placeholder="Middlename" name="middlename">
        <input type="text" class="inputbox" placeholder="Firstname" name="firstname" required>
        <input type="text" class="inputbox" placeholder="Username" name="username" required>
        <input type="text" class="inputbox" placeholder="Email" name="email" required>
        <input type="text" class="inputbox" placeholder="Phone" name="phone">
        <input type="text" class="inputbox" placeholder="Address" name="address">
        <input type="text" class="inputbox" placeholder="Password" name="pass1" required>
        <input type="text" class="inputbox" placeholder="Password once more" name="pass2" required>
        <input type="submit" value="Subscribe" class="subscribe" name="subscribe">
        <p class="text">We won’t send you spam. Unsubscribe at any time.</p>
    </div>
</div>
</form>