<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlsExample.aspx.cs" Inherits="Session5_Asp.net.ControlsExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Controls Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Select Country :
            <asp:DropDownList ID="ddlCountry" Width="30%" runat="server" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
        </div>
        <div>
            Select State :
            <asp:DropDownList ID="ddlState" Width="30%" runat="server"></asp:DropDownList>
        </div>

        <div>
            <asp:Calendar ID="calYear" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" OnSelectionChanged="calYear_SelectionChanged" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                <SelectorStyle BackColor="#FFCC66" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            </asp:Calendar>
            <asp:Label ID="lblDate" runat="server"></asp:Label>
        </div>
        <div>
            Gender : <asp:RadioButton ID="rdbMale" runat="server" Text="Male"  GroupName="gender" />  <asp:RadioButton ID="rdbFemale" runat="server" GroupName="gender" Text="Fe-Male" />
             <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />

        </div>

    </form>
</body>
</html>
