<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <title>CSIM Booker</title>
    <link rel="shortcut icon" href="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="index/css/animate.css">
    <link rel="stylesheet" href="index/css/basic.css">
    <link rel="stylesheet" href="index/css/rwd-navbar.css">
    <link rel="stylesheet" href="index/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.js"></script>
    <script src="index/js/jq-easing/jquery.easing.min.js"></script>
    <script src="index/js/wow/wow.min.js"></script>
    <script src="index/js/main.js"></script>
</head>
<body>
    <!-- navbar start -->
    <nav id="navbar">
        <div class="ui top fixed borderless menu">
            <div class="ui container">
                <a href="#navbar" class="header item">CSIM Booker</a>
                <div class="right item">
                    <a href="#works-section" class="item">探索流程</a>
                    <a href="#feedback-section" class="item">意見回饋</a>
                    <div class="item" id="loginButton">登入</div>
                    <a href="set-pages/signUp-page.aspx" id="signUpButton">註冊</a>
                </div>
                <div class="right menu" id="rwd-menu">
                    <div class="ui dropdown item">
                        <i class="sidebar icon"></i>
                        <div class="menu">
                            <a href="#works-section" class="item">探索流程</a>
                            <a href="#feedback-section" class="item">意見回饋</a>
                            <div class="divider"></div>
                            <div class="item" id="loginButton-rwd">登入</div>
                            <a href="set-pages/signUp-page.aspx" class="item" id="signUpButton-rwd">註冊</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <!-- navbar end -->

    <!-- 登入 modal start -->
    <div class="ui mini modal" id="loginModal">
        <div class="header">登入</div>
        <div class="content">
            <form class="ui form" runat="server">
                <div class="field">
                    <label>學號</label>
                    <input type="text" name="loginAccount" placeholder="Student ID" required>
                </div>
                <div class="field">
                    <label>密碼</label>
                    <input type="password" name="loginPassword" placeholder="Password" required>
                </div>
                <div class="field">
                    <div class="ui checkbox">
                        <input type="checkbox" name="rememberCheck">
                        <label>記住登入資訊</label>
                    </div>
                </div>
                <input class="ui green button" type="submit" value="登入">
                <a href="#">忘記密碼</a>
            </form>
        </div>
    </div>
    <!-- 登入 modal end -->

    <!-- header start -->
    <header id="header">
        <div class="container">
            <div class="ui grid">
                <div class="eight wide computer sixteen wide mobile column">
                    <div class="header-content">
                        <h1>共享好書</h1>
                        <p>把知識，傳遞下去</p>
                    </div>
                </div>
                <div class="one wide column"></div>
                <div class="six wide computer only column" id="header-form">
                    <div class="banner">馬上登入，探索書叢</div>
                    <div class="login-form">
                        <form class="ui form" method="post" action="index.aspx">
                            <div class="field">
                                <label>學號</label>
                                <input type="text" name="loginAccount" placeholder="Student ID" required>
                            </div>
                            <div class="field">
                                <label>密碼</label>
                                <input type="password" name="loginPassword" placeholder="Password" required>
                            </div>
                            <div class="field">
                                <div class="ui checkbox">
                                    <input type="checkbox" tabindex="0" name="rememberCheck">
                                    <label>記住登入資訊</label>
                                </div>
                            </div>
                            <div class="ui divider"></div>
                            <input class="ui green button" type="submit" value="登入" >
                            <a href="#" style="padding-left: 100px;">忘記密碼？</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- header end -->

    <!-- works-section start -->
    <section id="works-section">
        <h2 class="ui header">
            <div class="content">
                探索流程
                <div class="sub header">隨著腳步，步入知識旅途</div>
            </div>
        </h2>
        <div class="work">
            <div class="container-fluid">
                <div class="ui grid">
                    <div class="two wide coumputer one wide mobile column"></div>
                    <div class="work-img five wide computer six wide moblile column wow slideInLeft" style="background-color: pink">
                        <img src="index/images/works-img/login.png" alt="">
                    </div>
                    <div class="one wide column"></div>
                    <div class="work-content four wide computer five wide mobile column wow slideInRight">
                        <h4>登入/註冊</h4>
                        <p>使用學號、信箱快速註冊，透過信件開通帳號並完善使用者資料，便可以馬上共享知識</p>
                    </div>
                    <div class="four wide computer three wide mobile column"></div>
                </div>
            </div>
        </div>
        <div class="work">
            <div class="container-fluid">
                <div class="ui grid">
                    <div class="four wide computer three wide mobile column"></div>
                    <div class="work-content four wide computer five wide mobile column wow slideInLeft">
                        <h4>刊登教材</h4>
                        <p>將空閒、未使用的參考書及課程教材，刊登於平台，提供教材給需要的同學，除了省下購買課本的書錢，更將知識傳承下去</p>
                    </div>
                    <div class="one wide column"></div>
                    <div class="work-img five wide computer six wide moblile column wow slideInRight" style="background-color: #C1E0F5">
                        <img src="index/images/works-img/post.png" alt="">
                    </div>
                    <div class="two wide coumputer one wide mobile column"></div>
                </div>
            </div>
        </div>
        <div class="work">
            <div class="container-fluid">
                <div class="ui grid">
                    <div class="two wide coumputer one wide mobile column"></div>
                    <div class="work-img five wide computer six wide moblile column wow slideInLeft" style="background-color: #B8F5D2">
                        <img src="index/images/works-img/borrow.png" alt="">
                    </div>
                    <div class="one wide column"></div>
                    <div class="work-content four wide computer five wide mobile column wow slideInRight">
                        <h4>借閱教材</h4>
                        <p>選取您想要的書籍或教材，透過平台登記後，至指定的面交地點，只須支付少許的租金，便可開始使用</p>
                    </div>
                    <div class="four wide computer three wide mobile column"></div>
                </div>
            </div>
        </div>
        <div class="work">
            <div class="container-fluid">
                <div class="ui grid">
                    <div class="four wide computer three wide mobile column"></div>
                    <div class="work-content four wide computer five wide mobile column wow slideInLeft">
                        <h4>歸還並評價</h4>
                        <p>租約到期時，回到當初的面交地點，準時歸還。最後給提供教材者忠實的評價，提供其他租借者做參考</p>
                    </div>
                    <div class="one wide column"></div>
                    <div class="work-img five wide computer six wide moblile column wow slideInRight" style="background-color: #c4afed">
                        <img src="index/images/works-img/evaluation.png" alt="">
                    </div>
                    <div class="two wide coumputer one wide mobile column"></div>
                </div>
            </div>
        </div>
    </section>
    <!-- works-section end -->

    <!-- feedback-section start -->
    <section id="feedback-section">
        <h2 class="ui header">
            <div class="content">
                意見回饋
                <div class="sub header">民眾的聲音，我們都聽見了</div>
            </div>
        </h2>
        <div class="container">
            <div class="ui grid">
                <div class="five wide computer two wide mobile column"></div>
                <div class="six wide computer twelve wide mobile column" id="feedback-form">
                    <form class="ui form">
                        <div class="required inline field">
                            <label>暱稱</label>
                            <input type="text" name="feedback-name" placeholder="請輸入暱稱" required>
                        </div>
                        <div class="field">
                            <label>信箱</label>
                            <input type="email" name="feedback-email" placeholder="Email">
                        </div>
                        <div class="field">
                            <label>意見反應</label>
                            <textarea></textarea>
                        </div>
                        <input class="ui button" type="submit" value="送出">
                    </form>
                </div>
                <div class="five wide computer two wide mobile column"></div>
            </div>
        </div>
    </section>
    <!-- feedback-section end -->

    <!-- footer start -->
    <footer>
        <h5>CSIM Booker &copy; 2017. All rights reserved</h5>
    </footer>
    <!-- footer end -->
</body>
</html>
