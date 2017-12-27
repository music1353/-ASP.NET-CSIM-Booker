$(function () {

    // del button
    $('.ui.red.del.button').bind('click', function () {
        var id = $(this).parent().parent().parent().attr('id');
        console.log('click');
        console.log(id);

        // ajax to del-ajax
        $.ajax({
            url: "../ajax/del-ajax.aspx",
            tpye: "POST",
            data: {
                "id": id,
            },
            success: function (data) {
                console.log(data);
                console.log('ajax success');
                window.location.reload();
            }
        });
    });

});