<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reports.aspx.cs" Inherits="admin_pages_reports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <title>CSIM Booker Admin</title>
    <link rel="shortcut icon" href="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.css">
    <link rel="stylesheet" href="../css/basic.css">
    <link rel="stylesheet" href="../css/set-fonts.css">
    <link rel="stylesheet" href="../css/admin-index-style.css">
    <link rel="stylesheet" href="../css/rwd-navbar.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.js"></script>
    <script src="../js/main.js"></script>
    <script src="../js/del.js"></script>
</head>
<body>
    <!-- #include file="templates/navbar.html" -->

    <!-- table-example start -->
    <section id="table-section">
        <div class="ui container">
            <table id="table" class="ui single line table">
                <thead>
                    <tr>
                        <th><center>ReportID</center></th>
                        <th><center>Reason</center></th>
                        <th><center>StudentID</center></th>
                        <th><center>Delete</center></th>
                    </tr>
                </thead>
                <tbody>
                    <%for (int i = 0; i < reportReasonInfoLength; i++) { %>
                    <tr id="<% = reportID[i] %>">
                        <td><center><% = reportID[i] %></center></td>
                        <td><center><% = reason[i] %></center></td>
                        <td><center><% = studentID[i] %></center></td>
                        <td><center><button class="ui red del button">Delete</button></center></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </section>
    <!-- table-example end -->

    <!-- #include file="templates/footer.html" -->
</body>
</html>
