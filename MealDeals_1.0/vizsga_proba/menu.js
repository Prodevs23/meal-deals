var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
    coll[i].addEventListener("click", function () {
        this.classList.toggle("active");
        var content = this.nextElementSibling;
        if (content.style.display === "block") {
            content.style.display = "none";
        } else {
            content.style.display = "block";
        }
    });
}

var rec_ing = [
    { "pic_id": 1, "recept_id": 1},
    { "pic_id": 1, "recept_id": 2},
    { "pic_id": 1, "recept_id": 3},
    { "pic_id": 1, "recept_id": 5},
    { "pic_id": 1, "recept_id": 6},
    { "pic_id": 1, "recept_id": 8},
    { "pic_id": 1, "recept_id": 9},
    { "pic_id": 1, "recept_id": 11},
    { "pic_id": 1, "recept_id": 14},
    { "pic_id": 1, "recept_id": 17},
    { "pic_id": 1, "recept_id": 19},
    { "pic_id": 1, "recept_id": 21},
    { "pic_id": 1, "recept_id": 29},
    { "pic_id": 1, "recept_id": 31},
    { "pic_id": 2, "recept_id": 1},
    { "pic_id": 2, "recept_id": 11},
    { "pic_id": 2, "recept_id": 21},
    { "pic_id": 2, "recept_id": 23},
    { "pic_id": 2, "recept_id": 28},
    { "pic_id": 2, "recept_id": 31},
    { "pic_id": 2, "recept_id": 33},
    { "pic_id": 2, "recept_id": 35},
    { "pic_id": 2, "recept_id": 38},
    { "pic_id": 2, "recept_id": 39},
    { "pic_id": 3, "recept_id": 1},
    { "pic_id": 3, "recept_id": 8},
    { "pic_id": 3, "recept_id": 9},
    { "pic_id": 3, "recept_id": 10},
    { "pic_id": 3, "recept_id": 11},
    { "pic_id": 3, "recept_id": 21},
    { "pic_id": 3, "recept_id": 31},
    { "pic_id": 3, "recept_id": 32},
    { "pic_id": 3, "recept_id": 33},
    { "pic_id": 3, "recept_id": 34},
    { "pic_id": 3, "recept_id": 38},
    { "pic_id": 4, "recept_id": 4},
    { "pic_id": 4, "recept_id": 5},
    { "pic_id": 4, "recept_id": 6},
    { "pic_id": 4, "recept_id": 12},
    { "pic_id": 4, "recept_id": 17},
    { "pic_id": 4, "recept_id": 19},
    { "pic_id": 4, "recept_id": 20},
    { "pic_id": 5, "recept_id": 1},
    { "pic_id": 5, "recept_id": 2},
    { "pic_id": 5, "recept_id": 4},
    { "pic_id": 5, "recept_id": 5},
    { "pic_id": 5, "recept_id": 9},
    { "pic_id": 6, "recept_id": 10},
    { "pic_id": 6, "recept_id": 11},
    { "pic_id": 6, "recept_id": 21},
    { "pic_id": 6, "recept_id": 1},
    { "pic_id": 6, "recept_id": 21},
    { "pic_id": 6, "recept_id": 14},
    { "pic_id": 6, "recept_id": 35},
    { "pic_id": 6, "recept_id": 39},
    { "pic_id": 7, "recept_id": 10},
    { "pic_id": 7, "recept_id": 11},
    { "pic_id": 7, "recept_id": 21},
    { "pic_id": 7, "recept_id": 31},
    { "pic_id": 7, "recept_id": 32},
    { "pic_id": 8, "recept_id": 14},
    { "pic_id": 8, "recept_id": 25},
    { "pic_id": 8, "recept_id": 29},
    { "pic_id": 8, "recept_id": 30},
    { "pic_id": 8, "recept_id": 31},
    { "pic_id": 8, "recept_id": 32},
    
]

console.log(pic.length);

var tomb = new Array(pic.length);
for (i = 1; i <= pic.length; i++) {
    tomb[i] = 0;
    console.log(tomb[i]);
}

function myFunction(my) {

    let text = document.querySelector("#picc").textContent;

    const p = document.createElement("p");

    tomb[my] = 1 - tomb[my];

    if (tomb[my] == 1) {
        document.getElementsByTagName('button')[my+2].style.background='red';
    }
    else document.getElementsByTagName('button')[my+2].style.background='';

    console.log(my + " : " + tomb[my]);

    const img = new Image(50, 50);
    
    console.log(pic['id']);
}

function result() {
    var res = 0;
    for (let i = 0; i <= pic.length; i++) {
        if (tomb[i] == 1) res++;
    }

    var rest = [];
    for (let i = 0; i < 10; i++) {
        rest[i] = [];
        for (let j = 0; j < 40; j++) {
            rest[i][j] = 0;
        }
    }

    for (let i = 0; i < rec_ing.length; i++) {
        if (tomb[i] == 1) {
            console.log(i);
            for (let j = 0; j < rec_ing.length; j++) {
                if (rec_ing[j].pic_id == i) {
                    console.log(rec_ing[j].recept_id);
                    rest[i][rec_ing[j].recept_id] = 1;
                }
            }
    
        }
    }
    for (let i = 0; i < 10; i++) {
        for (let j = 0; j < 40; j++) {
            if (rest[i][j] ==1 & rest[3][j] == 1) {
                console.log(i + "-" + j);
            }
            
        }
    
    }
    console.log("1" & "0");
}

function Empty2DArray(rows, cols) { 
    const array = []; 
    for (let i = 0; i < rows; i++) { 
        array[i] = []; 
        for (let j = 0; j < cols; j++) { 
            array[i][j] = null; 
        } 
    } 
    return array; 
} 
  
//const arr1 = Empty2DArray(3, 4); 
//console.log(arr1);