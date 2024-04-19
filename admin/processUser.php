<?php
    session_start();

include('connect.php');
if (isset($_POST["createUser"])) {
    $name = $_POST["lastname"] . " " . $_POST["middlename"] . " " . $_POST["firstname"];
    $fullname = mysqli_real_escape_string($conn, $name);
    $username = mysqli_real_escape_string($conn, $_POST["username"]);
    $email = mysqli_real_escape_string($conn, $_POST["email"]);
    $phone = mysqli_real_escape_string($conn, $_POST["phone"]);
    $address = mysqli_real_escape_string($conn, $_POST["address"]);
    $password = mysqli_real_escape_string($conn, $_POST["password"]);
    $sqlInsert = "INSERT INTO users(fullname , username , email , phone, address, password) VALUES ('$fullname','$username','$email', '$phone', '$address', '$password')";
    if(mysqli_query($conn,$sqlInsert)){
        
        $_SESSION["createUser"] = "A rögzítés sikeres!";
        header("Location:adminUsers.php");
    }else{
        die("Valami hibádzik");
    }
}
if (isset($_POST["editUser"])) {
    $fullname = mysqli_real_escape_string($conn, $_POST["fullname"]);
    $username = mysqli_real_escape_string($conn, $_POST["username"]);
    $email = mysqli_real_escape_string($conn, $_POST["email"]);
    $phone = mysqli_real_escape_string($conn, $_POST["phone"]);
    $address = mysqli_real_escape_string($conn, $_POST["address"]);
    $id = mysqli_real_escape_string($conn, $_POST["id"]);
    $sqlUpdate = "UPDATE users SET fullname = '$fullname', username = '$username', email = '$email', phone = '$phone', address = '$address' WHERE user_id='$id'";
    if(mysqli_query($conn,$sqlUpdate)){
        
        $_SESSION["updateUser"] = "A frissítés sikeres!";
        header("Location:adminUsers.php");
    }else{
        die("Valami hibádzik");
    }
}
?>