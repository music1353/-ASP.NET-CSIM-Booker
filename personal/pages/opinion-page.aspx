<%@ Page Language="C#" AutoEventWireup="true" CodeFile="opinion-page.aspx.cs" Inherits="personal_pages_opinion_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <title>CSIM Booker意見反應</title>
    <link rel="shortcut icon" href="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.css">
    <link rel="stylesheet" href="../css/basic.css">
    <link rel="stylesheet" href="../css/set-fonts.css">
    <link rel="stylesheet" href="../css/opinion-page-style.css">
    <link rel="stylesheet" href="../css/rwd-navbar.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.js"></script>
    <script src="https://cdn.bootcss.com/typed.js/2.0.6/typed.min.js"></script>
    <script src="../js/main.js"></script>
</head>
<body>
    <!-- #include file="templates/navbar.html" -->
    
    <!-- opinion-section start -->
    <section id="opinion-section">
        <div class="ui container segment">
            <h1>意見反應</h1>
            <div class="opinion-form">
                <div class="ui grid">
                    <div class="four wide computer two wide mobile column"></div>
                    <div class="eight wide computer twelve wide mobile column">
                        <form class="ui form" runat="server">
                            <div class="ui field">
                                <label>意見反應</label>
                                <textarea rows="7" style="resize: none;" name="opinionTextarea"></textarea>
                            </div>
                            <input class="ui green button" type="submit" id="opinionConfirmBtn" value="確認">
                            <div class="ui error message"></div>
                        </form>
                    </div>
                </div>
                <div class="four wide computer two wide mobile column"></div>
            </div>
        </div>
    </section>
    <!-- opinion-section end -->

    <!-- #include file="templates/footer.html" -->
</body>
</html>
