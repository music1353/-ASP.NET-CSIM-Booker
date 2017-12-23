<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personal-page.aspx.cs" Inherits="personal_pages_personal_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <title>CSIM Booker個人資料</title>
    <link rel="shortcut icon" href="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.css">
    <link rel="stylesheet" href="../css/basic.css">
    <link rel="stylesheet" href="../css/set-fonts.css">
    <link rel="stylesheet" href="../css/personal-page-style.css">
    <link rel="stylesheet" href="../css/rwd-navbar.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.js"></script>
    <script src="../js/personal-page.js"></script>
</head>
<body>
    <!-- #include file="templates/navbar.html" -->

    <!-- personal-section start -->
    <section id="personal-section">
        <div class="ui container segment">
            <div class="personal-title">
                <h1>個人資料</h1>
            </div>
            <div class="personal-form">
                <div class="ui grid">
                    <div class="four wide computer two wide mobile column"></div>
                    <div class="eight wide computer twelve wide mobile column">
                        <form class="ui form" runat="server">
                            <div class="ui fields">
                                <div class="eight wide field required">
                                    <label>姓名</label>
                                    <input type="text" name="newName" value="<%= pname %>"" required>
                                </div>
                                <div class="eight wide field">
                                    <label>學號(帳號)</label>
                                    <input type="text" value="<%= pID %>" readonly>
                                </div>
                            </div>
                            <div class="sixteen wide field">
                                <label>信箱</label>
                                <input type="email" value="<%= pEmail %>" readonly>
                            </div>
                            <div class="ten wide computer sixteen wide mobile field">
                                <label>密碼</label>
                                <div class="ui icon input" id="origin-password">
                                    <input type="password" value="<%= pPassword %>" readonly>
                                    <i class="unhide link icon" id="passwordIcon"></i>
                                </div>
                            </div>
                            <div class="ui fields">
                                <div class="eight wide field">
                                    <label>更改密碼</label>
                                    <input type="password" name="newPassword" placeholder="請輸入新密碼">
                                </div>
                                <div class="eight wide field">
                                    <label>確認密碼</label>
                                    <input type="password" name="comfirmNewPassword" placeholder="請確認新密碼">
                                </div>
                            </div>
                            <input class="ui green button" type="submit" value="確認">
                            <div class="ui error message"></div>
                        </form>
                    </div>
                </div>
                <div class="four wide computer two wide mobile column"></div>
            </div>
        </div>
    </section>
    <!-- personal-section end -->

    <!-- #include file="templates/footer.html" -->
</body>
</html>
