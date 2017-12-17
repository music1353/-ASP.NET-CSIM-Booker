﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="message-page.aspx.cs" Inherits="personal_pages_message_page" %>

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
    <!-- #include file="includeStatic/navbar.html" -->

    <!-- message-section start -->
    <section id="message-section">
        <div class="ui container segment">
            <h1>通知訊息</h1>
            <div class="message">
                <div class="title">借閱書籍</div>
                <div class="content">您向阿冠借閱微積分課本成功！</div>
                <div class="time">2017/11/5</div>
            </div>
            <div class="message">
                <div class="title">歸還書籍</div>
                <div class="content">您向阿冠借閱的微積分課本已成功歸還！</div>
                <div class="time">2017/11/8</div>
            </div>
        </div>
    </section>
    <!-- history-section end -->

    <!-- #include file="includeStatic/footer.html" -->
</body>
</html>