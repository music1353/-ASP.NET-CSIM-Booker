$(function () {
    // user dropdown
    $('.ui.dropdown.item').dropdown();

    // navbar item active
    $('.right.menu').on('click', '.item', function () {
        if (!$(this).hasClass('dropdown')) {
            $(this).addClass('active').siblings('.item').removeClass('active');
        }
    });

});
