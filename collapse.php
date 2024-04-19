<?php
    
    include_once ("connect.php");
    
    
    
?>

<script>
  
  //window.myFunction = myFunction;

  
</script>



<div class="container">   
<h3 style="padding: 30px;">Alapanyagok kiválasztása</h3>




<p class="d-inline-flex gap-1">
    <?php

      

        $ingredientList[] = 0;
        
        $sqlSelectIngredients = "SELECT * FROM ingredients";
        $resultIngredients = mysqli_query($conn,$sqlSelectIngredients);

        $ingredientClick[] = 0;
        $_SESSION['ingredient_click'] = $ingredientClick;
        $ingredientsNumber = mysqli_num_rows($resultIngredients);
        for ($i=1; $i <= $ingredientsNumber; $i++) { 
          $ingredientClick[$i] = 0;
        }
        
        $ingredient_count = 0;
        $ingredients = array();
        while($data = mysqli_fetch_array($resultIngredients)){
          $ingredient_count++;
          $ingredientList[] = 0;
          $ingredients[$data['category_id']][$ingredient_count] = $data['ingredient_name'];
          //$ingredients[(int)$data['category_id']][$ingredient_count] = $data['ingredient_name'];
          
      }




        $sqlSelectCategories = "SELECT * FROM categories";
        
        $result = mysqli_query($conn,$sqlSelectCategories);
        
        $category_count = 0;
        
        while($data = mysqli_fetch_array($result)){
            $category_count++;
            ?>
            <tr>
                <td><?php
                 echo '<a class="btn btn-info" data-bs-toggle="collapse" href="#multiCollapseExample' . (string) $category_count . '" role="button" aria-expanded="false" aria-controls="multiCollapseExample">' .
                       $data['category_name'] . '</a>'; 
                       

                 ?></td>
                 
            </tr>

            <?php
        }
    ?>

  <button onclick="myfunction()" type="button" id="recipeSearchButton" style="background-color:rgb(0, 130, 0);color:white;border-radius:10px;">Keresés</button>
  
</p>

<?php

  for ($i=1; $i <= $category_count; $i++) { 
    echo '
    <div class="row">
      <div class="col-3">
        <div class="collapse multi-collapse" id="multiCollapseExample' . (string) $i . '">' . 
     '    <div class="">';
            listIngredients($ingredients[$i]); echo '
          </div>
        </div>
      </div>
      </div>
    ';
  }
  
function listIngredients($list){ 
  foreach ($list as $key => $value) { 
    echo '<button onclick="cliked(this)" class="btn border choose" style="background-color:#FFA07A;" id="chooseButton' . (string) $key . '" style="width:150px;margin-top:20px;">' . $list[$key] . '</button>';
    
  }
}

//echo json_encode($ingredientList);
//echo $ingredientsNumber;
//echo $ingredientList[1];

//echo $_SESSION['chooseIngredients'][2];
//echo "session_arr : " . $_SESSION['arr'];
//$choosed = $_SESSION['arr'];
?>

</div>

<script type="text/javascript">
  

  const mehetGomb = document.getElementById('recipeSearchButton');
 
mehetGomb.addEventListener('click', event => {
  
	console.log('kattintás volt');
  console.log(<?php echo"$choosed"?>);
  
});

var c = "";
var data = <?php echo json_encode($_SESSION['chooseIngredients']); ?>;
function cliked(btn){
       

  console.log("clickedddd");
  
  var ingredientId = btn.id.substring(12);
  //if ($myarray[$ingredientId] == 0) myarray[$ingredientId] = 1
  //  else $myarray[$ingredientId] = 0;
  //console.log($_SESSION['chooseIngredients'][$ingredientId]);
  //console.log('ing_id : '+ $ingredientId);



 //window.location.href='../nem.php';
}

function myfunction() {
  console.log('myfunction');
  <?php echo "window.location.href='listRecipe.php'"; ?>
  }
</script>
