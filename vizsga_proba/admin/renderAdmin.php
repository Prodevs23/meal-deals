<?php
    session_start();
?>


<?php
// Include the database connection file
require_once("dbConnection.php");

// Fetch data in descending order (lastest entry first)
$result = mysqli_query($mysqli, "SELECT * FROM users;");
?>


    <header class="fejlec">

    <?php include_once "../header.php"; ?>

    </header>

    <?php include_once "../menu.php"; ?>

<html>
<head>	
	<title>Adminpage</title>
</head>

<body>
	<h2>Adminpage</h2>
	<p>
		<a href="add.php">Add New Data</a>
	</p>
	<table width='80%' border=0>
		<tr bgcolor='#DDDDDD'>
			<td><strong>UserName</strong></td>
			<td><strong>Phone</strong></td>
			<td><strong>Email</strong></td>
			<td><strong>Action</strong></td>
		</tr>
		<?php
		
		while ($res = mysqli_fetch_assoc($result)) {
			echo "<tr>";
			//echo "<td>".$res['user_id']."</td>";
			echo "<td>".$res['username']."</td>";
			echo "<td>".$res['phone']."</td>";
			echo "<td>".$res['email']."</td>";	
			echo "<td><a href=\"edit.php?id=$res[user_id]\">Edit</a> | 
			<a href=\"delete.php?id=$res[user_id]\" onClick=\"return confirm('Are you sure you want to delete?')\">Delete</a></td>";
		}
		?>
	</table>
</body>
</html>
