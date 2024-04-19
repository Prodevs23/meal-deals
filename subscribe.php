<?php
session_start();
//ob_start();
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
//$pasword = md5($_POST['pass1']);
$password = $_POST['pass1'];
$valid = true;


$valid = $newusercredentials->nameValidation($lastName, $middleName, $firstName);

if ($valid) $valid = $newusercredentials->userValidation($userName);

if ($valid) $valid = $newusercredentials->emailValidation($email);

if ($valid) $valid = $newusercredentials->phoneValidation($phone);

if ($valid && strlen($middleName)) $valid = $newusercredentials->addressValidation($address);

if ($valid) $valid = $newusercredentials->passwordValidation($password);

echo '<script>alert ($valid);</script>';
if($valid) {
    $newusercredentials->registerNewUser($lastName, $middleName, $firstName, $userName, $email, $phone, $address, $password);
    echo "<script>alert('A regisztráció sikeres !');</script>";
    //header("Location : login.php");
}
else
{

echo "<script>alert('Nem sikerült a regisztráció, próbáld újra !');</script>";
}
}



?>

<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="utf-8">
    <title>Regisztráció</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="substyle.css">
    <!--
    
    <script src="assests/jquery-1.11.1.min.js"></script>
    <script src="assests/bootstrap.min.js"></script>
-->

<style> 
        h1 { 
            color: green; 
        } 
          
        label { 
            float: left; 
        } 
          
        span { 
            display: block; 
            overflow: hidden; 
            padding: 0px 4px 0px 6px; 
        } 
          
        input { 
            width: 70%; 
        } 
    </style> 

</head>
<body>
    
<div class="subscribeForm">
<form action="" method="POST">
<div class="container">
    <div class="img__container">
        <img src="https://images.unsplash.com/photo-1546793665-c74683f339c1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80" alt="salad" class="img"> 
    </div>   
    <div class="content">
        <h2 class="subtitle">Regisztráció</h2>
    
        <input id="name " type="text" class="inputbox" placeholder="Vezetéknév" name="lastname" required>
        
        <input type="text" class="inputbox" placeholder="Középső név" name="middlename">
        <input type="text" class="inputbox" placeholder="Keresztnév" name="firstname" required>
        <input type="text" class="inputbox" placeholder="Felhasználónév" name="username" required>
        <input type="text" class="inputbox" placeholder="Email" name="email" required>
        <input type="text" class="inputbox" placeholder="Telefon" name="phone">
        <input type="text" class="inputbox" placeholder="Cím" name="address">
        <input type="text" class="inputbox" placeholder="Jelszó" name="pass1" required>
        <input type="text" class="inputbox" placeholder="Jelszó megerősítése" name="pass2" required>
        <input type="submit" value="Regisztráció" class="subscribe" name="subscribe">
        <p class="text">Nem küldünk spam-et.</p>
    </div>
</div>
</form>
</div>
</body>
</html>