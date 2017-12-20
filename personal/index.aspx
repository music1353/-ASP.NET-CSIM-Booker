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
    <link rel="stylesheet" href="css/ellipsis.css"/>
    <link rel="stylesheet" href="css/basic.css">
    <link rel="stylesheet" href="css/set-fonts.css">
    <link rel="stylesheet" href="css/index-style.css">
    <link rel="stylesheet" href="css/rwd-navbar.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.js"></script>
    <script src="https://cdn.bootcss.com/typed.js/2.0.6/typed.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/index-page.js"></script>
</head>
<body>

    <!-- navbar start -->
    <nav id="navbar">
        <div class="ui top fixed borderless menu">
            <div class="ui container">
                <a href="index.aspx" class="header item">CSIM Booker</a>
                <div class="right menu" id="cm-menu">
                    <a href="pages/post-page.aspx" class="item">刊登教材</a>
                    <a href="pages/borrow-page.aspx" class="item">借閱教材</a>
                    <div class="ui dropdown item">
                        <img class="ui avatar image" src="<%= avatar %>"">&nbsp;<%= name %>
                        <i class="dropdown icon"></i>
                        <div class="menu">
                            <a href="pages/personal-page.aspx" class="item"><i class="user circle icon"></i>個人資料</a>
                            <a href="pages/message-page.aspx" class="item" id="messageBtn"><i class="alarm icon">
                                <div class="floating ui red label">22</div>
                            </i>通知訊息</a>
                            <a href="pages/history-page.aspx" class="item"><i class="cube icon"></i>歷史紀錄</a>
                            <a href="pages/borrowing-page.aspx" class="item"><i class="book icon"></i>借閱中書籍</a>
                            <a href="pages/renting-page.aspx" class="item"><i class="road icon"></i>出租中書籍</a>
                            <div class="ui divider"></div>
                            <a href="pages/opinion-page.aspx" class="item"><i class="talk icon"></i>意見反應</a>
                            <a href="pages/report-page.aspx" class="item"><i class="remove user icon"></i>檢舉專區</a>
                            <div class="ui divider"></div>
                            <a href="pages/logout.aspx" class="item"><i class="sign out icon"></i>登出</a>
                        </div>
                    </div>
                </div>
                <div class="right menu" id="rwd-menu">
                    <div class="ui dropdown item">
                        <i class="sidebar icon"></i>
                        <div class="menu">
                            <a href="pages/post-page.aspx" class="item">刊登教材</a>
                            <a href="pages/borrow-page.aspx" class="item">借閱教材</a>
                            <div class="divider"></div>
                            <a href="pages/personal-page.aspx" class="item"><i class="user circle icon"></i>個人資料</a>
                            <a href="pages/message-page.aspx" class="item"><i class="alarm icon">
                                <div class="floating ui red label">22</div>
                            </i>通知訊息</a>
                            <a href="pages/history-page.aspx" class="item"><i class="cube icon"></i>歷史紀錄</a>
                            <a href="pages/borrowing-page.aspx" class="item"><i class="book icon"></i>借閱中書籍</a>
                            <a href="pages/renting-page.aspx" class="item"><i class="road icon"></i>出租中書籍</a>
                            <div class="ui divider"></div>
                            <a href="pages/opinion-page.aspx" class="item"><i class="talk icon"></i>意見反應</a>
                            <a href="pages/report-page.aspx" class="item"><i class="remove user icon"></i>檢舉專區</a>
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
                        strings: ["你好呀! ^1000 <%= name %>^_^", "今天^1500，你閱讀了嗎？"],
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
                        <%= star %> <i class="yellow star icon"></i>
                    </div>
                </div>
                <div class="column" id="poCount">
                    <h3>歷史刊登</h3>
                    <div class="ui horizontal large statistic">
                        <div class="value">
                            <%= history_post_book_num %>
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
                            <%= history_borrow_book_num %>
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
                    <% for (int i = 0; i < allLength; i++) { %>
                       <div class="column">
                          <div class="ui card" id="<%= teachingMaterialIDAL[i] %>">
                            <div class="content">
                                <img class="ui avatar image" src="<%= publisherAvatarAL[i] %>""> <%= publisherNameAL[i] %>
                            </div>
                            <div class="image">
                                <img src="<%= materialPictureAL[i] %>"">
                            </div>
                            <div class="content">
                                <div class="right floated meta">
                                    <%= publisherStarAL[i] %><i class="yellow star icon"></i>
                                </div>
                                <div class="header ellipsis"><%= teachingMaterialNameAL[i] %></div>
                                <div class="description">
                                    <%= materialDescribeAL[i] %>
                                </div>
                            </div>
                            <div class="extra content">
                                <div class="left floated meta">
                                    <div class="ui icon button" data-tooltip="<%= rentPlaceAL[i] %>"" data-inverted="">
                                        <i class="marker icon"></i>
                                    </div>
                                </div>
                                <div class="left floated meta" style="margin-left: 10px;">
                                    <div class="ui icon button" data-tooltip="<%= rentDateAndTimeAL[i] %>" data-inverted="">
                                        <i class="wait icon"></i>
                                    </div>
                                </div>
                                <div class="right floated meta" style="margin-left: 10px;">
                                    <button class="ui green borrow button">借閱</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% } %>           

                </div>
            </div>
        </div>
    </section>
    <!-- recommend-section end -->

    <!-- borrow-modal start -->
    <div class="borrow-modal">
        <div class="ui mini coupled borrow modal">
            <div class="header" style="text-align: center;">借閱書籍</div>
            <div class="content">確定要借閱書籍嗎？</div>
            <div class="actions">
                <div class="ui cancel red button">取消</div>
                <button class="ui green button" id="borrowModal-button">確定</button>
            </div>
        </div>
    </div>
    <!-- borrow-modal end -->


    <!-- footer start -->
    <footer>
        <h5>CSIM Booker &copy; 2017. All rights reserved</h5>
    </footer>
    <!-- footer end -->
</body>
</html>
