<?php
// Include the database connection file
require_once("dbConnection.php");

if (isset($_POST['update'])) {
	// Escape special characters in a string for use in an SQL statement
	$id = mysqli_real_escape_string($mysqli, $_POST['id']);
	$username = mysqli_real_escape_string($mysqli, $_POST['username']);
	$phone = mysqli_real_escape_string($mysqli, $_POST['phone']);
	$email = mysqli_real_escape_string($mysqli, $_POST['email']);	
	
	// Check for empty fields
	if (empty($username) || empty($email)) {
		if (empty($username)) {
			echo "<font color='red'>Name field is empty.</font><br/>";
		}
		
		if (empty($phone)) {
			echo "<font color='red'>Age field is empty.</font><br/>";
		}
		
		if (empty($email)) {
			echo "<font color='red'>Email field is empty.</font><br/>";
		}
	} else {
		// Update the database table
		$result = mysqli_query($mysqli, "UPDATE users SET `username` = '$username', `phone` = '$phone', `email` = '$email' WHERE `user_id` = $id");
		
		// Display success message
		echo "<p><font color='green'>Data updated successfully!</p>";
		echo "<a href='admin.php'>View Result</a>";
	}
}
