<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminTeacherReg.aspx.cs" Inherits="TcuAppointmentSystem.AdminTeacherReg" %>

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
        .auto-style7 {
            height: 73px;
            width: 292px;
        }
        .auto-style5 {
            height: 33px;
            text-align: right;
            width: 926px;
        }
        .auto-style9 {
            height: 33px;
            width: 292px;
        }
        .auto-style6 {
            height: 58px;
            text-align: right;
            width: 926px;
        }
        .auto-style10 {
            height: 58px;
            width: 292px;
        }
        .auto-style17 {
            text-align: right;
            width: 926px;
            height: 39px;
        }
        .auto-style19 {
            width: 292px;
            height: 39px;
        }
        .auto-style11 {
            text-align: left;
            width: 926px;
        }
        .auto-style8 {
            width: 292px;
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
        .auto-style20 {
            height: 73px;
            width: 284px;
        }
        .auto-style21 {
            height: 33px;
            width: 284px;
        }
        .auto-style22 {
            height: 58px;
            width: 284px;
        }
        .auto-style23 {
            width: 284px;
            height: 39px;
        }
        .auto-style24 {
            width: 284px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div>
    
        <h2 class="auto-style1">
            Teacher Registration Form</h2>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" align="center" CausesValidation="False" OnClick="Button3_Click1" Text="Get" Font-Size="Medium" Width="90px" Height="35px" CssClass="button" />
                    Teacher ID:</td>
                <td class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="Teacherid" runat="server" placeholder="Student ID" Width="280px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Teacherid" ErrorMessage="*Student id is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">First Name:</td>
                <td class="auto-style21">
                    <asp:TextBox ID="Fname" runat="server" placeholder="First Name" Width="280px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Fname" ErrorMessage="*Fullname is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Last Name:</td>
                <td class="auto-style21">
                    <asp:TextBox ID="Lname" runat="server" placeholder="Last Name" Width="280px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Lname" ErrorMessage="*Fullname is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Department:</td>
                <td class="auto-style21">
                    <asp:DropDownList ID="Dept" runat="server" CausesValidation="True" Width="288px">
                        <asp:ListItem Text="--Select Department--"></asp:ListItem>
                        <asp:ListItem>CICT</asp:ListItem>
                        <asp:ListItem>COC</asp:ListItem>
                        <asp:ListItem Value="BSBA">COE</asp:ListItem>
                        <asp:ListItem Value="">BSCRIM</asp:ListItem>
                        <asp:ListItem>BSPSYCH</asp:ListItem>
                        <asp:ListItem>BSHRM</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Dept" ErrorMessage="*Course is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Email</td>
                <td class="auto-style22">
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
                <td class="auto-style23">
                    <asp:Button ID="Button1" runat="server" align="left" OnClick="Button1_Click" style="height: 35px" Text="Register" Font-Size="Medium" Width="112px" CssClass="button" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" align="right" CausesValidation="False" OnClick="Button2_Click" style="height: 35px" Text="Clear" Font-Size="Medium" Width="112px" CssClass="button" />
                </td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;&nbsp;&nbsp; 
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Back" Font-Size="Medium" Width="109px" CausesValidation="False" CssClass="button" />
                </td>
                <td class="auto-style24">
                    <asp:Button ID="Button4" runat="server" align="left" CausesValidation="False" OnClientClick="return confirm('Are you sure you want to delete data?')" OnClick="Button4_Click" Text="Delete" Font-Size="Medium" Width="112px" CssClass="button" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button5" runat="server" OnClientClick="return confirm('Are you sure you want to update data ?')" OnClick="Button5_Click" Text="Update" Font-Size="Medium" Width="112px" CssClass="button" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style8"></td>
            </tr>
        </table>
    
    </div>
    
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
