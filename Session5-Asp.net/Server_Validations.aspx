<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Server_Validations.aspx.cs" Inherits="Session5_Asp.net.Server_Validations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student form</title>
</head>
<body>
    <form id="frmStudent" runat="server">
        <center>


            <table>
                <tr>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server"  ForeColor="Red"/>
                        </td>
                    
                   
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblStudentName" Text="Student Name" runat="server"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtStudentName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqtxtStudentName" runat="server" Display="Dynamic" Text="*" ForeColor="Red" ErrorMessage="Name is required." ControlToValidate="txtStudentName"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAge" Text="Student Age" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox><asp:RangeValidator ID="rangetxtAge" runat="server" ControlToValidate="txtAge" MinimumValue="18" MaximumValue="25"
                            ErrorMessage="Age must be between 18 to 25"></asp:RangeValidator></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEmail" Text="Student Email" runat="server"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqtxtEmail" runat="server" ForeColor="Red" ErrorMessage="Email is required." Text="*" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regextxtEmail" ControlToValidate="txtEmail" runat="server" ErrorMessage="Email is not valid."
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassword" Text="Password" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox></td>
                </tr> <tr>
                    <td>
                        <asp:Label ID="Label1" Text="New Password" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNewPassword" TextMode="Password" runat="server"></asp:TextBox>

                        <asp:CompareValidator ID="cmprPasswords" runat="server" ErrorMessage="Old and new password does not matched" ForeColor="Red" ControlToValidate="txtNewPassword" ControlToCompare="txtPassword" ></asp:CompareValidator>
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
                    <td colspan="2">
                        <asp:FileUpload ID="fileUploadProfile" runat="server" />
                        <asp:Label ID="lblFileMessage" runat="server" ForeColor="Red" Visible="false" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false" Text="Please fill above details."></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit"  OnClick="btnSubmit_Click"/>
                    </td>
                </tr>

            </table>
        </center>
    </form>
</body>
</html>
