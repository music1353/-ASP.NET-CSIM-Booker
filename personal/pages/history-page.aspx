<%@ Page Language="C#" AutoEventWireup="true" CodeFile="history-page.aspx.cs" Inherits="personal_pages_history_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <title>CSIM Booker歷史紀錄</title>
    <link rel="shortcut icon" href="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/animate.css">
    <link rel="stylesheet" href="../css/timelify.css">
    <link rel="stylesheet" href="../css/basic.css">
    <link rel="stylesheet" href="../css/set-fonts.css">
    <link rel="stylesheet" href="../css/history-page-style.css">
    <link rel="stylesheet" href="../css/rwd-navbar.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.js"></script>
    <script src="../js/timeline/jquery.timelify.js"></script>
    <script src="../js/main.js"></script>
    <script src="../js/history-page.js"></script>
</head>
<body>
    <!-- #include file="templates/navbar.html" -->

    <!-- history-section start -->
    <section id="history-section">
        <div class="ui container segment">
            <h1>歷史紀錄</h1>
            <div class="timeline">
                <h2>2017</h2>
                <ul class="timeline-items">
                    <li class="is-hidden timeline-item">
                        <h3>完成註冊</h3>
                        <hr>
                        <p>歡迎加入共享書籍平台＾＿＾</p>
                        <hr>
                        <time>9/20</time>
                    </li>
                    <li class="is-hidden timeline-item inverted">
                        <h3>租借書籍</h3>
                        <hr>
                        <p>向阿冠借了微積分</p>
                        <hr>
                        <time>9/23</time>
                    </li>
                    <li class="is-hidden timeline-item">
                        <h3>歸還書籍</h3>
                        <hr>
                        <p>將微積分歸還給阿冠</p>
                        <hr>
                        <time>10/22</time>
                    </li>
                </ul>
                <h2>2018</h2>
                <ul class="timeline-items">
                    <li class="is-hidden timeline-item">
                        <h3>完成註冊</h3>
                        <hr>
                        <p>歡迎加入共享書籍平台＾＿＾</p>
                        <hr>
                        <time>9/20</time>
                    </li>
                    <li class="is-hidden timeline-item inverted">
                        <h3>租借書籍</h3>
                        <hr>
                        <p>向阿冠借了微積分</p>
                        <hr>
                        <time>9/23</time>
                    </li>
                    <li class="is-hidden timeline-item">
                        <h3>歸還書籍</h3>
                        <hr>
                        <p>將微積分歸還給阿冠</p>
                        <hr>
                        <time>10/22</time>
                    </li>
                </ul>
            </div>
        </div>
    </section>
    <!-- history-section end -->

    <!-- #include file="templates/footer.html" -->
</body>
</html>
