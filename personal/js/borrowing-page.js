$(function () {
    // init coupled modal
    $('.coupled.modal').modal({
        allowMultiple: false
    });

    // open second modal on first modal buttons
    $('.feedback.modal').modal('attach events', '#firstModal-button');

    // click return button show return-modal(first)
    $('.ui.return.button').bind('click', function () {
        $('.return.modal').modal('show');
    });

    // rating init

    $('.ui.huge.star.rating').rating({
        initialRating: 3,
        maxRating: 5
    });

});
