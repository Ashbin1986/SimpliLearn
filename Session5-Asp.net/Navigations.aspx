<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Navigations.aspx.cs" Inherits="Session5_Asp.net.Navigations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="pnlRedirect" runat="server">

            <asp:Button ID="btnRedirect" runat="server" Text ="- Redirect - " BackColor="Yellow" ForeColor="Red" OnClick="btnRedirect_Click" />
            <asp:Button ID="btnServerTransfer" runat="server" Text ="- Server.Transfer - " BackColor="Yellow" ForeColor="Blue" OnClick="btnServerTransfer_Click" />

        </asp:Panel>
        <asp:PlaceHolder ID="plcAnchor" runat="server" >
            <a href="Server_Validations.aspx"> Student form</a>

        </asp:PlaceHolder>
    </form>
</body>
</html>
