
$("button").click(function () {
    
    console.log(($('button').index(this))-1);
    console.log(this.id);
    $ingredientId = this.id.substring(12);
    //console.log($ingredientList[$ingredientId]);
    

    console.log($(this).css('background-color'));
    $ingredientButton = $(this).css('background-color');
    console.log($ingredientId);

    if ($ingredientButton == 'rgb(255, 160, 122)' ) {
        //array[$("button").index(this)-1] = 1;
        $(this).css('background-color', 'green')
        $(this).css('color', 'white')
        console.log ("válts")
        console.log("ok")
        
    } else {
        if ($ingredientButton == 'rgb(0, 128, 0)' ) {
            //array[$("button").index(this)-1] = 1;
        $(this).css('background-color', 'rgb(255, 160, 122)')
        $(this).css('color', 'black')
        }
        else if ($ingredientButton == 'rgb(0, 130, 0)' ) {
            //array[$("button").index(this)-1] = 1;
        //$(this).css('background-color', 'rgb(255, 160, 122)')
        //$(this).css('color', 'black')
        console.log("ok")
        }
    } 
 
})



//adatok átvétele
/*
$.post('proba.php', function( data ){
    $.each(JSON.parse(data), function(index, obj) {
        var ready = '';
        if(obj['ready'] == 'true') {
            ready = 'checked';
        }
        var element = '<input type="checkbox" class="mr-2" '+ ready +'>';
        $('#list').append('<li class="list-group-item">'+element+ obj['task']+'</li>');
    });
});
*/
