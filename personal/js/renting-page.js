$(function () {
    // init coupled modal
    $('.coupled.modal').modal({
        allowMultiple: false
    });

    // rating init
    $('.ui.huge.star.rating').rating({
        initialRating: 3,
        maxRating: 5,
        onRate: function (value) {
            $('#starHidden').val(value);
        }
    });

    // click complete button show complete-modal
    $('.ui.complete.button').bind('click', function () {
        /// Material ID
        var bookID = $(this).parent().parent().parent().attr('id');
        console.log(bookID);

        $('.getbook.modal').modal('show');

        // open second modal on first modal buttons
        $('.feedback.modal').modal('attach events', '#firstModal-button');

        // if complete then ajax to revert-book-ajax
        $('#secondModal-button').bind('click', function () {

            var grade = $('#starHidden').val();
            var content = $('#completeCommentTextarea').val();

            // revert-book ajax
            $.ajax({
                url: "ajax/complete-book-ajax.aspx",
                type: "POST",
                data: {
                    'bookID': bookID,
                    'grade': grade,
                    'content': content,
                },
                success: function () {
                    // hide modal
                    $('.feedback.modal').modal('hide');

                    // alert
                    $.confirm({
                        useBootstrap: false,
                        title: '成功',
                        content: '確認收到書籍!',
                        buttons: {
                            OK: function () {
                                window.location.reload();
                            }
                        }
                    });

                }
            });
        });
    });

});