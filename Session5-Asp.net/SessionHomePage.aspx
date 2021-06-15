<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SessionHomePage.aspx.cs" Inherits="Session5_Asp.net.SessionHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hoem Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblUserName" runat="server" ></asp:Label>
        </div>

        <div>

            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
        </div>
    </form>
</body>
</html>
