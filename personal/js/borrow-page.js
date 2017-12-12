$(function () {
    // borrow-type-dropdown
    $('.selection.dropdown').dropdown();
    
    // borrow-type-dropdown & subject-dropdown default
    $('#borrow-type-dropdown').dropdown('set selected',['all']);
    $('#subject-dropdown').addClass('disabled');

    // get borrow-type-dropdown value to change subject-dropdown
    $('#borrow-type-dropdown').dropdown({
        onChange: function (val) {
            $('#subject-dropdown').dropdown('clear');
            $('#subject-dropdown').removeClass('disabled');
            if (val == 'all') {
                $('#subject-dropdown').addClass('disabled');
            } else if (val == 'math') {
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

});
