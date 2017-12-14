$(function(){
    // click borrow button show borrow-modal(first)
    $('.ui.borrow.button').bind('click', function () {
        // 判斷是哪個按鈕
        // $(this).attr('id');
        console.log($(this));
        $('.borrow.modal').modal('show');
    });
});