$(document).ready(function () {
    var cateId = parseInt($('#cateId').val());
    $('#myCate li a').each(function(){
        $(this).css('color', '#555');
    });
    $('#myCate li a').eq(cateId - 1).css('color', '#4272d7');
});