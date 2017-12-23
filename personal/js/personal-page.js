$(function () {
    
    // user dropdown
    $('.ui.dropdown.item').dropdown();

    // navbar item active
    $('.right.menu').on('click', '.item', function () {
        if (!$(this).hasClass('dropdown')) {
            $(this).addClass('active').siblings('.item').removeClass('active');
        }
    });

    // ui form
    $('.ui.form').form({
        fields: {
            newName: {
                identifier: 'newName',
                rules: [{
                    type: 'empty',
                    prompt: '請輸入您的姓名'
                }]
            },
            newPassword: {
                identifier: 'newPassword',
                rules: [{
                    type: 'empty',
                    prompt: '請輸入您的密碼'
                }]
            },
            comfirmNewPassword: {
                identifier: 'comfirmNewPassword',
                rules: [{
                    type: 'empty',
                    prompt: '請再次確認您的密碼'
                }]
            },
            comfirmNewPassword: {
                identifier: 'comfirmNewPassword',
                rules: [{
                    type: 'match[newPassword]',
                    prompt: '您輸入的確認密碼不相同'
                }]
            }
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
