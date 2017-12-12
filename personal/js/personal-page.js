$(function () {
    
    // user dropdown
    $('.ui.dropdown.item').dropdown();

    // navbar item active
    $('.right.menu').on('click', '.item', function () {
        if (!$(this).hasClass('dropdown')) {
            $(this).addClass('active').siblings('.item').removeClass('active');
        }
    });
    
    // show and hide password
    var count = 0;
    $('#passwordIcon').bind('click', function(){
        if( count==0 ){
            $('#origin-password>input').attr("type", "text");
            $('#origin-password>.unhide.link.icon').attr("class", "hide link icon");
            count++;
        }
        else if( count==1 ){
            $('#origin-password>input').attr("type", "password");
            $('#origin-password>.hide.link.icon').attr("class", "unhide link icon");
            count--;
        }
    });

});
