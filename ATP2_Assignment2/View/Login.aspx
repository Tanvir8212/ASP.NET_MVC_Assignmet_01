<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ATP2_Assignment2.View.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>

    <style>
        body {
            padding: 20%;
        }
    </style>

</head>
<body>
    <form action="../Controller/LogController.aspx"  runat="server" method="post" id="form1">
        <div class="form-group">
            <label for="UserName">User Name</label>
            <input type="text" class="form-control" id="UserName" name="UserName" placeholder="User Name" runat="server" />
        </div>
        <div class="form-group">
            <label for="Password">Password</label>
            <input type="password" class="form-control" id="Password" name="Password" placeholder="Password" runat="server" />
        </div>
        <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" id="RememberMe" name="RememberMe" runat="server" value="true"/>
            <input type="hidden" class="form-check-input" id="DontRememberMe" name="RememberMe" runat="server" value="false"/>
            <label class="form-check-label" for="RememberMe">Remember Me</label>
        </div>
        <button type="submit" id="Logins" name="Logins" class="btn btn-primary" runat="server" value="Logins">Login</button>
    </form>
    
</body>
</html>
