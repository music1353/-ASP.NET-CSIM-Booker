<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="personal_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <title>CSIM Booker</title>
    <link rel="shortcut icon" href="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.css">
    <link rel="stylesheet" href="css/basic.css">
    <link rel="stylesheet" href="css/set-fonts.css">
    <link rel="stylesheet" href="css/index-style.css">
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
                <a href="index.html" class="header item">CSIM Booker</a>
                <div class="right menu" id="cm-menu">
                    <a href="pages/post-page.html" class="item">刊登教材</a>
                    <a href="pages/borrow-page.html" class="item">借閱教材</a>
                    <div class="ui dropdown item">
                        <img class="ui avatar image" src="images/navbar-user-img/man.png">&nbsp;蘇靖軒
                        <i class="dropdown icon"></i>
                        <div class="menu">
                            <a href="pages/personal-page.html" class="item"><i class="user circle icon"></i>個人資料</a>
                            <a href="#" class="item" id="messageBtn"><i class="alarm icon">
                                <div class="floating ui red label">22</div>
                            </i>通知訊息</a>
                            <a href="pages/history-page.html" class="item"><i class="cube icon"></i>歷史紀錄</a>
                            <a href="pages/borrowing-page.html" class="item"><i class="book icon"></i>借閱中書籍</a>
                            <a href="pages/renting-page.html" class="item"><i class="road icon"></i>出租中書籍</a>
                            <div class="ui divider"></div>
                            <a href="pages/opinion-page.html" class="item"><i class="talk icon"></i>意見反應</a>
                            <a href="pages/report-page.html" class="item"><i class="remove user icon"></i>檢舉專區</a>
                            <div class="ui divider"></div>
                            <a href="#" class="item"><i class="sign out icon"></i>登出</a>
                        </div>
                    </div>
                </div>
                <div class="right menu" id="rwd-menu">
                    <div class="ui dropdown item">
                        <i class="sidebar icon"></i>
                        <div class="menu">
                            <a href="pages/post-page.html" class="item">刊登教材</a>
                            <a href="pages/borrow-page.html" class="item">借閱教材</a>
                            <div class="divider"></div>
                            <a href="pages/personal-page.html" class="item"><i class="user circle icon"></i>個人資料</a>
                            <a href="#" class="item"><i class="alarm icon">
                                <div class="floating ui red label">22</div>
                            </i>通知訊息</a>
                            <a href="pages/history-page.html" class="item"><i class="cube icon"></i>歷史紀錄</a>
                            <a href="pages/borrowing-page.html" class="item"><i class="book icon"></i>借閱中書籍</a>
                            <a href="pages/renting-page.html" class="item"><i class="road icon"></i>出租中書籍</a>
                            <div class="ui divider"></div>
                            <a href="pages/opinion-page.html" class="item"><i class="talk icon"></i>意見反應</a>
                            <a href="pages/report-page.html" class="item"><i class="remove user icon"></i>檢舉專區</a>
                            <div class="ui divider"></div>
                            <a href="#" class="item"><i class="sign out icon"></i>登出</a>
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
                        strings: ["你好呀! ^1000 蘇靖軒^_^", "今天^1500，你閱讀了嗎？"],
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

    <!-- own-section start -->
    <section id="own-section">
        <div class="ui container">
            <div class="three column ui stackable grid">
                <div class="column" id="avgRating">
                    <h3>平均星等</h3>
                    <div class="star">
                        3.7 <i class="yellow star icon"></i>
                    </div>
                </div>
                <div class="column" id="poCount">
                    <h3>歷史刊登</h3>
                    <div class="ui horizontal large statistic">
                        <div class="value">
                            12
                        </div>
                        <div class="label">
                            篇
                        </div>
                    </div>
                </div>
                <div class="column" id="borrowCount">
                    <h3>歷史借閱</h3>
                    <div class="ui horizontal large statistic">
                        <div class="value">
                            3
                        </div>
                        <div class="label">
                            篇
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- own-section end -->

    <!-- recommend-section start -->
    <section id="recommend-section">
        <div class="ui container">
            <div class="recommend-book">
                <h1>推薦書單</h1>
                <div class="four column ui stackable grid">
                    <div class="column">
                        <!-- card1 -->
                        <div class="ui card">
                            <div class="content">
                                <img class="ui avatar image" src="images/temp-avatar-img/girl-1.png">
                                小美
                            </div>
                            <div class="image">
                                <img src="images/temp-books-img/temp-calc.jpg">
                            </div>
                            <div class="content">
                                <div class="right floated meta">
                                    4.2<i class="yellow star icon"></i>
                                </div>
                                <div class="header">微積分筆記</div>
                                <div class="description">
                                    我做的超認真的呦！!
                                </div>
                            </div>
                            <div class="extra content">
                                <div class="left floated meta">
                                    <div class="ui icon button" data-tooltip="[雙溪] 望星廣場" data-inverted="">
                                        <i class="marker icon"></i>
                                    </div>
                                </div>
                                <div class="left floated meta" style="margin-left: 10px;">
                                    <div class="ui icon button" data-tooltip="2017/11/30 上午10:00" data-inverted="">
                                        <i class="wait icon"></i>
                                    </div>
                                </div>
                                <div class="right floated meta" style="margin-left: 10px;">
                                    <button class="ui green button">借閱</button>
                                </div>

                            </div>
                        </div>
                    </div>

                    <!-- card2 -->
                    <div class="column">
                        <div class="ui card">
                            <div class="content">
                                <img class="ui avatar image" src="images/temp-avatar-img/boy-1.png">
                                阿冠
                            </div>
                            <div class="image">
                                <img src="images/temp-books-img/temp-java.jpg">
                            </div>
                            <div class="content">
                                <div class="right floated meta">
                                    3.3<i class="yellow star icon"></i>
                                </div>
                                <div class="header">JAVA程式設計</div>
                                <div class="description">
                                    跟新的一樣zz
                                </div>
                            </div>
                            <div class="extra content">
                                <div class="left floated meta">
                                    <div class="ui icon button" data-tooltip="[城中] 學校正門" data-inverted="">
                                        <i class="marker icon"></i>
                                    </div>
                                </div>
                                <div class="left floated meta" style="margin-left: 10px;">
                                    <div class="ui icon button" data-tooltip="2017/10/03 上午12:00" data-inverted="">
                                        <i class="wait icon"></i>
                                    </div>
                                </div>
                                <div class="right floated meta" style="margin-left: 10px;">
                                    <button class="ui green button">借閱</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- card3 -->
                    <div class="column">
                        <div class="ui card">
                            <div class="content">
                                <img class="ui avatar image" src="images/temp-avatar-img/girl-2.png">
                                琪琪
                            </div>
                            <div class="image">
                                <img src="images/temp-books-img/temp-algo.jpg">
                            </div>
                            <div class="content">
                                <div class="right floated meta">
                                    4.1<i class="yellow star icon"></i>
                                </div>
                                <div class="header">演算法</div>
                                <div class="description">
                                    有很多筆記喔
                                </div>
                            </div>
                            <div class="extra content">
                                <div class="left floated meta">
                                    <div class="ui icon button" data-tooltip="[城中] 學校正門" data-inverted="">
                                        <i class="marker icon"></i>
                                    </div>
                                </div>
                                <div class="left floated meta" style="margin-left: 10px;">
                                    <div class="ui icon button" data-tooltip="2017/10/08 下午01:00" data-inverted="">
                                        <i class="wait icon"></i>
                                    </div>
                                </div>
                                <div class="right floated meta" style="margin-left: 10px;">
                                    <button class="ui green button">借閱</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- card4 -->
                    <div class="four wide column">
                        <div class="ui card">
                            <div class="content">
                                <img class="ui avatar image" src="images/temp-avatar-img/boy-2.png">
                                鳴人
                            </div>
                            <div class="image">
                                <img src="images/temp-books-img/temp-acc.jpg">
                            </div>
                            <div class="content">
                                <div class="right floated meta">
                                    3.2<i class="yellow star icon"></i>
                                </div>
                                <div class="header">會計學</div>
                                <div class="description">
                                    我覺得很可以
                                </div>
                            </div>
                            <div class="extra content">
                                <div class="left floated meta">
                                    <div class="ui icon button" data-tooltip="[雙溪] Ｄ棟一樓" data-inverted="">
                                        <i class="marker icon"></i>
                                    </div>
                                </div>
                                <div class="left floated meta" style="margin-left: 10px;">
                                    <div class="ui icon button" data-tooltip="2017/10/03 上午12:00" data-inverted="">
                                        <i class="wait icon"></i>
                                    </div>
                                </div>
                                <div class="right floated meta" style="margin-left: 10px;">
                                    <button class="ui green button">借閱</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- recommend-section end -->

    <!-- footer start -->
    <footer>
        <h5>CSIM Booker &copy; 2017. All rights reserved</h5>
    </footer>
    <!-- footer end -->
</body>
</html>
