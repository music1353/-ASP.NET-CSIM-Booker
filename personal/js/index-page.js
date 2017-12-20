$(function(){
    // click borrow button show borrow-modal(first)
    $('.ui.borrow.button').bind('click', function () {
        // 書籍主人的學號
        var bookID = $(this).parent().parent().parent().attr('id');
    });
});