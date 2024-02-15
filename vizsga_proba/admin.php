<?php
    session_start();
?>

    <!DOCTYPE html>
    <html lang="hu">
    <head>
        <meta charset="utf-8">
        <title>User Registraion using PHP OOPs Concept</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        
        <!--
        <link href="assests/style.css" rel="stylesheet">
        <script src="assests/jquery-1.11.1.min.js"></script>
        <script src="assests/bootstrap.min.js"></script>
    -->
    </head>
    <body style="margin: 50px;">
<?php
    // include Function  file
    include_once('function.php');
    // Object creation
    $admincredentials=new DB_con();
    
    // Posted Values

    //Function Calling
    $ret=$admincredentials->renderer();

    $num=mysqli_fetch_array($ret);

    echo "Hello " . $_SESSION['username'];

    echo "<table class='table'> <tr> <th> Lastname </th>" . 
                      "<th> Middlename </th>" .
                      "<th> Firstname </th>" .
                      "<th> Username </th>" .
                      "<th> Email </th>" . 
                      "<th> Phone </th>" . 
                      "<th> Address </th>" . 
                      //"<th> Password </th>" . 
                 "</tr>";

    while($row = $ret->fetch_assoc()) {
        echo "<tr> <td>" . $row["lastname"] . "</td>" . 
                  "<td>" . $row["middlename"] . "</td>" . 
                  "<td>" . $row["firstname"] . "</td>" . 
                  "<td>" . $row["username"] . "</td>" .
                  "<td>" . $row["email"] . "</td>" .
                  "<td>" . $row["phone"] . "</td>" .
                  "<td>" . $row["address"] . "</td>" .
                  "<td> <button type='button' class='btn btn-primary'> Update </button> </td>" . 
                  "<td> <button type='button' class='btn btn-danger'> Delete </button></td>" . 
                  //"<td>" . $row["pass"] . "</td>" .
             "</tr>";
        
    }

    echo "</table> 
          </body>";
?>