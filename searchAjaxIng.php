//
<?php 
  include("./user/connect.php");
  
   $name = $_POST['name'];
  
   $sql = "SELECT * FROM ingredients WHERE ingredient_name LIKE '$name%'";  
   $query = mysqli_query($conn,$sql);
   $data='';
   while($row = mysqli_fetch_assoc($query))
   {
       $data .=  "<tr><td>".$row['ingredient_name']."</td></tr>";
   }
    echo $data;
 ?>