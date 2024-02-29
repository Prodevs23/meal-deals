<?php
    session_start();
?>

<div class="fejlec">
    <?php include_once "header.php"; ?>
</div>

<?php include_once "menu.php"; 
      include_once('function.php');
    $usercredentials = new DB_con();
    $ret = $usercredentials->listProfil($_SESSION['username']);

    if (isset($_POST['submit'])) {
        $username = $_POST['username'];
        $password = $_POST['password'];
        $address = $_POST['address'];
        $phone = $_POST['phone'];
        $email = $_POST['email'];


    }
    
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
    }


    if (isset($_POST['update'])) {
      // Escape special characters in a string for use in an SQL statement
      $id = mysqli_real_escape_string($mysqli, $_POST['id']);
      $username = mysqli_real_escape_string($mysqli, $_POST['username']);
      $password = mysqli_real_escape_string($mysqli, $_POST['password']);
      $address = mysqli_real_escape_string($mysqli, $_POST['address']);
      $phone = mysqli_real_escape_string($mysqli, $_POST['phone']);
      $email = mysqli_real_escape_string($mysqli, $_POST['email']);	
      	
      
      // Check for empty fields
      if (empty($username) || empty($email)) {
        if (empty($username)) {
          echo "<font color='red'>Userame field is empty.</font><br/>";
        }
        
        if (empty($email)) {
          echo "<font color='red'>Email field is empty.</font><br/>";
        }
      } else {
        // Update the database table
        $result = mysqli_query($mysqli, "UPDATE users SET `username` = '$username', `address` = '$address', `phone` = '$phone', `email` = '$email', `pass` = '$password' WHERE `user_id` = $id");
        
        // Display success message
        echo "<p><font color='green'>Data updated successfully!</p>";
        echo "<a href='admin.php'>View Result</a>";
      }
    }



?>


    <!DOCTYPE html>
    <html lang="hu">
    <head>
        <meta charset="utf-8">
        <title>Profil</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        
    </head>
<html>
    <body>
        <h3>Profil</h3>
        <?php
            echo $_SESSION['username'];
        ?>

<form method="POST" class="row g-3">
  <div class="col-md-6">
    <label for="username" class="form-label">Username</label>
    <input type="text" class="form-control" id="username" value="<?php echo $_SESSION['username'] ?>">
  </div>
  <div class="col-md-6">
    <label for="password" class="form-label">Password</label>
    <input type="password" class="form-control" id="password" value="<?php echo $_SESSION['pass'] ?>">
  </div>
  <div class="col-12">
    <label for="address" class="form-label">Address</label>
    <input type="text" class="form-control" id="address" value="<?php echo $_SESSION['address'] ?>">
  </div>
  <div class="col-12">
    <label for="phone" class="form-label">Phone</label>
    <input type="text" class="form-control" id="phone" value="<?php echo $_SESSION['phone'] ?>">
  </div>
  <div class="col-md-6">
    <label for="email" class="form-label">Email</label>
    <input type="text" class="form-control" id="email" value="<?php echo $_SESSION['email'] ?>">
  </div>
  
  <div class="col-12">
    <button name="update" type="submit" class="btn btn-primary">Update</button>
  </div>
</form>

    </body>
</html>
