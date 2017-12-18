<%@ Page Language="C#" AutoEventWireup="true" CodeFile="post-page.aspx.cs" Inherits="personal_pages_post_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <title>CSIM Booker刊登教材</title>
    <link rel="shortcut icon" href="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/basic.css">
    <link rel="stylesheet" href="../css/set-fonts.css">
    <link rel="stylesheet" href="../css/post-page-style.css">
    <link rel="stylesheet" href="../css/rwd-navbar.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.js"></script>
    <script src="../js/main.js"></script>
    <script src="../js/post-page.js"></script>
</head>
<body>
    <!-- #include file="templates/navbar.html" -->

    <!-- post-section start -->
    <section id="post-section">
        <div class="ui container segment">
            <h1>刊登教材</h1>
            <div class="post-form">
                <div class="ui grid">
                    <div class="four wide computer two wide mobile column"></div>
                    <div class="eight wide computer twelve wide mobile column">
                        <form class="ui form" id="postForm" runat="server" enctype="multipart/form-data">
                            <div class="ui field">
                                <h4 class="ui dividing header">為你的教材選一張照片</h4>
                                <div>
                                    <img class="preview" style="max-width: 200px; max-height: 200px;">
                                    <div class="size"></div>
                                </div>
                                <div>
                                    <label for="file" class="ui green icon button"><i class="file icon"></i>Open File</label>
                                    <input type="file" accept="image/*" class="upl" id="file" style="display: none" name="bookImg">
                                </div>
                            </div>
                            <h4 class="ui dividing header">設定教材</h4>
                            <div class="ui fields">
                                <div class="five wide field">
                                    <label>教材類型</label>
                                    <div class="ui fluid selection dropdown" id="post-type-dropdown">
                                        <input type="hidden" name="postType">
                                        <i class="dropdown icon"></i>
                                        <div class="default text">Select Type</div>
                                        <div class="menu">
                                            <div class="item" data-value="math"><i class="line chart icon"></i>數學</div>
                                            <div class="item" data-value="lan"><i class="translate icon"></i>語文</div>
                                            <div class="item" data-value="program"><i class="terminal icon"></i>程式設計</div>
                                            <div class="item" data-value="management"><i class="users icon"></i>管理</div>
                                            <div class="item" data-value="others"><i class="sticky note icon"></i>其他</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="five wide field">
                                    <label>科目</label>
                                    <div class="ui fluid selection dropdown" id="subject-dropdown">
                                        <input type="hidden" name="postSubject">
                                        <i class="dropdown icon"></i>
                                        <div class="default text">Select Subject</div>
                                        <div class="menu"></div>
                                    </div>
                                </div>
                                <div class="six wide field">
                                    <label>教材名稱</label>
                                    <input type="text" placeholder="Project Name" name="projectName">
                                </div>
                            </div>
                            <h4 class="ui dividing header">交書時間地點</h4>
                            <div class="ui fields">
                                <div class="five wide field">
                                    <label>日期</label>
                                    <input type="date" name="changeDate">
                                </div>
                                <div class="five wide field">
                                    <label>時間</label>
                                    <input type="time" name="changeTime">
                                </div>
                                <div class="six wide field">
                                    <label>地點</label>
                                    <div class="ui fluid selection dropdown" id="post-type-dropdown">
                                        <input type="hidden" name="changeSite">
                                        <i class="dropdown icon"></i>
                                        <div class="default text">Select site</div>
                                        <div class="menu">
                                            <div class="item" data-value="xian-D">[雙溪] Ｄ棟一樓</div>
                                            <div class="item" data-value="xian-star">[雙溪] 望星廣場</div>
                                            <div class="item" data-value="chen-One">[城中] 一大一樓</div>
                                            <div class="item" data-value="chen-door">[城中] 學校正門</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <h4 class="ui dividing header">還書時間地點</h4>
                            <div class="ui fields">
                                <div class="five wide field">
                                    <label>日期</label>
                                    <input type="date" name="returnDate">
                                </div>
                                <div class="five wide field">
                                    <label>時間</label>
                                    <input type="time" name="returnTime">
                                </div>
                                <div class="six wide field">
                                    <label>地點</label>
                                    <div class="ui fluid selection dropdown" id="post-type-dropdown">
                                        <input type="hidden" name="returnSite">
                                        <i class="dropdown icon"></i>
                                        <div class="default text">Select site</div>
                                        <div class="menu">
                                            <div class="item" data-value="xian-D">[雙溪] Ｄ棟一樓</div>
                                            <div class="item" data-value="xian-star">[雙溪] 望星廣場</div>
                                            <div class="item" data-value="chen-One">[城中] 一大一樓</div>
                                            <div class="item" data-value="chen-door">[城中] 學校正門</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <h4 class="ui dividing header">簡單描述你的教材(15字內)</h4>
                            <div class="field">
                                <textarea name="introduction" id="introduction" cols="30" rows="3" maxlength="15" style="resize: none;"></textarea>
                            </div>
                            <button class="ui green button" type="submit" id="postConfirmBtn">確認</button>
                            <div class="ui error message"></div>
                        </form>
                    </div>
                </div>
                <div class="four wide computer two wide mobile column"></div>
            </div>
        </div>
    </section>
    <!-- post-section end -->

    <!-- post-modal start -->
    <div class="post-modal">
        <div class="ui mini modal">
            <div class="header" style="text-align: center;">確定刊登</div>
            <div class="content">確認刊登的內容都沒問題，並且發佈到平台上嗎？</div>
            <div class="actions">
                <div class="ui cancel red button">取消</div>
                <input class="ui green button" type="submit" form="postForm" value="確定">
            </div>
        </div>
    </div>
    <!-- post-modal end -->

    <!-- #include file="templates/footer.html" -->
</body>
</html>
