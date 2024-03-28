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

public function signin($userName, $pasword) {
    $result=mysqli_query($this->dbh,"SELECT * FROM users WHERE username = '" . $userName . "' AND pass = '" . $pasword . "';");
    return $result;
}

public function registration($lastName, $middleName, $firstName, $userName, $email, $phone, $address, $pasword) {
	$resultUser=mysqli_query($this->dbh,"SELECT * FROM users WHERE username = '" . $userName . "';");
	$resultPass=mysqli_query($this->dbh,"SELECT * FROM users WHERE pass = '" . $pasword . "';");

	$num=mysqli_fetch_array($resultUser);
	if ($num < 1) {
		$this->userValidation($userName);
		$this->nameValidation($lastName, $middleName, $firstName);
	}

	$num=mysqli_fetch_array($resultPass);
	if ($num < 1) $this->passwordValidation($pasword);
	
	$this->phoneValidation($phone);

	$this->emailValidation($email);

	$pasword = md5($pasword);
	$ret=mysqli_query($this->dbh,"INSERT INTO users (lastname, middlename, firstname, username, email, phone, address, pass) 
								  VALUES ('$lastName', '$middleName', '$firstName', '$userName', '$email', '$phone', '$address', '$pasword')");
	return $ret;
}

public function nameValidation($lastName, $middleName, $firstName) {
	//$valid = json_encode( $name );
	//$s = 0;
	//$s = strlen($valid);
	$valid = strlen($lastName);
	$pattern = "/^(([A-Z]{1})([a-z]{1,19}))$/";
	if (preg_match_all($pattern, $lastName)) echo '<script>console.log("valid: igen"); </script>';
	else echo '<script>console.log("valid: nem"); </script>';
	echo '<script>console.log("name length:" + '. $valid . '); </script>';
	echo '<script>console.log("name:" + '. $lastName . '); </script>';

	$valid = strlen($middleName);
	if ($valid > 0) {
		$pattern = "/^(([A-Z]{1})([a-z]{1,19}))$/";
		if (preg_match_all($pattern, $middleName)) echo '<script>console.log("valid: igen"); </script>';
		else echo '<script>console.log("valid: nem"); </script>';
		echo '<script>console.log("name length:" + '. $valid . '); </script>';
		echo '<script>console.log("name:" + '. $middleName . '); </script>';
	}
	
	
	$valid = strlen($firstName);
	$pattern = "/^(([A-Z]{1})([a-z]{1,19}))$/";
	if (preg_match_all($pattern, $firstName)) echo '<script>console.log("valid: igen"); </script>';
	else echo '<script>console.log("valid: nem"); </script>';
	echo '<script>console.log("name length:" + '. $valid . '); </script>';
	echo '<script>console.log("name:" + '. $firstName . '); </script>';
	//if ($valid < 8) {
	//	echo '<script>console.log("nem joooo"); </script>';
	//	return false;
	//}
	return true;
}

public function userValidation($userName) {
	if(preg_match('/^[a-zA-Z0-9]{4,20}$/', $userName)) {
		echo " Valid username";
		} else {
		echo " Invalid username";
		}
}
public function passwordValidation($pasword) {
	//$pass = md5($pasword);
	//$length = strlen($pasword);
	//if ( $length < 8) {
	//	echo '<script>console.log("password is not valid:"); </script>';
	//	echo '<script>console.log(' . $length . '); </script>';
	//}
	
	//echo '<script>console.log("password:" + '. $pasword . '); </script>';

	$pattern = "/(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$/";
	if (preg_match($pattern, $pasword) ){
		echo "Your password is strong.";
	} else {
		echo "Your password is not safe.";
	return true;
	}
}
public function phoneValidation($phone){
	if(preg_match('/^[0-9]{8,15}$/', $phone)) {
	echo " Valid Phone Number";
	} else {
	echo " Invalid Phone Number";
	}
	return true;
}

public function emailValidation($email) {
	$valid = filter_var($email, FILTER_VALIDATE_EMAIL);
	if ($valid) echo "valid email";
	else echo "not valid email";
	$pattern = '/[a-z]+[a-z0-9._%-]+[a-z0-9]+@+[a-z]+[a-z0-9.-]+[a-z0-9]+\.[a-z]{2,}$/';
	if(preg_match($pattern, $email)) {
		echo " Valid Email";
		} else {
		echo " Invalid Email";
		}
	return true;
}

public function addressValidation($address) {
	if(preg_match('/^[A-Za-z0-9áÁéÉöÖüÜóÓőŐúÚűŰ]+$/', $address)) {
		echo " Valid address";
		} else {
		echo " Invalid address";
		}
		return true;
}

public function listIngredients($userid) {
	$result =mysqli_query($this->dbh, "SELECT * FROM ingredients WHERE user_id IS NULL OR user_id = $userid;");
	return $result;
}

public function listRecipe($list) {
		echo "ok";
		print_r($list);
		for ($i=0;$i<count($list);$i++) {
			echo $list[$i];
		}
		$result =mysqli_query($this->dbh, "SELECT recipe_id, ingredient_id FROM recipe_ingredients ORDER BY recipe_id;");
	return $result;
}

public function listrec($index) {
	//$result =mysqli_query($this->dbh, "SELECT recipe_name FROM recipe WHERE recipe_id = $index;");
	//$result =mysqli_query($this->dbh, "SELECT DISTINCT recipe_id FROM recipe_ingredients WHERE ingredient_id IN (1,2,3);");
	//$result = mysqli_query($this->dbh, "select distinct recipe.recipe_id, recipe.recipe_name from recipe join recipe_ingredients on recipe.recipe_id = recipe_ingredients.recipe_id where recipe_ingredients.ingredient_id in (1,2,3);");
	$sql = 'SELECT DISTINCT recipe.recipe_id, recipe.recipe_name FROM recipe JOIN recipe_ingredients ON recipe.recipe_id = recipe_ingredients.recipe_id WHERE recipe_ingredients.ingredient_id IN (' . implode(',', array_map('intval', $index)) . ')';
	//$sql = 'SELECT recipe.recipe_id, recipe.recipe_name FROM recipe JOIN recipe_ingredients ON recipe.recipe_id = recipe_ingredients.recipe_id WHERE recipe_ingredients.ingredient_id IN (' . implode(',', array_map('intval', $index)) . ')';
	$sql2 = 'SELECT recipe_id FROM recipe_ingredients WHERE recipe_id = 3;';

	$result = mysqli_query($this->dbh, $sql);
	$result2 = mysqli_query($this->dbh, $sql2);

	return $result;
}

public function listrecnum1($list, $index) {
	$sql = 'SELECT recipe_id FROM recipe_ingredients 
	WHERE (recipe_id = ' . $index . ') AND (ingredient_id IN (' . implode(',', array_map('intval', $list)) . '));';
	$result1 = mysqli_query($this->dbh, $sql);
	$rows = mysqli_num_rows($result1);
	return $rows;
}
public function listrecnum2($index) {
	$sql = 'SELECT COUNT(recipe_id) FROM recipe_ingredients WHERE recipe_id = ' . $index . ';';
	$result2 = mysqli_query($this->dbh, $sql)->fetch_column();
	return $result2;
}











/*
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
function listIngredients($userid) {
	$result =mysqli_query($this->dbh, "SELECT * FROM ingredients WHERE user_id IS NULL OR user_id = $userid;");
	return $result;
}

function listProfil($user) {
	$result = mysqli_query($this->dbh, "SELECT * FROM users WHERE username = '$user' LIMIT 1;");
	return $result;
}
*/
}

?>