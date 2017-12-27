<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="admin_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <title>CSIM Booker Admin</title>
    <link rel="shortcut icon" href="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.css">
    <link rel="stylesheet" href="css/basic.css">
    <link rel="stylesheet" href="css/set-fonts.css">
    <link rel="stylesheet" href="css/admin-index-style.css">
    <link rel="stylesheet" href="css/rwd-navbar.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.js"></script>
    <script src="https://cdn.bootcss.com/typed.js/2.0.6/typed.min.js"></script>
    <script src="js/main.js"></script>
</head>
<body>
    <!-- navbar start -->
    <nav id="navbar">
        <div class="ui top fixed borderless menu">
            <div class="ui container">
                <a href="index.aspx" class="header item">CSIM Booker</a>
                <div class="right menu" id="cm-menu">
                    <a href="pages/members.aspx" class="item">會員名單</a>
                    <a href="pages/opinions.aspx" class="item">意見反應</a>
                    <a href="pages/reports.aspx" class="item">檢舉事由</a>
                    <div class="ui dropdown item">
                        <img class="ui avatar image" src="images/admin-image/admin-psyduck.png">&nbsp;管理員
                        <i class="dropdown icon"></i>
                        <div class="menu">
                            <a href="pages/logout.aspx" class="item"><i class="sign out icon"></i>登出</a>
                        </div>
                    </div>
                </div>
                <div class="right menu" id="rwd-menu">
                    <div class="ui dropdown item">
                        <i class="sidebar icon"></i>
                        <div class="menu">
                            <a href="pages/members.aspx" class="item">會員名單</a>
                            <a href="pages/opinions.aspx" class="item">意見反應</a>
                            <a href="pages/reports.aspx" class="item">檢舉事由</a>
                            <div class="ui divider"></div>
                            <a href="pages/logout.aspx" class="item"><i class="sign out icon"></i>登出</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <!-- navbar end -->

    <!-- sayHello-section start -->
    <section id="sayHello-section">
        <div class="ui container">
            <div class="hello">
                <span id="typed"></span>
                <script>
                    var typed = new Typed('#typed', {
                        strings: ["你好呀! ^1000 管理員zz", "今天^1500，你封鎖人了嗎？"],
                        smartBackspace: true,
                        startDelay: 1000,
                        typeSpeed: 200,
                        loop: true,
                    });
                </script>
            </div>
        </div>
    </section>
    <!-- sayHello-section end -->

    <!-- footer start -->
    <footer>
        <h5>CSIM Booker &copy; 2017. All rights reserved</h5>
    </footer>
    <!-- footer end -->
</body>
</html>
