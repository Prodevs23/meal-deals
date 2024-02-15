<?php
    echo "Receptek";
    for ($i=0; $i < count($_POST['array']); $i++) { 
        echo $i . " - " . $_POST['array'][$i] . "\t\n";
    }
?>