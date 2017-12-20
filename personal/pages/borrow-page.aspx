<%@ Page Language="C#" AutoEventWireup="true" CodeFile="borrow-page.aspx.cs" Inherits="personal_pages_borror_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <title>CSIM Booker借閱教材</title>
    <link rel="shortcut icon" href="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.css">
    <link rel="stylesheet" href="../css/ellipsis.css"/>
    <link rel="stylesheet" href="../css/basic.css">
    <link rel="stylesheet" href="../css/set-fonts.css">
    <link rel="stylesheet" href="../css/borrow-page-style.css">
    <link rel="stylesheet" href="../css/rwd-navbar.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.js"></script>
    <script src="../js/main.js"></script>
    <script src="../js/borrow-page.js"></script>
</head>
<body>

    <!-- #include file="templates/navbar.html" -->

    <!-- borrow-section start -->
    <section id="borrow-section">
        <div class="ui container">
            <div class="borrow-title">
                <h1>借閱教材</h1>
            </div>
            <div class="borrow-selection">
                <div class="ui form">
                    <div class="ui fields">
                        <div class="five wide field"></div>
                        <div class="three wide field">
                            <label>教材類型</label>
                            <div class="ui fluid selection dropdown" id="borrow-type-dropdown">
                                <input type="hidden" name="post-type">
                                <i class="dropdown icon"></i>
                                <div class="default text">Select Type</div>
                                <div class="menu">
                                    <div class="item" data-value="all"><i class="block layout icon"></i>All</div>
                                    <div class="item" data-value="math"><i class="line chart icon"></i>數學</div>
                                    <div class="item" data-value="lan"><i class="translate icon"></i>語文</div>
                                    <div class="item" data-value="program"><i class="terminal icon"></i>程式設計</div>
                                    <div class="item" data-value="management"><i class="users icon"></i>管理</div>
                                    <div class="item" data-value="others"><i class="sticky note icon"></i>其他</div>
                                </div>
                            </div>
                        </div>
                        <div class="three wide field">
                            <label>科目</label>
                            <div class="ui fluid selection dropdown" id="subject-dropdown">
                                <input type="hidden" name="subject">
                                <i class="dropdown icon"></i>
                                <div class="default text">Select Subject</div>
                                <div class="menu"></div>
                            </div>
                        </div>
                        <div class="five wide field"></div>
                    </div>
                </div>
            </div>
            <div class="borrow-cards">
                <div class="four column ui stackable grid">
                    <!-- card1 -->
                    <div class="column">
                        <div class="ui card">
                            <div class="content">
                                <img class="ui avatar image" src="../images/avatar-img/girl-1.png"> 小美
                            </div>
                            <div class="image">
                                <img src="../images/temp-books-img/temp-calc.jpg">
                            </div>
                            <div class="content">
                                <div class="right floated meta">
                                    4.2<i class="yellow star icon"></i>
                                </div>
                                <div class="header ellipsis">微積分筆記</div>
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
                                    <button class="ui green borrow button">借閱</button>
                                </div>
                            </div>
                        </div>
                    </div>
 
                </div>
            </div>
        </div>
    </section>
    <!-- borrow-section end -->

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

    <!-- borrow-complete-modal start -->
    <div class="borrow-complete-modal">
        <div class="ui mini coupled borrow-complete modal">
            <div class="content" style="text-align: center; font-size: 25px;">
                <i class="check circle outline icon" style="color: green;"></i>借閱完成！
            </div>
        </div>
    </div>
    <!-- borrow-complete-modal end -->

    <!-- #include file="templates/footer.html" -->
</body>
</html>
