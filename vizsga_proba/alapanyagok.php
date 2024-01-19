<header class="fejlec">
    <?php include_once "header.php"; ?>
</header>

<?php
  include_once "menu.php";
?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alapanyagok</title>
    <link rel="stylesheet" href="menu.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://www.jsviews.com/download/jsrender.min.js"></script>
    <link href="https://www.jsviews.com/samples/samples.css" rel="stylesheet" />
</head>


    <button type="button" class="collapsible">Open Ingredients</button>
    <div class="content">

        <div id="result"></div>

        <script id="theTmpl" type="text/x-jsrender">
            <div class="picc">
                <button class="picc_k" id="picc" onclick="myFunction({{:id}})">{{:name}}</button>
                <br>
                <img src="{{:url}}" alt="kép" with="50px" height="50px">
            
            </div>
        
        </script>
        <script>
        let pic = [
        {
            "id": 1,
            "url": "./pic/DALL·E 2023-09-11 04.03.14 - create food picture.png",
            "name": "hagyma"
        },
        {
            "id": 2,
            "url": "./pic/DALL·E 2023-09-11 04.03.50 - create food picture.png",
            "name": "hús"
        },
        {
            "id": 3,
            "url": "./pic/DALL·E 2023-09-11 04.05.00 - create food picture.png",
            "name": "káposzta"
        },
        {
            "id": 4,
            "url": "./pic/DALL·E 2023-09-11 04.07.17 - create all vegetables one picture.png",
            "name": "paradicsom"
        },
        {
            "id": 5,
            "url": "./pic/DALL·E 2023-09-11 04.08.31 - create all vegetables one picture in dali style.png",
            "name": "paprika"
        },
        {
            "id": 6,
            "url": "./pic/DALL·E 2023-09-11 04.08.46 - create all vegetables one picture in dali style.png",
            "name": "sárgarépa"
        },
        {
            "id": 7,
            "url": "./pic/DALL·E 2023-09-11 04.09.11 - create all vegetables one picture in dali style.png/DALL·E 2023-09-11 04.08.46 - create all vegetables one picture in dali style.png",
            "name": "karfiol"
        },
        {
            "id": 8,
            "url": "./pic/DALL·E 2023-09-11 04.12.24 - create all vegetables and fruits one picture in dali style.png",
            "name": "uborka"
        }
        ];
  
            var template = $.templates("#theTmpl");
  
            var htmlOutput = template.render(pic);
  
            $("#result").html(htmlOutput);

        
        </script>

        <div id="pici"></div>

        <button id="searchButton" onclick="result()">Search</button>

    </div>

    <script src="menu.js"></script>