<header class="fejlec">
    <?php include_once "header.php"; ?>
</header>

<?php
  <?php
  include_once "mealdeals/header.php";
  include_once "mealdeals/menu.php";
 ?>
?>

<div class="container login">

  <div class="imgcontainer">
    <img src="pic/creation-logo-chef.avif" alt="Chef" width="420px">
  </div>

  <form action="index.php" method="GET">
  
    <div class="container">
      <label for="uname"><b>Username</b></label>
      <input class="inputbox" type="text" placeholder="Enter Username" name="uname" required>

      <label for="psw"><b>Password</b></label>
      <input class="inputbox" type="password" placeholder="Enter Password" name="psw" required>
        
      <button type="submit" formaction="index.php">Login</button>
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