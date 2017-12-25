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

    // click return button show return-modal
    $('.ui.return.button').bind('click', function () {
        /// Material ID
        var bookID = $(this).parent().parent().parent().attr('id');

        $('.return.modal').modal('show');

        // open second modal on first modal buttons
        $('.feedback.modal').modal('attach events', '#firstModal-button');

        // if complete then ajax to revert-book-ajax
        $('#secondModal-button').bind('click', function () {

            var grade = $('#starHidden').val();
            var content = $('#revertCommentTextarea').val();

            // revert-book ajax
            $.ajax({
                url: "ajax/revert-book-ajax.aspx",
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
                        content: '歸還書籍成功!',
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
