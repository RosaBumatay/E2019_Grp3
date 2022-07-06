<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="TcuAppointmentSystem.StudentRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 634px;
        }
        .auto-style3 {
            height: 33px;
            width: 634px;
        }
        .auto-style5 {
            width: 625px;
        }
        .auto-style6 {
            height: 33px;
            width: 625px;
        }
        .auto-style7 {
            text-align: center;
            font-weight: normal;
        }
        .auto-style8 {
            height: 33px;
            width: 634px;
            color: #FF3300;
        }
        .auto-style9 {
            width: 295px;
            height: 3px;
        }
        .auto-style10 {
            width: 625px;
            height: 3px;
            text-align: right;
        }
        .auto-style11 {
            width: 634px;
            height: 3px;
        }
        .auto-style12 {
            width: 295px;
            height: 33px;
        }
        .auto-style13 {
            text-align: left;
        }
        .auto-style14 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 class="auto-style7">Registration Form</h1>
        <table>
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" Text="Get" CausesValidation="False" OnClick="Button1_Click" />
&nbsp;
                    Student ID:</td>
                <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="Studid" runat="server" placeholder="Student ID" Width="280px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style11">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" class="auto-style5">Password:</td>
                <td style="width: 295px">
                    <asp:TextBox ID="Password" runat="server" placeholder="Password" TextMode="Password" Width="280px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Password" ErrorMessage="*Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="auto-style5">Confirm Password:</td>
                <td style="width: 295px">
                    <asp:TextBox ID="Confirm" runat="server" placeholder="Confirm Password" TextMode="Password" Width="280px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Confirm" ErrorMessage="*Confirm Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="Confirm" ErrorMessage="*Password not match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="auto-style6">First Name:</td>
                <td style="height: 33px; width: 295px;">
                    <asp:TextBox ID="Txt_First" runat="server" Enabled="false" placeholder="First Name" Width="280px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Txt_First" ErrorMessage="*First Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td align="right" class="auto-style6">Last Name:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="Txt_Lastname" runat="server" Enabled="false" placeholder ="Last Name" Width="277px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Txt_Lastname" ErrorMessage="*Last Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td align="right" class="auto-style6">Course:</td>
                <td style="height: 33px; width: 295px;">
                    <asp:TextBox ID="Txt_Course" runat="server" Enabled="false" placeholder ="Course" Width="274px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Txt_Course" ErrorMessage="*Course is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td align="right" class="auto-style6">Email</td>
                <td class="auto-style12">
                    <asp:TextBox ID="Txt_Email" runat="server"  Enabled="false" placeholder="Email" Width="280px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Txt_Email" ErrorMessage="*Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td align="right" class="auto-style5">&nbsp;</td>
                <td style="width: 295px" class="auto-style13">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Register" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" CausesValidation="False" OnClick="Button3_Click" Text="Clear" Width="110px" />
                    </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="auto-style5">&nbsp;</td>
                <td style="width: 295px" class="auto-style14">
                    <asp:Button ID="Button4" runat="server" CausesValidation="False" OnClick="Button4_Click" Text="Back" Width="113px" />
                    </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
