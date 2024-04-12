<?php
    session_start();
?>

<header class="fejlec">

    <?php include_once "header.php"; ?>

</header>

<?php

include_once "menu.php";

include_once('function.php');

?>

<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ingredients</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    
</head>
<body>
    <h1>Ingredients</h1>

<?php
    // include Function  file
    include_once('function.php');
    // Object creation
    $ingredients=new DB_con();
    
    //Function Calling
    $ret = $ingredients->listIngredients();
    $index = 0;
    
    echo "<table class='table'> <tr> <th> Id </th>" . 
                                    "<th> Ingredients name </th>" .
                               "</tr>";

    while($row = $ret->fetch_assoc()) {
        $index++;
        echo "<tr> <td>" . $row["ingredient_id"] . "</td>" . 
                  "<td>" . $row["ingredient_name"] . "</td>" .
                  "<td> <button id='buttons' type='button' class='btn btn-primary'> Marked </button> </td>" . 
                  //"<td> <button type='button' class='btn btn-danger'> Unmarked </button></td>" . 
                  
             "</tr>";
        
    }
    echo "</table>";
    echo "<button id='searchButton' type='button' class='btn btn-success'> Search </button>";

    $arrayIngredients = array($index);
    for ($i=0; $i<$index; $i++) $arrayIngredients[$i] = 0;
    echo $index;
    $arraytojson =  json_encode($arrayIngredients);
    echo $arraytojson[1];
    
?>

<script> 
var array = <?php echo $arraytojson; ?> ;  
// See it on the console 
//console.log(array); 
</script> 

<script src="app.js"></script>
</body>
</html>