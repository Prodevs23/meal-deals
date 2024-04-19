//
<?php 
  include("./user/connect.php");
  
   $name = $_POST['name'];
  
   $sql = "SELECT * FROM recipes WHERE recipe_name LIKE '$name%'";  
   $query = mysqli_query($conn,$sql);
   $data='';
   while($row = mysqli_fetch_assoc($query))
   {
       $data .=  "<tr><td>".$row['recipe_name']."</td></tr>";
   }
    echo $data;
 ?>