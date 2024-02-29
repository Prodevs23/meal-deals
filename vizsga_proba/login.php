<?php
session_start();
?>

<header class="fejlec">

    <?php include_once "header.php"; ?>

</header>

<?php

include_once "menu.php";

include_once('function.php');

$usercredentials = new DB_con();

if(isset($_POST['signin']))
{

$uname = $_POST['username'];
$pasword = md5($_POST['password']);

$ret = $usercredentials->signin($uname, $pasword);

$num=mysqli_fetch_array($ret);

if($num>0) {
  $_SESSION['userid'] = $num['user_id'];
  $_SESSION['lastname'] = $num['lastname'];
  $_SESSION['middlename'] = $num['middlename'];
  $_SESSION['firstname'] = $num['firstname'];
  $_SESSION['username'] = $num['username'];
  $_SESSION['email'] = $num['email'];
  $_SESSION['phone'] = $num['phone'];
  $_SESSION['address'] = $num['address'];
  $_SESSION['pass'] = $num['pass'];
  $_SESSION['pasword'] = $_POST['password'];
  
  if ($num['username'] == 'admin') {
  //echo "ok" . $num['username'] . $_POST['password'];
  echo "<script>window.location.href='./admin/renderAdmin.php'</script>";
  //echo "<script>window.location.href='admin.php'</script>";
  } else {
  echo "<script>window.location.href='ing.php'</script>";
  }

//echo "<script>window.location.href='welcome.php'</script>";
}
else
{
// Message for unsuccessfull login
echo "<script>alert('Wrong username or password. Please try again');</script>";
echo "<script>window.location.href='login.php'</script>";
}
}
?>
 
 
<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="utf-8">
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="style.css">
    <!--
    <link href="assests/style.css" rel="stylesheet">
    <script src="assests/jquery-1.11.1.min.js"></script>
    <script src="assests/bootstrap.min.js"></script>
-->
</head>


<div class="container login">

  <div class="imgcontainer">
    <img src="pic/creation-logo-chef.avif" alt="Chef" width="420px">
  </div>

  <form action="" method="POST">

    <div class="container">
      <label for="username"><b>Username</b></label>
      <input class="inputbox" type="text" placeholder="Enter Username" name="username" onblur="checkusername(this.value)" required>

      <label for="pass"><b>Password</b></label>
      <input class="inputbox" type="password" placeholder="Enter Password" name="password" required>
        
      <button type="submit" formaction="" name="signin">Login</button>
      <div class="remember">
        <label for="remember">remember me</label>
        <input class="inputbox ch" type="checkbox" name="remember">
      </div>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>

<script type="text/javascript">
</script>

<script>
function checkusername(value) {
  $.ajax({
  type: "POST",
  url: "check_availability.php",
  data:'username=' + value,
  success: function(data) {
  $("#usernameavailability").html(data);
  }
  });

}
</script>
</html>