<?php
session_start();
?>

<header class="fejlec">

    <?php //include_once "header.php"; ?>

</header>


<?php

//include_once "menu.php";

include_once('function.php');

//echo "Hello";
?>

<html>
<head>	
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Action</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
</head>
<body>


<?php

    //include_once "function.php";

    echo "Receptek\n";
    $ingredientList[0] = 0;
    for ($i=3; $i < count($_POST['array'])-1; $i++) { 
        //echo $i-2 . " - " . $_POST['array'][$i] . "\t\n";
        if ($_POST['array'][$i] == 1) $ingredientList[] = $i-2;
    }
    //for ($j=0;$j<count($ingredientList);$j++) {echo $ingredientList[$j];}

    $userActual = new DB_con();
    $result = $userActual->listrec($ingredientList);
    //$result2 = $userActual->listrec();

    //$index = 0;
    //$array = $userActual->listrec($ingredientList);

    while ($res1 = mysqli_fetch_assoc($result)) {
        
        echo "<p>" . $res1['recipe_id'] . "--" .$res1['recipe_name'] . "</p>";
        
        $result1 = $userActual->listrecnum1($ingredientList, $res1['recipe_id']);
        $result2 = $userActual->listrecnum2($res1['recipe_id']);
        
        //print_r($res2);
        echo $result2 . "--";
        echo $result1 . "--";
        echo $result2 - $result1;
    }

    
    
    
?>
</body>
</html>