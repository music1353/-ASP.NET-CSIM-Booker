$(function () {

    // navbar dropdown
    $('.ui.dropdown.item').dropdown();

    // post-img-preview
    function format_float(num, pos) {
        var size = Math.pow(10, pos);
        return Math.round(num * size) / size;
    }

    function preview(input) {

        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('.preview').attr('src', e.target.result);
                var KB = format_float(e.total / 1024, 2);
                $('.size').text("檔案大小：" + KB + " KB");
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $("body").on("change", ".upl", function () {
        preview(this);
    });

    // post-type-dropdown
    $('.selection.dropdown').dropdown();

    // get post-type-dropdown value to change subject-dropdown
    $('#post-type-dropdown').dropdown({
        onChange: function (val) {
            $('#subject-dropdown').dropdown('clear');
            if (val == 'math') {
                $('#subject-dropdown>.menu').html(
                    '<div class="item" data-value="cal">微積分</div>' +
                    '<div class="item" data-value="fin-math">管理數學</div>'
                );
            } else if (val == 'lan') {
                $('#subject-dropdown>.menu').html(
                    '<div class="item" data-value="en">英文</div>' +
                    '<div class="item" data-value="ch">國文</div>'
                );
            } else if (val == 'program') {
                $('#subject-dropdown>.menu').html(
                    '<div class="item" data-value="java">JAVA程式設計</div>' +
                    '<div class="item" data-value="algorithms">演算法</div>'
                );
            } else if (val == 'management') {
                $('#subject-dropdown>.menu').html(
                    '<div class="item" data-value="management-book">管理學</div>'
                );
            }
        }
    });

    // check post-form
    $('.ui.form').form({
        fields: {
            bookImg: {
                identifier: 'file',
                rules: [{
                    type: 'empty',
                    prompt: '請選擇一張您的教材照片'
                }]
            },
            postType: {
                identifier: 'postType',
                rules: [{
                    type: 'empty',
                    prompt: '請選擇教材類型'
                }]
            },
            postSubject: {
                identifier: 'postSubject',
                rules: [{
                    type: 'empty',
                    prompt: '請選擇教材科目'
                }]
            },
            projectName: {
                identifier: 'projectName',
                rules: [{
                    type: 'empty',
                    prompt: '請輸入教材名稱'
                }]
            },
            changeDate: {
                identifier: 'changeDate',
                rules: [{
                    type: 'empty',
                    prompt: '請選擇交書日期'
                }]
            },
            changeTime: {
                identifier: 'changeTime',
                rules: [{
                    type: 'empty',
                    prompt: '請選擇交書時間'
                }]
            },
            changeSite: {
                identifier: 'changeSite',
                rules: [{
                    type: 'empty',
                    prompt: '請選擇交書地點'
                }]
            },
        }
    });

    // confirm Post
    $('#postConfirmBtn').bind('click', function (e) {
        if ($('.ui.form').form('is valid')) {
            e.preventDefault();
            $('.mini.modal').modal('show');
        }
    });

});
