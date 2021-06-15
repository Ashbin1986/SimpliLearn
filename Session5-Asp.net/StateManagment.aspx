<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StateManagment.aspx.cs" Inherits="Session5_Asp.net.StateManagment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            State-Management
             <table>

                 <tr>
                     <td>
                         <asp:Label ID="lblStudentName" Text="Student Name" runat="server"></asp:Label></td>
                     <td>
                         <asp:TextBox ID="txtStudentName" runat="server"></asp:TextBox>


                     </td>
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="lblAge" Text="Student Age" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:TextBox ID="txtAge" runat="server"></asp:TextBox></td>
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="lblEmail" Text="Student Email" runat="server"></asp:Label></td>
                     <td>
                         <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

                     </td>
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="lblPassword" Text="Password" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox></td>
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="Label1" Text="New Password" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:TextBox ID="txtNewPassword" TextMode="Password" runat="server"></asp:TextBox>

                     </td>
                 </tr>

                 <tr>
                     <td>
                         <asp:Label ID="lblQualification" Text="Qualification" runat="server"></asp:Label></td>
                     <td>

                         <asp:DropDownList ID="ddlQualification" runat="server" Width="100%">
                             <asp:ListItem Text="B-TECH" Value="BTECH"></asp:ListItem>
                             <asp:ListItem Text="MCA" Value="MCA"></asp:ListItem>

                         </asp:DropDownList>
                     </td>
                 </tr>

                 <tr>
                     <td>&nbsp;</td>
                     <td>
                         <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
                     </td>
                 </tr>

             </table>



        </div>



    </form>
</body>
</html>
