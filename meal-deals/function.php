<?php
define('DB_SERVER', 'localhost');
define('DB_USER', 'sqluser');
define('DB_PASS' , 'password');
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
    $result=mysqli_query($this->dbh,"SELECT * FROM users WHERE username = '" . $userName . "' AND password = '" . $pasword . "';");
    return $result;
}

public function registration($lastName, $middleName, $firstName, $userName, $email, $phone, $address, $pasword) {
	$resultUser=mysqli_query($this->dbh,"SELECT * FROM users WHERE username = '" . $userName . "';");
	$resultPass=mysqli_query($this->dbh,"SELECT * FROM users WHERE password = '" . $pasword . "';");
	$valid = true;
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
	$fullName = $lastName . " " . $middleName . " " . $firstName;
	$ret=mysqli_query($this->dbh,"INSERT INTO users (fullname, username, email, phone, address, password) 
								  VALUES ('$fullName', '$userName', '$email', '$phone', '$address', '$pasword')");
	return $ret;
}

public function nameValidation($lastName, $middleName, $firstName) {
	$valid = true;
	$nameLength = strlen($lastName);
	$pattern = "/^(([A-Z]{1})([a-z]{1,19}))$/";
	if (preg_match_all($pattern, $lastName)) echo '<script>console.log("valid: igen"); </script>';
	else {echo '<script>console.log("valid: nem"); </script>'; $valid = false;}
	echo '<script>console.log("name length:" + '. $nameLength . '); </script>';
	echo '<script>console.log("name:" + '. $lastName . '); </script>';

	//$nameLength = strlen($middleName);
	//if ($nameLength > 0) {
	//	$pattern = "/^(([A-Z]{1})([a-z]{1,19}))$/";
	//	if (preg_match_all($pattern, $middleName)) echo '<script>console.log("valid: igen"); </script>';
	//	else {echo '<script>console.log("valid: nem"); </script>'; $valid = false;}
	//	echo '<script>console.log("name length:" + '. $nameLength . '); </script>';
	//	echo '<script>console.log("name:" + '. $middleName . '); </script>';
	//}
	
	if ($valid == true) {
	$nameLength = strlen($firstName);
	$pattern = "/^(([A-Z]{1})([a-z]{1,19}))$/";
	if (preg_match_all($pattern, $firstName)) echo '<script>console.log("valid: igen"); </script>';
	else {echo '<script>console.log("valid: nem"); </script>';$valid = false;}
	echo '<script>console.log("name length:" + '. $nameLength . '); </script>';
	echo '<script>console.log("name:" + '. $firstName . '); </script>';
	}
	return $valid;
}

public function userValidation($userName) {
	if(preg_match('/^[a-zA-Z0-9]{4,20}$/', $userName)) {
		echo " Valid username";
		return true;
		} else {
		echo " Invalid username";
		return false;
		}
}
public function passwordValidation($pasword) {

	$pattern = "/(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$/";
	if (preg_match($pattern, $pasword) ){
		echo "Your password is strong.";
		return true;
	} else {
		echo "Your password is not safe.";
		return false;
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
		return true;
		} else {
		echo " Invalid Email";
		return false;
		}
	
}

public function addressValidation($address) {
	$addressLength = strlen($address);
	if ($addressLength > 0)
		if(preg_match('/^[A-Za-z0-9áÁéÉöÖüÜóÓőŐúÚűŰ]+$/', $address)) {
			echo " Valid address";
			return true;
			} else {
			echo " Invalid address";
			return false;
		}
		
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
	
	$sql = 'SELECT DISTINCT recipe.recipe_id, recipe.recipe_name FROM recipe JOIN recipe_ingredients ON recipe.recipe_id = recipe_ingredients.recipe_id WHERE recipe_ingredients.ingredient_id IN (' . implode(',', array_map('intval', $index)) . ')';
	
	$sql2 = 'SELECT recipe_id FROM recipe_ingredients WHERE recipe_id = 3;';

	$result = mysqli_query($this->dbh, $sql);
	$result2 = mysqli_query($this->dbh, $sql2);

	return $result;
}

public function listrecnum1($list, $index) {
	echo count($list) . "-------" . $index;
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

public function ingredientsNumber() {
	$sql = 'SELECT ingredient_id FROM ingredients;';
	$result = mysqli_query($this->dbh, $sql);
	$rows = mysqli_num_rows($result);
	return $rows;
}

}

?>