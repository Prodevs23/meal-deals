<?php
define('DB_SERVER', 'localhost');
define('DB_USER', 'root');
define('DB_PASS' , '');
define('DB_NAME', 'mealdeals');
class DB_con
{
	public $dbh;
function __construct()
{
$con = mysqli_connect(DB_SERVER, DB_USER, DB_PASS, DB_NAME);
mysqli_set_charset($con, "utf8mb4");

$this->dbh = $con; // database handle
// Check connection
if (mysqli_connect_errno())
{
echo "Failed to connect to MySQL: " . mysqli_connect_error();
 }
}
 
// for username availblty
public function getUsername($userName) {
	$result =mysqli_query($this->dbh, "SELECT username FROM users WHERE username ='" . $userName . "';");
	return $result;
 
}
// Function for registration
public function registration($lastName, $middleName, $firstName, $userName, $email, $phone, $address, $pasword) {
    $ret=mysqli_query($this->dbh,"INSERT INTO users (lastname, middlename, firstname, username, email, phone, address, pass) 
								  VALUES ('$lastName', '$middleName', '$firstName', '$userName', '$email', '$phone', '$address', '$pasword')");
	return $ret;
}
// Function for signin
public function signin($userName, $pasword) {
	$result=mysqli_query($this->dbh,"SELECT user_id, username, pass FROM users WHERE username = '" . $userName . "' AND pass = '" . $pasword . "';");
	return $result;
}
public function renderer() {
    $ret=mysqli_query($this->dbh,"SELECT * FROM users;");
	return $ret;
}
public function isValidPassword($pass) {
	//return preg_match_all("/^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*]).{8,}$/", $pass);
	//return preg_match_all("$\S*(?=\S{8,})(?=\S*[a-z])(?=\S*[A-Z])(?=\S*[\d])(?=\S*[\W])\S*$", $pass);
	if( strlen($pass) < 8 )
		return false;
	return true;
}
function isValidLastName($name) {
	$rest = mb_substr($name, 1);

	if (!preg_match("/[A-ZÖÜÓŐÚÉÁŰ]/", $name)) {
	echo "<script>alert('Csak nagybetűvel kezdődhet a név !');</script>";
	return false;
	}
    else if (!preg_match("/^[a-zöüóőúéáű]+$/", $rest)) {
        echo "<script>alert('Csak betűket tartalmazhat a név és csak az első lehet nagybetű')</script>";
        return false;
      } else return true;
}
function isValidMiddleName($name) {
	$rest = substr($name, 1);
	
	if (!preg_match("/[A-ZÖÜÓŐÚÉÁŰ]/", $name)) {
		 echo "<script>alert('Csak nagybetűvel kezdődhet a név !')</script>";
		 return false;
	}

    else if (!preg_match("/^[a-zöüóőúéáű]+$/", $rest)) {
        echo "<script>alert('Csak betűket tartalmazhat a név és csak az első lehet nagybetű')</script>";
        return false;
      } else return true;
}
function isValidFirstName($name) {
	$rest = mb_substr($name, 1);

	if (!preg_match("/[A-ZÖÜÓŐÚÉÁŰ]/", $name)) {
	echo "<script>alert('Csak nagybetűvel kezdődhet a név !');</script>";
	return false;
	}
    else if (!preg_match("/^[a-zöüóőúéáű]+$/", $rest)) {
        echo "<script>alert('Csak betűket tartalmazhat a név és csak az első lehet nagybetű')</script>";
        return false;
      } else return true;
}
function isValidEmail($email){
    // Remove all illegal characters from email
$email = filter_var($email, FILTER_SANITIZE_EMAIL);

// Validate email
if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
    echo $email." is a valid email address";
	return true;
} else {
    echo $email." is not a valid email address";
	return false;
}
}
function isValidPhone($phone){
	$regex = '/^(\+\d{1,3}\s)?\(?\d{3,4}\)?[\s.-]?\d{3,4}[\s.-]?\d{0,4}$/';
    return preg_match($regex, $phone);
}
function listIngredients() {
	$result =mysqli_query($this->dbh, "SELECT * FROM ingredients;");
	return $result;
}
}
?>