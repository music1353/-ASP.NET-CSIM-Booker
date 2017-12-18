<%@ Page Language="C#" AutoEventWireup="true" CodeFile="borrowing-page.aspx.cs" Inherits="personal_pages_borrowing_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <title>CSIM Booker借閱中書籍</title>
    <link rel="shortcut icon" href="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/basic.css">
    <link rel="stylesheet" href="../css/set-fonts.css">
    <link rel="stylesheet" href="../css/borrowing-page-style.css">
    <link rel="stylesheet" href="../css/rwd-navbar.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.js"></script>
    <script src="../js/main.js"></script>
    <script src="../js/borrowing-page.js"></script>
</head>
<body>

    <!-- #include file="templates/navbar.html" -->

    <!-- borrowing-section start -->
    <section id="borrowing-section">
        <div class="ui container">
            <div class="borrowing-book">
                <h1>借閱中書籍</h1>
                <div class="four column ui stackable grid">
                    <div class="column">
                        <!-- card1 -->
                        <div class="ui card">
                            <div class="content">
                                <img class="ui avatar image" src="../images/avatar-img/girl-1.png">
                                小美
                            </div>
                            <div class="image">
                                <img src="../images/temp-books-img/temp-calc.jpg">
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
                                    <button class="ui red return button">歸還</button>
                                </div>

                            </div>
                        </div>
                    </div>

                    <!-- card2 -->
                    <div class="column">
                        <div class="ui card">
                            <div class="content">
                                <img class="ui avatar image" src="../images/avatar-img/boy-1.png">
                                阿冠
                            </div>
                            <div class="image">
                                <img src="../images/temp-books-img/temp-java.jpg">
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
                                    <button class="ui red return button">歸還</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- borrowing-section end -->

    <!-- return-modal start -->
    <div class="return-modal">
        <div class="ui mini coupled return modal">
            <div class="header" style="text-align: center;">歸還書籍</div>
            <div class="content">書籍借閱完畢，確定要歸還書籍嗎？</div>
            <div class="actions">
                <div class="ui cancel red button">取消</div>
                <button class="ui green button" id="firstModal-button">確定</button>
            </div>
        </div>
    </div>
    <!-- return-modal end -->

    <!-- feedback-modal start -->
    <div class="feedback-modal">
        <div class="ui tiny coupled feedback modal">
            <div class="header" style="text-align: center;">評價回饋</div>
            <div class="content">
                <form class="ui form" method="POST" action="" id='borrowCommentForm'>
                    <h4 class="ui dividing header">請給你的書籍提供者一些評價吧！</h4>
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
                <input class="ui green button" type='submit' value='確定' form="borrowCommentForm">
            </div>
        </div>
    </div>
    <!-- feedback-modal end -->

    <!-- #include file="templates/footer.html" -->
</body>
</html>
