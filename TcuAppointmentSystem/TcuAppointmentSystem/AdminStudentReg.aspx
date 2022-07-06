<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminStudentReg.aspx.cs" Inherits="TcuAppointmentSystem.AdminStudentReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 1219px;
        }
        .auto-style3 {
            height: 73px;
            text-align: right;
            width: 926px;
        }
        .auto-style5 {
            height: 33px;
            text-align: right;
            width: 926px;
        }
        .auto-style6 {
            height: 58px;
            text-align: right;
            width: 926px;
        }
        .auto-style7 {
            height: 73px;
            width: 292px;
        }
        .auto-style8 {
            width: 292px;
        }
        .auto-style9 {
            height: 33px;
            width: 292px;
        }
        .auto-style10 {
            height: 58px;
            width: 292px;
        }
        .auto-style11 {
            text-align: left;
            width: 926px;
        }
        .auto-style12 {
            height: 73px;
            width: 282px;
        }
        .auto-style13 {
            width: 282px;
        }
        .auto-style14 {
            height: 33px;
            width: 282px;
        }
        .auto-style15 {
            height: 58px;
            width: 282px;
        }
        .auto-style16 {
            font-size: medium;
        }
        .auto-style17 {
            text-align: right;
            width: 926px;
            height: 39px;
        }
        .auto-style18 {
            width: 282px;
            height: 39px;
        }
        .auto-style19 {
            width: 292px;
            height: 39px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2 class="auto-style1">
            <asp:Label ID="LabelAdmin" runat="server" CssClass="auto-style16">Welcome Admin</asp:Label>
&nbsp;Student Registration Form</h2>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" align="center" CausesValidation="False" OnClick="Button3_Click1" Text="Get" Width="90px" />
                    Student ID:</td>
                <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="Studid" runat="server" placeholder="Student ID" Width="280px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Studid" ErrorMessage="*Student id is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">First Name:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="Fname" runat="server" placeholder="Fullname" Width="280px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Fname" ErrorMessage="*Fullname is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Last Name:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="Lname" runat="server" placeholder="Fullname" Width="280px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Lname" ErrorMessage="*Fullname is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Course:</td>
                <td class="auto-style14">
                    <asp:DropDownList ID="Course" runat="server" CausesValidation="True" Width="288px">
                        <asp:ListItem Text="--Select Course--" Value=""></asp:ListItem>
                        <asp:ListItem>BSCS</asp:ListItem>
                        <asp:ListItem>BSIT</asp:ListItem>
                        <asp:ListItem Value="BSBA">BSBA</asp:ListItem>
                        <asp:ListItem Value="">BSCRIM</asp:ListItem>
                        <asp:ListItem>BSPSYCH</asp:ListItem>
                        <asp:ListItem>BSHRM</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Course" ErrorMessage="*Course is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Email</td>
                <td class="auto-style15">
                    <asp:TextBox ID="Email" runat="server" placeholder="Email" Width="280px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Email" ErrorMessage="*Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="*Enter a Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style18">
                    <asp:Button ID="Button1" runat="server" align="left" OnClick="Button1_Click" style="height: 35px" Text="Register" Width="112px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" align="right" CausesValidation="False" OnClick="Button2_Click" style="height: 35px" Text="Clear" Width="112px" />
                </td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Back" Width="106px" CausesValidation="False" />
                    &nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style13">
                    <asp:Button ID="Button4" runat="server" align="left" CausesValidation="False" OnClientClick="return confirm('Are you sure you want to delete the data ?')" OnClick="Button4_Click" Text="Delete" Width="112px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button5" runat="server" OnClientClick="return confirm('Are you sure you want to update the data ?')" OnClick="Button5_Click" Text="Update" Width="109px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style8"></td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="1478px">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    </form>
</body>
</html>
