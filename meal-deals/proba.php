<?php
 //adat átvétel
//$tasks = $_POST['tasks'];
 
//$jsonFormTaks = json_encode($tasks, JSON_PRETTY_PRINT);
//file_put_contents('tasks.json', $jsonFormTaks);
//echo ("okokokok");
?>


<?php
 
 //adat átadás
//$tasks = file_get_contents("tasks.json");
//echo $tasks;

?>
<?php

$a = array("alma", "körte", "barack", "szilva");
echo json_encode($a);

?>