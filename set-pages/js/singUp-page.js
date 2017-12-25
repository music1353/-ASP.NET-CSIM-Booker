$(function () {
    // wow init
    new WOW().init();

    // select-gender-dropdown
    $('#select-gender-dropdown').dropdown({
        onChange: function (val) {
            if (val == 'male') {
                $('#choose-img-fields').html(
                    '<div class="four wide field wow rubberBand">' +
                        '<input class="chooseAvatar" type="radio" id="cb1" name="chooseImg" value="boy-1">' +
                        '<label for="cb1"><img src="images/avatar-img/boy-1.png"></label>' +
                    '</div>' +
                    '<div class="four wide field wow rubberBand">' +
                        '<input class="chooseAvatar" type="radio" id="cb2" name="chooseImg" value="boy-2">' +
                        '<label for="cb2"><img src="images/avatar-img/boy-2.png"></label>' +
                    '</div>' +
                    '<div class="four wide field wow rubberBand">' +
                        '<input class="chooseAvatar" type="radio" id="cb3" name="chooseImg" value="boy-3">' +
                        '<label for="cb3"><img src="images/avatar-img/boy-3.png"></label>' +
                    '</div>' +
                    '<div class="four wide field wow rubberBand">' +
                        '<input class="chooseAvatar" type="radio" id="cb4" name="chooseImg" value="boy-4">' +
                        '<label for="cb4"><img src="images/avatar-img/boy-4.png"></label>' +
                    '</div>'
                );
            } else if (val == 'female') {
                $('#choose-img-fields').html(
                    '<div class="four wide field wow rubberBand">' +
                        '<input class="chooseAvatar" type="radio" id="cb1" name="chooseImg" value="girl-1">' +
                        '<label for="cb1"><img src="images/avatar-img/girl-1.png"></label>' +
                    '</div>' +
                    '<div class="four wide field wow rubberBand">' +
                        '<input class="chooseAvatar" type="radio" id="cb2" name="chooseImg" value="girl-2">' +
                        '<label for="cb2"><img src="images/avatar-img/girl-2.png"></label>' +
                    '</div>' +
                    '<div class="four wide field wow rubberBand">' +
                        '<input class="chooseAvatar" type="radio" id="cb3" name="chooseImg" value="girl-3">' +
                        '<label for="cb3"><img src="images/avatar-img/girl-3.png"></label>' +
                    '</div>' +
                    '<div class="four wide field wow rubberBand">' +
                        '<input class="chooseAvatar" type="radio" id="cb4" name="chooseImg" value="girl-4">' +
                        '<label for="cb4"><img src="images/avatar-img/girl-4.png"></label>' +
                    '</div>'
                );
            }

            // (hidden input) avatar value
            $('input.chooseAvatar').bind('click', function () {
                var img = $(this).val();
                $('#hiddenAvatar').val(img);
                console.log($('#hiddenAvatar').val());
            });
        }
    });


    // ui.form
    $('.ui.form').form({
        fields: {
            name: {
                identifier: 'name',
                rules: [{
                    type: 'empty',
                    prompt: '請輸入您的名字'
                }]
            },
            gender: {
                identifier: 'gender',
                rules: [{
                    type: 'empty',
                    prompt: '請選擇您的性別'
                }]
            },
            account: {
                identifier: 'account',
                rules: [{
                    type: 'empty',
                    prompt: '請輸入您的學號'
                }]
            },
            account: {
                identifier: 'account',
                rules: [{
                    type: 'regExp',
                    value: /\d{2}15\d{4}/,
                    prompt: '請輸入正確的資管學號'
                }]
            },
            password: {
                identifier: 'password',
                rules: [{
                    type: 'empty',
                    prompt: '請輸入您的密碼'
                }]
            },
            confirmPassword: {
                identifier: 'confirmPassword',
                rules: [{
                    type: 'empty',
                    prompt: '請再次確認您的密碼'
                }]
            },
            confirmPassword: {
                identifier: 'confirmPassword',
                rules: [{
                    type: 'match[password]',
                    prompt: '您輸入的確認密碼不相同'
                }]
            }
        }
    });

    // show and hide password
    var count1 = 0;
    $('#passwordIcon').bind('click', function () {
        if (count1 == 0) {
            $('#origin-password>input').attr("type", "text");
            $('#origin-password>.unhide.link.icon').attr("class", "hide link icon");
            count1++;
        } else if (count1 == 1) {
            $('#origin-password>input').attr("type", "password");
            $('#origin-password>.hide.link.icon').attr("class", "unhide link icon");
            count1--;
        }
    });

    var count2 = 0;
    $('#confirmPasswordIcon').bind('click', function () {
        if (count2 == 0) {
            $('#origin-confirmPassword>input').attr("type", "text");
            $('#origin-confirmPassword>.unhide.link.icon').attr("class", "hide link icon");
            count2++;
        } else if (count2 == 1) {
            $('#origin-confirmPassword>input').attr("type", "password");
            $('#origin-confirmPassword>.hide.link.icon').attr("class", "unhide link icon");
            count2--;
        }
    });


});
