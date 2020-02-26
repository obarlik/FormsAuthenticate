<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FormsAuthenticate.Login.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:panel id="loginerror" runat="server" Visible="False">
                <h4 style="color:red">Invalid credentials!</h4>
            </asp:panel>
            <input type="hidden" name="ReturnUrl" value="<%: Request["ReturnUrl"] %>"/>
            <table>
                <tr>
                    <td><label for="user">User Name:</label></td>
                    <td><input runat="server" id="username" name="username" type="text" /></td>
                </tr>
                <tr>
                    <td><label for="password">Password:</label></td>
                    <td><input runat="server" id="password" name="password" type="password" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input runat="server" id="remember" name="remember" type="checkbox" />
                        <label for="remember">Remember me</label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:right"><input type="submit" value="Login" /></td>
                </tr>
            </table> 
        </div>
    </form>
</body>
</html>
