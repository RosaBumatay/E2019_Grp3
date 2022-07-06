<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="TcuAppointmentSystem.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            font-size: xx-large;
            color: #6699FF;
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style6 {
            width: 577px;
            text-align: right;
            height: 33px;
        }
        .auto-style7 {
            width: 231px;
            height: 33px;
        }
        .auto-style8 {
            height: 33px;
        }
        .auto-style4 {
            width: 577px;
            text-align: right;
        }
        .auto-style5 {
            width: 231px;
        }
        .auto-style9 {
            width: 577px;
            height: 40px;
        }
        .auto-style10 {
            width: 231px;
            height: 40px;
        }
        .auto-style11 {
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class="auto-style1">
            <strong>Admin Login</strong></div>
        <hr />
        <table class="auto-style2">
            <tr>
                <td class="auto-style6">Username:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox_useradmin" runat="server" placeholder="Username" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_useradmin" ErrorMessage="Username is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Password:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox_passwordadmin" runat="server" placeholder="Password" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_passwordadmin" ErrorMessage="Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button" runat="server" align="center" BorderColor="#99CCFF" BorderStyle="Dotted" Font-Names="Calibri Light" Font-Overline="False" Font-Size="Small" Font-Underline="True" ForeColor="#6699FF" OnClick="Button1_Click" Text="Login" ToolTip="Login to Admin Page" Width="80px" />
                    &nbsp;
                    <asp:Button ID="Button2" runat="server" align="center" BorderColor="#99CCFF" BorderStyle="Dotted" CausesValidation="False" Font-Names="Calibri Light" Font-Size="Small" Font-Strikeout="False" Font-Underline="True" ForeColor="#6699FF" OnClick="Button2_Click" Text="Back" ToolTip="Back to Home Page" Width="80px" />
                </td>
                <td class="auto-style11"></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
