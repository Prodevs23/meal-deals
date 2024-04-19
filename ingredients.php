<!DOCTYPE html>
<html lang="hu">
<head>
  <title>Alapanyagok keresése</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
</head>
<body>
<header class="fejlec">

<?php include_once "header.php"; ?>

</header>
<?php
include('./user/connect.php');

include_once "menu.php";

include_once('function.php');
?>
<div class="container mt-4">
    <p><h2>Alapanyagok keresése</h2></p>
    
    <h6 class=""><b>Add meg a kezdést</b></h6>
    <div class="container input-group mb-4">
         <div class="form-outline mt-3">
            <input type="text" id="getName"/>
        </div>
    </div>           
    <table class="container table table-striped">
        <thead>
          <tr>
            
            <th>Alapanyag neve</th>
            
          </tr>
        </thead>
        <tbody style="text-align:center;" id="showdata">
          <?php  
                $sql = "SELECT * FROM ingredients";
                $query = mysqli_query($conn,$sql);
                while($row = mysqli_fetch_assoc($query))
                {
                  echo"<tr>";
                   
                   echo"<td><h6>".$row['ingredient_name']."</h6></td>";
                   
                  echo"</tr>";   
                }
            ?>
        </tbody>
    </table>
    
</div>
<script>
  $(document).ready(function(){
   $('#getName').on("keyup", function(){
     var getName = $(this).val();
     $.ajax({
       method:'POST',
       url:'searchajaxIng.php',
       data:{name:getName},
       success:function(response)
       {
            $("#showdata").html(response);
       } 
     });
   });
  });
</script>
</body>
</html>