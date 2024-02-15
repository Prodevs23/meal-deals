//const { Button } = require("bootstrap");


$('button').on('click', function () {
     
    console.log( $(this).attr('id') );
    console.log(($('button').index(this)));
    
    console.log($(this).css('background-color'));
    if ($(this).css('background-color') == 'rgb(13, 110, 253)' ) {
        array[$('button').index(this)] = 1;
        $(this).css('background-color', 'green');
    } else {
        array[$('button').index(this)] = 0;
        $(this).css('background-color', 'rgb(13, 110, 253)');
    }

    console.log(array[$('button').index(this)]);

    if ($(this).attr('id') == 'searchButton') {
        console.log("okéééé");
  
        $.ajax({
            url: 'action.php',
            type: 'post',
            data: { "array": array},
            success: function(response) { console.log(response); }
        });
    }
});
