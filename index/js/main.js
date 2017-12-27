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

    // rwd-navber dropdown
    $('.ui.dropdown.item').dropdown();

    // click loginButton-rwd show signInModal
    $('#loginButton-rwd').bind('click', function () {
        $('#loginModal').modal('show');
    });

    // wow.js
    new WOW().init();

    // ui.form
    $('.ui.form').form({
        fields: {
            loginAccount: {
                identifier: 'loginAccount',
                rules: [{
                    type: 'empty',
                    prompt: '請輸入您的學號'
                }]
            },
            loginPassword: {
                identifier: 'loginPassword',
                rules: [{
                    type: 'empty',
                    prompt: '請輸入您的密碼'
                }]
            }
        }
    });

});
