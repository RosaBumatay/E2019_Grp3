<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherLogin.aspx.cs" Inherits="TcuAppointmentSystem.TeacherLogin" %>

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
            width: 597px;
            text-align: right;
            height: 33px;
        }
        .auto-style7 {
            width: 240px;
            height: 33px;
        }
        .auto-style8 {
            height: 33px;
        }
        .auto-style4 {
            width: 597px;
            text-align: right;
        }
        .auto-style12 {
            width: 240px;
        }
        .auto-style3 {
            width: 597px;
        }
        .auto-style9 {
            width: 597px;
            height: 32px;
        }
        .auto-style10 {
            width: 240px;
            height: 32px;
            text-align: center;
        }
        .auto-style11 {
            height: 32px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class="auto-style1">
            <strong>Instructor Login</strong></div>
        <hr />
        <table class="auto-style2">
            <tr>
                <td class="auto-style6">InstructorID:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox_User" runat="server" placeholder="ID" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_User" ErrorMessage="Username is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Password:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox_password" runat="server" placeholder="Password" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_password" ErrorMessage="Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button" runat="server" align="center" BorderColor="#99CCFF" BorderStyle="Dotted" Font-Names="Calibri Light" Font-Overline="False" Font-Size="Small" Font-Underline="True" ForeColor="#6699FF"  style="height: 36px" Text="Login" ToolTip="Login to User Page" Width="80px" OnClick="Button_Click" />
                    &nbsp;
                    <asp:Button ID="Button2" runat="server" align="center" BorderColor="#99CCFF" BorderStyle="Dotted" CausesValidation="False" Font-Names="Calibri Light" Font-Size="Small" Font-Strikeout="False" Font-Underline="True" ForeColor="#6699FF" OnClick="Button2_Click" style="height: 36px" Text="Back" ToolTip="Back to Home Page" Width="80px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">Don&#39;t have an account ?</td>
                <td class="auto-style11">
                    <asp:LinkButton ID="LinkButton1" CausesValidation="False" runat="server" OnClick="LinkButton1_Click">Register Here</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
