<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="Session5_Asp.net.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>User Name</td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:CheckBox ID="chckRememberme" runat="server" Text="Remember me" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" BackColor="#FFCC66" Text="Login" OnClick="btnLogin_Click" />
                        <asp:Literal ID="ltrMessage" runat="server"></asp:Literal>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
