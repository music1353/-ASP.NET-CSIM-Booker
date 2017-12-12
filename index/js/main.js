$(function () {

    // 超連結點擊後的滾動動畫設定
    $('#navbar a').bind('click', function (e) {
        var anchor = $(this);
        var navHeight = 68;
        var animationTime = 1500;
        var timingFunction = 'easeInOutCubic';
        var target = anchor.attr('href');
        console.log(target);

        $('html, body').stop().animate({
            scrollTop: ($(target).offset().top - navHeight)
        }, animationTime, timingFunction);

        //取消預設會直接飛過去的方法
        e.preventDefault();
    });

    // show loginModal
    $('#loginButton').bind('click', function () {
        $('#loginModal').modal('show');
    });

    // show signInModal
    $('#signInButton').bind('click', function () {
        $('#signInModal').modal('show');
    });

    // rwd-navber dropdown
    $('.ui.dropdown.item').dropdown();

    // click loginButton-rwd show signInModal
    $('#loginButton-rwd').bind('click', function () {
        $('#loginModal').modal('show');
    });

    // wow.js
    new WOW().init();
});
