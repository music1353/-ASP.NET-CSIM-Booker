$(function () {
    // borrow-type-dropdown
    $('.selection.dropdown').dropdown();

    // borrow-type-dropdown & subject-dropdown default
    $('#borrow-type-dropdown').dropdown('set selected', ['all']);
    $('#subject-dropdown').addClass('disabled');

    // get borrow-type-dropdown value to change subject-dropdown
    $('#borrow-type-dropdown').dropdown({
        onChange: function (val) {

            $('#subject-dropdown').dropdown('clear');
            $('#subject-dropdown').removeClass('disabled');

            if (val == 'all') {
                $('#subject-dropdown').addClass('disabled');

                $.ajax({
                    url: ".aspx",
                    type: "POST",
                    data: {
                        'val': 'all',
                    },
                    success: function (data) {
                        // 模板進html
                    },
                });

            } else if (val == 'math') {
                $('#subject-dropdown>.menu').html(
                    '<div class="item" data-value="cal">微積分</div>' +
                    '<div class="item" data-value="fin-math">管理數學</div>' +
                    '<div class="item" data-value="fin-management">財務管理</div>' +
                    '<div class="item" data-value="dis-math">離散數學</div>' +
                    '<div class="item" data-value="statistic">統計學</div>'
                );
            } else if (val == 'lan') {
                $('#subject-dropdown>.menu').html(
                    '<div class="item" data-value="en">英文</div>' +
                    '<div class="item" data-value="ch">國文</div>' +
                    '<div class="item" data-value="jp">日文</div>'
                );
            } else if (val == 'program') {
                $('#subject-dropdown>.menu').html(
                    '<div class="item" data-value="java">JAVA程式設計</div>' +
                    '<div class="item" data-value="data-str">資料結構</div>' +
                    '<div class="item" data-value="algorithms">演算法</div>' +
                    '<div class="item" data-value="app">行動平台程式設計</div>' +
                    '<div class="item" data-value="html">網際網路程式設計</div>'

                );
            } else if (val == 'management') {
                $('#subject-dropdown>.menu').html(
                    '<div class="item" data-value="management">管理學</div>' +
                    '<div class="item" data-value="management-sys">管理資訊系統</div>' +
                    '<div class="item" data-value="database-management">資料庫管理</div>' +
                    '<div class="item" data-value="marketing">行銷學</div>'
                );
            } else if (val == 'others') {
                $('#subject-dropdown>.menu').html(
                    '<div class="item" data-value="accounting">會計學</div>' +
                    '<div class="item" data-value="computer-intro">計算機概論</div>' +
                    '<div class="item" data-value="cor-info">企業資料通訊</div>'
                );
            }
        }
    });

    // query-ajax
    $('#subject-dropdown').dropdown({
        onChange: function (val) {
            
            // 清空原本的template
            // 
            
            // ajax to ASP.NET
            $.ajax({
                url: ".aspx",
                type: "POST",
                data: {
                    'val': val,
                },
                success: function (data) {
                    // 模板進html
                },
            });

        }
    });

    // click borrow button show borrow-modal(first)
    $('.ui.borrow.button').bind('click', function () {
        // 判斷是哪個按鈕
        // $(this).attr('id');
        console.log($(this));
        $('.borrow.modal').modal('show');
        
        // 確認借閱完成
        $('#borrowModal-button').bind('click', function(){
            console.log('借閱完成');
            $('.borrow-complete.modal').modal('show');
            
            // 重新整理網頁
        });
        
    });

});
