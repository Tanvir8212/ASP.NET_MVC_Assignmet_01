<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="ATP2_Assignment2.View.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <style>
        body {
            padding: 10%;
        }
    </style>

</head>
<body>
     <h2>Change Password</h2>

    <form action="../Controller/UserController.aspx" method="post" runat="server">
        
        <div class="form-group">
            <label for="OldPassword">Old Password</label>
            <input type="password" class="form-control" id="OldPassword" placeholder="Old Password" runat="server"/>
        </div>
        <div class="form-group">
            <label for="NewPassword">New Password</label>
            <input type="password" class="form-control" id="NewPassword" placeholder="New Password Password" runat="server"/>
        </div>

        <button type="submit" class="btn btn-primary" name="submit" id="submit" value="changePassword">Change Password</button>
    </form>
</body>
</html>
