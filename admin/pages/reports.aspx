<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reports.aspx.cs" Inherits="admin_pages_reports" %>

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
    <link rel="stylesheet" href="../css/basic.css">
    <link rel="stylesheet" href="../css/set-fonts.css">
    <link rel="stylesheet" href="../css/admin-index-style.css">
    <link rel="stylesheet" href="../css/rwd-navbar.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.js"></script>
    <script src="../js/main.js"></script>
</head>
<body>
    <!-- navbar start -->
    <nav id="navbar">
        <div class="ui top fixed borderless menu">
            <div class="ui container">
                <a href="index.html" class="header item">CSIM Booker</a>
                <div class="right menu" id="cm-menu">
                    <a href="members.html" class="item">會員名單</a>
                    <a href="opinions.html" class="item">意見反應</a>
                    <a href="reports.html" class="item">檢舉事由</a>
                    <div class="ui dropdown item">
                        <img class="ui avatar image" src="../images/admin-image/admin-psyduck.png">&nbsp;管理員
                        <i class="dropdown icon"></i>
                        <div class="menu">
                            <a href="../../index.html" class="item"><i class="sign out icon"></i>登出</a>
                        </div>
                    </div>
                </div>
                <div class="right menu" id="rwd-menu">
                    <div class="ui dropdown item">
                        <i class="sidebar icon"></i>
                        <div class="menu">
                            <a href="members.html" class="item">會員名單</a>
                            <a href="opinions.html" class="item">意見反應</a>
                            <a href="reports.html" class="item">檢舉事由</a>
                            <div class="ui divider"></div>
                            <a href="../../index.html" class="item"><i class="sign out icon"></i>登出</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <!-- navbar end -->

    <!-- footer start -->
    <footer>
        <h5>CSIM Booker &copy; 2017. All rights reserved</h5>
    </footer>
    <!-- footer end -->

</body>
</html>
