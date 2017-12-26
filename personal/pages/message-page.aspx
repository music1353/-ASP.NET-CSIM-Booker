<%@ Page Language="C#" AutoEventWireup="true" CodeFile="message-page.aspx.cs" Inherits="personal_pages_message_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <title>CSIM Booker通知訊息</title>
    <link rel="shortcut icon" href="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="../css/ellipsis.css" />
    <link rel="stylesheet" href="../css/animate.css">
    <link rel="stylesheet" href="../css/timelify.css">
    <link rel="stylesheet" href="../css/basic.css">
    <link rel="stylesheet" href="../css/set-fonts.css">
    <link rel="stylesheet" href="../css/message-page-style.css">
    <link rel="stylesheet" href="../css/rwd-navbar.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>

    <script src="../js/main.js"></script>
    <script src="../js/message-page.js"></script>
</head>
<body>
    <!-- #include file="templates/navbar.html" -->

    <!-- message-section start -->
    <section id="message-section">
        <div class="ui container">
            <table class="ui selectable celled table">
                <thead>
                    <tr>
                        <th></th>
                        <th>標題</th>
                        <th>內容</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (int i = 0; i < length; i++) { %>
                    <tr id="<%= letterIDAL[i] %>">
                        <td class="collapsing">
                            <div class="ui checkbox">
                                <input type="checkbox" class="inputCheckbox" />
                                <label></label>
                            </div>
                            <script>
                                $('.ui.checkbox').checkbox({
                                    onChecked: function () {
                                        var letterID = $(this).parent().parent().parent().attr('id');
                                        $('#hiddenRow').append('<input type="hidden" class="' + letterID + '" name="del" value="' + letterID + '">');

                                        if ($("#hiddenRow:has(input)").length == 0) {
                                            $('#delLetterBtn').hide();
                                        }
                                        else {
                                            $('#delLetterBtn').show();
                                            
                                        }  
                                    },
                                    onUnchecked: function () {
                                        var letterID = $(this).parent().parent().parent().attr('id');
                                        $('#hiddenRow input.' + letterID).remove();

                                        if ($("#hiddenRow:has(input)").length == 0) {
                                            $('#delLetterBtn').hide();
                                        }
                                        else {
                                            $('#delLetterBtn').show();
                                        }  
                                    }
                                });
                            </script>
                        </td>
                        <td><%= letterTitleAL[i] %></td>
                        <td><%= letterContentAL[i] %></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
        <div id="hiddenRow"></div>
        <div class="animated fadeInUp" id="delLetterBtn" style=" position:fixed; right: 45%; bottom: 50px; display: none;">
            <button  class="ui red button" >刪除信件</button>
        </div>
    </section>
    <!-- history-section end -->


    <!-- #include file="templates/footer.html" -->
</body>
</html>
