<%@ Page Language="C#" AutoEventWireup="true" CodeFile="members.aspx.cs" Inherits="admin_pages_members" %>

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
</head>
<body>
    <!-- #include file="templates/navbar.html" -->
    <!-- table-example start -->
    <section id="table-section">
        <div class="ui container">
            <table class="ui single line table">
                <thead>
                    <tr>
                        <th><center>StudentID</center></th>
                        <th><center>StudentName</center></th>
                        <th><center>Password</center></th>
                        <th><center>Picture</center></th>
                        <th><center>ViolativeFrequency</center></th>
                        <th><center>Permission</center></th>
                        <th><center>Suspension</center></th>
                    </tr>
                </thead>
                <tbody>
                    <%for (int i = 0; i < memberInfoLength; i++) { %>
                    <tr>
                        <td><center><% = studentID[i] %></center></td>
                        <td><center><% = studentName[i] %></center></td>
                        <td><center><% = password[i] %></center></td>
                        <td><center><img width="50p" height="50p" src="<%= picture[i] %>"></center></td>
                        <td><center><% = violativeFrequency[i] %></center></td>
                        <td><center><% = permission[i] %></center></td>
                        <td><center><% = suspension[i] %></center></td>
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
