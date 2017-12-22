<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signUp-page.aspx.cs" Inherits="set_pages_signUp_page" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <title>CSIM Booker註冊資料</title>
    <link rel="shortcut icon" href="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.css">
    <link rel="stylesheet" href="css/basic.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/set-fonts.css">
    <link rel="stylesheet" href="css/rwd-navbar.css">
    <link rel="stylesheet" href="css/signUp-page-style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.js"></script>
    <script src="js/wow/wow.min.js"></script>
    <script src="js/cleavejs/cleave.min.js"></script>
    <script src="js/cleavejs/cleave-phone.tw.js"></script>
    <script src="js/main.js"></script>
    <script src="js/singUp-page.js"></script>
</head>

<body>
    <!-- navbar start -->
    <nav id="navbar">
        <div class="ui top fixed borderless menu">
            <div class="ui container">
                <a href="../index.aspx" class="header item">CSIM Booker</a>
            </div>
        </div>
    </nav>
    <!-- navbar end -->

    <!-- signUp-section start -->
    <section id="signUp-section">
        <div class="ui segment container">
            <div class="signUp-title">
                <h1>註冊資料</h1>
            </div>
            <div class="signUp-form">
                <div class="ui grid">
                    <div class="four wide computer two wide mobile column"></div>
                    <div class="eight wide computer twelve wide mobile column">
                        <form class="ui form" runat="server">
                            <h4 class="ui dividing header">填寫基本資料</h4>
                            <div class="nine wide field">
                                <label>學號 (帳號)</label>
                                <input type="text" name="account">
                            </div>
                            <div class="nine wide field">
                                <label>密碼</label>
                                <div class="ui icon input" id="origin-password">
                                    <input type="password" name="password" id="ori-password">
                                    <i class="unhide link icon" id="passwordIcon"></i>
                                </div>
                            </div>
                            <div class="nine wide field">
                                <label>確認密碼</label>
                                <div class="ui icon input" id="origin-confirmPassword">
                                    <input type="password" name="confirmPassword">
                                    <i class="unhide link icon" id="confirmPasswordIcon"></i>
                                </div>
                            </div>
                            <div class="ui fields">
                                <div class="six wide field">
                                    <label>姓名</label>
                                    <input type="text" name="name">
                                </div>
                                <div class="three wide field">
                                    <label>性別</label>
                                    <div class="ui fluid selection dropdown" id="select-gender-dropdown">
                                        <input type="hidden" name="gender">
                                        <i class="dropdown icon"></i>
                                        <div class="default text">Gender</div>
                                        <div class="menu">
                                            <div class="item" data-value="male">男</div>
                                            <div class="item" data-value="female">女</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <h4 class="ui dividing header">選取一張大頭貼</h4>
                            <div class="ui fields" id="choose-img-fields"></div>
                            <input type="hidden" id="hiddenAvatar" name="avatar" />
                            <input class="ui green button" type="submit" value="完成">
                            <div class="ui error message"></div>
                        </form>
                    </div>
                    <div class="four wide computer two wide mobile column"></div>
                </div>
            </div>
        </div>
    </section>
    <!-- signUp-section end -->

    <!-- footer start -->
    <footer>
        <h5>CSIM Booker &copy; 2017. All rights reserved</h5>
    </footer>
    <!-- footer end -->
</body>
</html>
