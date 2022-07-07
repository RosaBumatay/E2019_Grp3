<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="TcuAppointmentSystem.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            font-size: xx-large;
            color: #000000;
            text-align: center;
            width: 1217px;
            margin-left: 119px;
            margin-right: 0px;
            margin-top: 100px;
        }
        .auto-style2 {
            width: 93%;
        }
        .auto-style6 {
            width: 577px;
            text-align: right;
            height: 33px;
        }
        .auto-style7 {
            width: 255px;
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
            width: 255px;
        }
        .auto-style9 {
            width: 577px;
            height: 40px;
        }
        .auto-style10 {
            width: 255px;
            height: 40px;
        }
        .auto-style11 {
            height: 40px;
        }
        body {
            background-image: url(assets/bb.jpg);
            background-size: cover;
            font-family: Arial, Helvetica, sans-serif;
        }
        .button {
            transition-duration: 0.4s;
            background-color: white;
            border:2px solid #555555;
        }
        .button:hover{
            background-color: #555555;
            color:white;
            
        }
        .auto-style12 {
            width: 1276px;
            margin-left: 115px;
        }
    </style>
</head>
<body style="width: 1395px; height: 213px">
    <form id="form1" runat="server">
    <div>
    
        <div class="auto-style1">
            <strong>Admin Login</strong></div>
        <hr class="auto-style12" />
        <table class="auto-style2">
            <tr>
                <td class="auto-style6">Username:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox_useradmin" runat="server" placeholder="Username" Font-Size="Medium" Height="30px" Width="280px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_useradmin" ErrorMessage="Username is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Password:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox_passwordadmin" runat="server" placeholder="Password" TextMode="Password" Font-Size="Medium" Height="30px" Width="280px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_passwordadmin" ErrorMessage="Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button" runat="server" align="center" OnClick="Button1_Click" Text="Login" ToolTip="Login to Admin Page" Font-Size="Medium" Height="50px" Width="100px" CssClass="button" />
                    &nbsp;
                    <asp:Button ID="Button2" runat="server" align="center" OnClick="Button2_Click" Text="Back" ToolTip="Back to Home Page" Font-Size="Medium" Height="50px" Width="100px" CssClass="button" />
                </td>
                <td class="auto-style11"></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
