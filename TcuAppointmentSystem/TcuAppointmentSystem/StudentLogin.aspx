<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="TcuAppointmentSystem.StudentLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
.auto-style1 {
            font-size: xx-large;
            color: #000;
            text-align: center;
            width: 1300px;
            margin-left: 70px;
            margin-right: 0px;
            margin-top: 100px;
        }
        .auto-style2 {
            width: 106%;
        }
        .auto-style6 {
            width: 588px;
            text-align: right;
            height: 33px;
        }
        .auto-style7 {
            width: 293px;
            height: 33px;
        }
        .auto-style8 {
            height: 33px;
        }
        .auto-style3 {
            width: 588px;
            height: 50px;
        }
        .auto-style9 {
            width: 588px;
            height: 32px;
        }
        .auto-style10 {
            width: 293px;
            height: 32px;
            text-align: center;
        }
        .auto-style11 {
            height: 32px;
        }
        .auto-style12 {
            width: 293px;
            height: 50px;
        }
        .auto-style13 {
            width: 588px;
            text-align: right;
            height: 38px;
        }
        .auto-style14 {
            width: 293px;
            height: 38px;
        }
        .auto-style15 {
            height: 38px;
        }
        .auto-style16 {
            height: 50px;
        }
        body {
            background-image: url(Images/bb.jpg);
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
        .auto-style17 {
            width: 1303px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div class="auto-style1">
            <strong>Student Login</strong></div>
        <hr />
        <table class="auto-style2">
            <tr>
                <td class="auto-style6">StudentID:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox_User" runat="server" placeholder="Student ID" Font-Size="Medium" Height="30px" Width="280px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_User" ErrorMessage="Username is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Password:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox_password" runat="server" placeholder="Password" TextMode="Password" Font-Size="Medium" Height="30px" Width="280px"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_password" ErrorMessage="Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button" runat="server" align="center" Font-Size="Medium"  OnClick="Button1_Click" style="height: 50px" Text="Login" ToolTip="Login to User Page" Width="100px" CssClass="button" />
                    &nbsp;
                    <asp:Button ID="Button2" runat="server" align="center" Font-Size="Medium" CausesValidation="False"  OnClick="Button2_Click" Text="Back" ToolTip="Back to Home Page" Width="100px" Height="50px" CssClass="button" />
                </td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">Don&#39;t have an account ?</td>
                <td class="auto-style11">
                    <asp:LinkButton ID="LinkButton1" CausesValidation="False" runat="server" OnClick="LinkButton1_Click">Register Here</asp:LinkButton>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
