$(function(){
    $('.ui.red.button').bind('click', function () {

        var array = new Array;
        $('input[name^="del"]').each(function () {
            // console.log($(this).val());
            array.push($(this).val());
        })

        $.ajax({
            url: "ajax/del-message-ajax.aspx",
            type: "POST",
            data: {
                "idArray": array,
            },
            traditional: true,
            success: function () {
                window.location.reload();
            }
        });

        console.log(array);
    });
});