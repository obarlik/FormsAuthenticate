<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FormsAuthenticate.Default" %>
<%@ Import Namespace="System.Runtime.Remoting.Contexts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<form id="form1" runat="server">
    <div>
        <h2>Welcome <asp:LoginName runat="server" />!</h2><br/>
        <asp:LinkButton runat="server" Text="Log out" ID="LogoutButton" OnClick="LogoutButton_Click"/>
    </div>
</form>
</body>
</html>
