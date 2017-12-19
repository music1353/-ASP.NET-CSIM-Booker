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
                    url: "ajax/borrow-ajax.aspx",
                    type: "POST",
                    data: {
                        "bookType": "all",
                    },
                    success: function (data) {
                        // 清除原本templates
                        $(".borrow-cards>.ui.grid").empty();

                        // 模板進html
                        var myarray = $.parseJSON(data);
                        $.each(myarray, function (i, item) {
                            var card_template = '<div class="column">' +
                                '<div class="ui card" id="' + item.ID + '">' +
                                '<div class="content">' +
                                '<img class="ui avatar image" src="../' + item.Avatar + '"> ' + item.Name +
                                '</div>' +
                                '<div class="image">' +
                                '<img src="../' + item.BookImage + '">' +
                                '</div>' +
                                '<div class="content">' +
                                '<div class="right floated meta">' +
                                item.Star + '<i class="yellow star icon"></i>' +
                                '</div>' +
                                '<div class="header">' + item.BookName + '</div>' +
                                '<div class="description">' +
                                item.BookDescription +
                                '</div>' +
                                '</div>' +
                                '<div class="extra content">' +
                                '<div class="left floated meta">' +
                                '<div class="ui icon button" data-tooltip="' + item.ChangeSite + '" data-inverted="">' +
                                '<i class="marker icon"></i>' +
                                '</div>' +
                                '</div>' +
                                '<div class="left floated meta" style="margin-left: 10px;">' +
                                '<div class="ui icon button" data-tooltip="' + item.ChangeTime + '" data-inverted="">' +
                                '<i class="wait icon"></i>' +
                                '</div>' +
                                '</div>' +
                                '<div class="right floated meta" style="margin-left: 10px;">' +
                                '<button class="ui green borrow button">借閱</button>' +
                                '</div>' +
                                '</div>' +
                                '</div>' +
                                '</div>';

                            $(".borrow-cards>.ui.grid").append(card_template);
                        });
                        console.log(data);

                        // click borrow button show borrow-modal(first)
                        $('.ui.borrow.button').bind('click', function () {
                            // 書籍主人的學號
                            var bookID = $(this).parent().parent().parent().attr('id');
                            console.log(bookID);

                            $('.borrow.modal').modal('show');

                            // 確認借閱完成
                            $('#borrowModal-button').bind('click', function () {
                                console.log('借閱完成');
                                $('.borrow-complete.modal').modal({
                                    onHide: function () {
                                        // 重新整理網頁
                                        location.reload();
                                    },
                                }).modal('show');
                            });
                        });
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

            // ajax to ASP.NET
            $.ajax({
                url: "ajax/borrow-ajax.aspx",
                type: "POST",
                data: {
                    'bookSubject': val,
                },
                success: function (data) {
                    // 清空原本的template
                    $(".borrow-cards>.ui.grid").empty();

                    // 模板進html
                    var myarray = $.parseJSON(data);
                    $.each(myarray, function (i, item) {
                        var card_template = '<div class="column">' +
                            '<div class="ui card" id="' + item.ID + '">' +
                            '<div class="content">' +
                            '<img class="ui avatar image" src="../' + item.Avatar + '"> ' + item.Name +
                            '</div>' +
                            '<div class="image">' +
                            '<img src="../' + item.BookImage + '">' +
                            '</div>' +
                            '<div class="content">' +
                            '<div class="right floated meta">' +
                            item.Star + '<i class="yellow star icon"></i>' +
                            '</div>' +
                            '<div class="header">' + item.BookName + '</div>' +
                            '<div class="description">' +
                            item.BookDescription +
                            '</div>' +
                            '</div>' +
                            '<div class="extra content">' +
                            '<div class="left floated meta">' +
                            '<div class="ui icon button" data-tooltip="' + item.ChangeSite + '" data-inverted="">' +
                            '<i class="marker icon"></i>' +
                            '</div>' +
                            '</div>' +
                            '<div class="left floated meta" style="margin-left: 10px;">' +
                            '<div class="ui icon button" data-tooltip="' + item.ChangeTime + '" data-inverted="">' +
                            '<i class="wait icon"></i>' +
                            '</div>' +
                            '</div>' +
                            '<div class="right floated meta" style="margin-left: 10px;">' +
                            '<button class="ui green borrow button">借閱</button>' +
                            '</div>' +
                            '</div>' +
                            '</div>' +
                            '</div>';

                        $(".borrow-cards>.ui.grid").append(card_template);
                    });
                },
            });
        }
    });

    // click borrow button show borrow-modal(first)
    $('.ui.borrow.button').bind('click', function () {
        // 書籍主人的學號
        var bookID = $(this).parent().parent().parent().attr('id');
        console.log(bookID);

        $('.borrow.modal').modal('show');

        // 確認借閱完成
        $('#borrowModal-button').bind('click', function () {
            console.log('借閱完成');
            $('.borrow-complete.modal').modal({
                onHide: function () {
                    // 重新整理網頁
                    location.reload();
                },
            }).modal('show');
        });
    });

});
