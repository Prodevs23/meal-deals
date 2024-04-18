<?php
session_start();
?>

<header class="fejlec" style="text-align: center;">

    <?php 
        //include_once "../header.php"; 
        include_once "../menu.php";
    ?>


</header>


<div class="container">
    
    <div id="nem">
    <?php
        //echo $_SESSION['ingredient_click'][2];
        //$pro = $_POST['proba'][1];
        //echo "proba: ".$pro;
        //$arrayIngredients = array(3);
        //$arraytojson = json_encode($ingredients);
    ?>
    </div>

    <div class="picture">
        <img src="/pic/makosteszta.jpg" alt="">
    </div>





</div>
<script>
    var array = <?php echo $arraytojson ?>
</script>
<script type="text/javascript" src="app.js"></script>
<script src=
"https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js">
    </script>