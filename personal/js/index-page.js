$(function () {
    // click borrow button show borrow-modal
    $('.ui.borrow.button').bind('click', function () {
        // Material ID
        var bookID = $(this).parent().parent().parent().attr('id');
        console.log(bookID);

        $('.borrow.modal').modal('show');

        // 確認借閱完成
        $('#borrowModal-button').bind('click', function () {
            console.log('借閱完成');

            // borrow-book-ajax
            $.ajax({
                url: "pages/ajax/borrow-book-ajax.aspx",
                type: "POST",
                data: {
                    'bookID': bookID,
                },
                success: function () {
                    // alert
                    $.confirm({
                        useBootstrap: false,
                        title: '成功',
                        content: '借閱書籍成功!',
                        buttons: {
                            OK: function () {
                                window.location.reload();
                            }
                        }
                    });

                    // hide modal
                    $('.borrow.modal').modal('hide');

                }
            });
        });
    });
});