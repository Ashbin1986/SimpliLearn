<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewStateExample.aspx.cs" Inherits="Session5_Asp.net.ViewStateExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <asp:GridView ID="gvEmployee" runat="server"></asp:GridView>
        <asp:HiddenField ID="hdnCounter" runat="server" />
       <asp:Button ID="btnGetRecords" Text="GetRecords" runat="server" OnClick="btnGetRecords_Click" />

         <asp:Button ID="BtnRedirect" Text="ShowRecords" runat="server" OnClick="BtnRedirect_Click" />
    </form>
</body>
</html>
