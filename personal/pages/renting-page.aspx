﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="renting-page.aspx.cs" Inherits="personal_pages_renting_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <title>CSIM Booker出租中書籍</title>
    <link rel="shortcut icon" href="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/basic.css">
    <link rel="stylesheet" href="../css/set-fonts.css">
    <link rel="stylesheet" href="../css/renting-page-style.css">
    <link rel="stylesheet" href="../css/rwd-navbar.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.js"></script>
    <script src="../js/main.js"></script>
    <script src="../js/renting-page.js"></script>
</head>
<body>
    <!-- #include file="includeStatic/navbar.html" -->

    <!-- renting-section start -->
    <section id="renting-section">
        <div class="ui container">
            <div class="renting-book">
                <h1>出租中書籍</h1>
                <div class="four column ui stackable grid">
                    <div class="column">
                        <!-- card1 -->
                        <div class="ui card">
                            <div class="content">
                                <img class="ui avatar image" src="../images/avatar-img/girl-1.png"><span class="renter">小美</span><span> - 租借者</span>
                            </div>
                            <div class="image">
                                <img src="../images/temp-books-img/temp-calc.jpg">
                            </div>
                            <div class="content">
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
                                    <button class="ui orange button">出租中</button>
                                </div>

                            </div>
                        </div>
                    </div>

                    <!-- card2 -->
                    <div class="column">
                        <div class="ui card">
                            <div class="content">
                                <img class="ui avatar image" src="../images/avatar-img/boy-1.png"> <span class="renter">阿冠</span><span> - 租借者</span>
                            </div>
                            <div class="image">
                                <img src="../images/temp-books-img/temp-java.jpg">
                            </div>
                            <div class="content">
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
                                    <button class="ui olive complete button">完成接收</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- borrowing-section end -->

    <!-- getbook-modal start -->
    <div class="getbook-modal">
        <div class="ui mini coupled getbook modal">
            <div class="header" style="text-align: center;">收到歸還書籍</div>
            <div class="content">書籍借閱完畢，確定對方已經歸還書籍了嗎？</div>
            <div class="actions">
                <div class="ui cancel red button">取消</div>
                <button class="ui right labeled icon green button" id="firstModal-button"><i class="checkmark icon"></i>確定</button>
            </div>
        </div>
    </div>
    <!-- return-modal end -->

    <!-- feedback-modal start -->
    <div class="feedback-modal">
        <div class="ui tiny coupled feedback modal">
            <div class="header" style="text-align: center;">評價回饋</div>
            <div class="content">
                <form class="ui form" id="feedbackForm">
                    <h4 class="ui dividing header">請給你的借書者一些評價吧！</h4>
                    <div class="ui field">
                        <label>星等</label>
                        <div class="ui huge star rating"></div>
                    </div>
                    <div class="ui field">
                        <label>回饋</label>
                        <textarea rows="3" style="resize: none;"></textarea>
                    </div>
                </form>
            </div>
            <div class="actions">
                <div class="ui cancel red button">取消</div>
                <input class="ui green button" type="submit" form="feedbackForm" value="確認">
            </div>
        </div>
    </div>
    <!-- feedback-modal end -->

    <!-- #include file="includeStatic/footer.html" -->
</body>
</html>