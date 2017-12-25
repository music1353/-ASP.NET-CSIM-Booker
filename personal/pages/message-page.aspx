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
    <link rel="stylesheet" href="../css/ellipsis.css" />
    <link rel="stylesheet" href="../css/animate.css">
    <link rel="stylesheet" href="../css/timelify.css">
    <link rel="stylesheet" href="../css/basic.css">
    <link rel="stylesheet" href="../css/set-fonts.css">
    <link rel="stylesheet" href="../css/message-page-style.css">
    <link rel="stylesheet" href="../css/rwd-navbar.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.js"></script>
    <script src="../js/main.js"></script>
</head>
<body>
    <!-- #include file="templates/navbar.html" -->

    <!-- message-section start -->
    <section id="message-section">
        <div class="ui container">
            <table class="ui selectable celled table">
                <thead>
                    <tr>
                        <th>標題</th>
                        <th>內容</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (int i = 0; i < length; i++) { %>
                    <tr id="<%= letterIDAL[i] %>">
                        <td><%= letterTitleAL[i] %></td>
                        <td><%= letterContentAL[i] %></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </section>
    <!-- history-section end -->


    <!-- #include file="templates/footer.html" -->
</body>
</html>
