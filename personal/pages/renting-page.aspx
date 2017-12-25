<%@ Page Language="C#" AutoEventWireup="true" CodeFile="renting-page.aspx.cs" Inherits="personal_pages_renting_page" %>

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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.css">
    <link rel="stylesheet" href="../css/ellipsis.css"/>
    <link rel="stylesheet" href="../css/basic.css">
    <link rel="stylesheet" href="../css/set-fonts.css">
    <link rel="stylesheet" href="../css/renting-page-style.css">
    <link rel="stylesheet" href="../css/rwd-navbar.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.js"></script>
    <script src="../js/main.js"></script>
    <script src="../js/renting-page.js"></script>
</head>
<body>
    <!-- #include file="templates/navbar.html" -->

    <!-- renting-section start -->
    <section id="renting-section">
        <div class="ui container">
            <div class="renting-book">
                <h1>出租中書籍</h1>
                <div class="four column ui stackable grid">
                    <% for (int i = 0; i < allLength; i++) { %>
                        <% if (revertSituationAL[i].Equals("0")) { %>
                            <div class="column">
                                <div class="ui card" id="<%= teachingMaterialIDAL[i] %>">
                                    <div class="content">
                                        <img class="ui avatar image" src="<%= borrowerAvatarAL[i] %>""><span class="renter">
                                        <span title="<%= borrowerIDAL[i] %>""><%= borrowerNameAL[i] %></span></span><span> - 租借者</span>
                                    </div>
                                    <div class="image">
                                        <img src="<%= materialPictureAL[i] %>"">
                                    </div>
                                    <div class="content">
                                        <div class="header ellipsis"><%= teachingMaterialNameAL[i] %></div>
                                        <div class="description">
                                            <%= materialDescribeAL[i] %>
                                        </div>
                                    </div>
                                    <div class="extra content">
                                        <div class="left floated meta">
                                            <div class="ui icon button" data-tooltip="<%= revertPlaceAL[i] %>"" data-inverted="">
                                                <i class="marker icon"></i>
                                            </div>
                                        </div>
                                        <div class="left floated meta" style="margin-left: 10px;">
                                            <div class="ui icon button" data-tooltip="<%= revertDateAndTimeAL[i] %>""" data-inverted="">
                                                <i class="wait icon"></i>
                                            </div>
                                        </div>
                                        <div class="right floated meta" style="margin-left: 10px;">
                                            <button class="ui orange button">出租中</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <% } %>

                        <% else if (revertSituationAL[i].Equals("1")) {%>
                            <div class="column">
                                <div class="ui card" id="<%= teachingMaterialIDAL[i] %>">
                                    <div class="content">
                                        <img class="ui avatar image" src="<%= borrowerAvatarAL[i] %>""><span class="renter">
                                        <span title="<%= borrowerIDAL[i] %>""><%= borrowerNameAL[i] %></span></span><span> - 租借者</span>
                                    </div>
                                    <div class="image">
                                        <img src="<%= materialPictureAL[i] %>"">
                                    </div>
                                    <div class="content">
                                        <div class="header ellipsis"><%= teachingMaterialNameAL[i] %></div>
                                        <div class="description">
                                            <%= materialDescribeAL[i] %>
                                        </div>
                                    </div>
                                    <div class="extra content">
                                        <div class="left floated meta">
                                            <div class="ui icon button" data-tooltip="<%= revertPlaceAL[i] %>"" data-inverted="">
                                                <i class="marker icon"></i>
                                            </div>
                                        </div>
                                        <div class="left floated meta" style="margin-left: 10px;">
                                            <div class="ui icon button" data-tooltip="<%= revertDateAndTimeAL[i] %>""" data-inverted="">
                                                <i class="wait icon"></i>
                                            </div>
                                        </div>
                                        <div class="right floated meta" style="margin-left: 10px;">
                                            <button class="ui olive complete button">完成接收</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <% } %>
                    <% } %>  
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
                <form class="ui form">
                    <h4 class="ui dividing header">請給你的借書者一些評價吧！</h4>
                    <div class="ui field">
                        <label>星等</label>
                        <div class="ui huge star rating"></div>
                        <input type="hidden" name="starHidden" id="starHidden" value="3"/>
                    </div>
                    <div class="ui field">
                        <label>回饋</label>
                        <textarea rows="3" id="completeCommentTextarea" style="resize: none;"></textarea>
                    </div>
                </form>
            </div>
            <div class="actions">
                <div class="ui cancel red button">取消</div>
                <button class="ui green button" id="secondModal-button">確定</button>
            </div>
        </div>
    </div>
    <!-- feedback-modal end -->

    <!-- #include file="templates/footer.html" -->
</body>
</html>
