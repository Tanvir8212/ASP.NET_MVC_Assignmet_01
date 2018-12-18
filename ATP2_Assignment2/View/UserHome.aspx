<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="ATP2_Assignment2.View.UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
     <h1>Welcome Mr. <%=Session["logID"]%> </h1>
     
    

         <p>
             &nbsp;</p>
         <p>
             <asp:Button ID="Button1" runat="server" Height="48px" Text="Logout" Width="123px" OnClick="Button1_Click" />
             <asp:Button ID="Button2" runat="server" Height="47px" OnClick="Button2_Click" Text="Forget Password" Width="122px" />
         </p>
     </form>
     
    

</body>
</html>
