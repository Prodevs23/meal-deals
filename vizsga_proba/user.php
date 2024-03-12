<?php
session_start();
?>

<header class="fejlec">

    <?php include_once "header.php"; ?>

</header>

<?php

include_once "menu.php";

include_once('function.php');

//echo "Hello";
?>

<html>
<head>	
	<title>UserPage</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ingredients</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
</head>

<body>
	<h2>UserPage</h2>
	
    <div id="div1">

	<table width='80%' border=0>
		<tr bgcolor='#DDDDDD'>
			<td><strong>Ingredient_id</strong></td>
			<td><strong>Ingredient_name</strong></td>
			
        </tr>
    
		<?php
		$userActual = new DB_con();
        //$_SESSION['userActual'] = new DB_con();
        //$userActual = $_SESSION['userActual'];
        //$userid = 150;
        $userid = $_SESSION['userid'];
        
        $result = $userActual->listIngredients($userid);
        $index = 0;
        
		while ($res = mysqli_fetch_assoc($result)) {
            $index++;
            $arrayIngredients[] = 0;
			//echo "<tr>";
			echo "<td>".$res['ingredient_id']."</td>";
			//echo "<td class='btn btn-primary mb-2' width='200px;'>".$res['ingredient_name']."</td>";
            echo "<td> <button id='buttons' type='button' class='btn btn-primary mb-2' style='width:200px;'>" . $res['ingredient_name'] . "</button> </td>" .
			//echo "<td>".$res['phone']."</td>";
			//echo "<td>".$res['email']."</td>";	
			//echo "<td><a href=\"edit.php?id=$res[user_id]\">Edit</a> | 
			//<a href=\"delete.php?id=$res[user_id]\" onClick=\"return confirm('Are you sure you want to delete?')\">Delete</a></td>";
            //echo "<td> <button id='buttons' type='button' class='btn btn-primary'> Marked </button> </td>" . 
                  //"<td> <button type='button' class='btn btn-danger'> Unmarked </button></td>" . 
                  
             "</tr>";
             
		}
        echo "</table>";
        echo "<button id='searchButton' type='button' class='btn btn-success'> Search </button>";

        $arrayIngredients = array($index);
        for ($i=0; $i<$index+3; $i++) $arrayIngredients[$i] = 0;
        //echo $index;
        $arraytojson =  json_encode($arrayIngredients);
        //echo $arraytojson[1];
        

		?>
	</div>

    <script> 
        var array = <?php echo $arraytojson; ?>  
        // See it on the console 
        //console.log(array); 
    </script>

<script src="app.js"></script>
    
</body>
</html>