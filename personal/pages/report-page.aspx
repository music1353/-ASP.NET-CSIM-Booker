<%@ Page Language="C#" AutoEventWireup="true" CodeFile="report-page.aspx.cs" Inherits="personal_pages_report_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <title>CSIM Booker檢舉專區</title>
    <link rel="shortcut icon" href="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/basic.css">
    <link rel="stylesheet" href="../css/set-fonts.css">
    <link rel="stylesheet" href="../css/report-page-style.css">
    <link rel="stylesheet" href="../css/rwd-navbar.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.js"></script>
    <script src="../js/main.js"></script>
    <script src="../js/report-page.js"></script>
</head>
<body>
    <!-- #include file="includeStatic/navbar.html" -->

    <!-- report-section start -->
    <section id="report-section">
        <div class="ui container segment">
            <h1>檢舉專區</h1>
            <div class="report-form">
                <div class="ui grid">
                    <div class="four wide computer two wide mobile column"></div>
                    <div class="eight wide computer twelve wide mobile column">
                        <form class="ui form" runat="server">
                            <div class="nine wide field">
                                <label>被檢舉人名字</label>
                                <input type="text" placeholder="Reported Name" name="reportName">
                            </div>
                            <div class="ui field">
                                <label>檢舉事由</label>
                                <textarea rows="7" style="resize: none;" nmae='reportReasonTextarea' id='reportReason'></textarea>
                            </div>
                            <input class="ui green button" type="submit" name="reportConfirmBtn" value="確認">
                            <div class="ui error message"></div>
                        </form>
                    </div>
                </div>
                <div class="four wide computer two wide mobile column"></div>
            </div>
        </div>
    </section>
    <!-- report-section end -->

    <!-- #include file="includeStatic/footer.html" -->
</body>
</html>
