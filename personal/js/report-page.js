$(function () {
    // report-reason-dropdown
    $('#report-reason-dropdown').dropdown();
    
    // check report-form
    $('.ui.form').form({
        fields: {
            reportID: {
                identifier: 'reportID',
                rules: [{
                    type: 'empty',
                    prompt: '請填寫被檢舉人的學號'
                }]
            },
            changeReason: {
                identifier: 'changeReason',
                rules: [{
                    type: 'empty',
                    prompt: '請選擇一項檢舉事由'
                }]
            }
        }
    });
});