<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ATP2_Assignment2.View.Registration" %>

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
    
    <h2>Registration</h2>

    <form action="../Controller/RegController.aspx" method="post" runat="server">
        <div class="form-group">
            <label for="UserName">User Name</label>
            <input type="text" class="form-control" id="UserName" placeholder="User Name" runat="server">
        </div>
        <div class="form-group">
            <label for="Password">Email</label>
            <input type="email" class="form-control" id="Email" placeholder="Email" runat="server">
        </div>
        <div class="form-group">
            <label for="Password">Password</label>
            <input type="password" class="form-control" id="Password" placeholder="Password" runat="server">
        </div>
        <div class="form-group">
            <label for="ConfirmPassword">Confirm Password</label>
            <input type="password" class="form-control" id="ConfirmPassword" placeholder="Confirm Password" runat="server">
        </div>

        <button type="submit" class="btn btn-primary">Login</button>
    </form>

</body>
</html>
