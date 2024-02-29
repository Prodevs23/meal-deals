<html>
<head>
	<title>Add Data</title>
</head>

<body>
<?php
// Include the database connection file
require_once("dbConnection.php");

if (isset($_POST['submit'])) {
	// Escape special characters in string for use in SQL statement	
	$username = mysqli_real_escape_string($mysqli, $_POST['username']);
	$phone = mysqli_real_escape_string($mysqli, $_POST['phone']);
	$email = mysqli_real_escape_string($mysqli, $_POST['email']);
		
	// Check for empty fields
	if (empty($username) || empty($email)) {
		if (empty($username)) {
			echo "<font color='red'>Name field is empty.</font><br/>";
		}
		
		if (empty($email)) {
			echo "<font color='red'>Email field is empty.</font><br/>";
		}
		
		// Show link to the previous page
		echo "<br/><a href='javascript:self.history.back();'>Go Back</a>";
	} else { 
		// If all the fields are filled (not empty) 

		// Insert data into database
		$result = mysqli_query($mysqli, "INSERT INTO users (`username`, `phone`, `email`) VALUES ('$username', '$phone', '$email')");
		
		// Display success message
		echo "<p><font color='green'>Data added successfully!</p>";
		echo "<a href='admin.php'>View Result</a>";
	}
}
?>
</body>
</html>
