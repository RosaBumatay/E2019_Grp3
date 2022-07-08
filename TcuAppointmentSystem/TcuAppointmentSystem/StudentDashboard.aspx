<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDashboard.aspx.cs" Inherits="TcuAppointmentSystem.StudentDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style5 {
            font-size: x-large;
            color: #000;
        }
        .auto-style7 {
            width: 199px;
            height: 45px;
            font-size: x-large;
            color: #FF3300;
            text-align: right;
        }
        .auto-style8 {
            height: 45px;
        }
        .auto-style9 {
            color: #000000;
            font-size: medium;
        }
        .auto-style10 {
            height: 45px;
            width: 197px;
        }
        .auto-style11 {
            width: 197px;
        }
        .auto-style13 {
            text-align: center;
            width: 168px;
        }
        .auto-style14 {
            height: 45px;
            width: 168px;
        }
        .auto-style15 {
            width: 168px;
        }
        .auto-style16 {
            width: 199px;
            text-align: right;
        }
        .auto-style17 {
            width: 199px;
        }
        .auto-style20 {
            height: 45px;
            width: 253px;
        }
        .auto-style21 {
            width: 253px;
        }
        .auto-style22 {
            height: 45px;
            width: 226px;
        }
        .auto-style23 {
            width: 226px;
        }
        .auto-style24 {
            width: 199px;
            height: 37px;
        }
        .auto-style25 {
            width: 197px;
            height: 37px;
        }
        .auto-style26 {
            width: 168px;
            height: 37px;
        }
        .auto-style27 {
            width: 226px;
            height: 37px;
        }
        .auto-style28 {
            width: 253px;
            height: 37px;
        }
        .auto-style29 {
            height: 37px;
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
        .auto-style30 {
            width: 199px;
            height: 33px;
        }
        .auto-style31 {
            width: 197px;
            height: 33px;
        }
        .auto-style32 {
            width: 168px;
            height: 33px;
        }
        .auto-style33 {
            width: 226px;
            height: 33px;
        }
        .auto-style34 {
            width: 253px;
            height: 33px;
        }
        .auto-style35 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style2">
    
    &nbsp;&nbsp;&nbsp; <strong><span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student Appointment Page<br />
        </span></strong>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                        <asp:Label ID="Label1" runat="server" Text="Student ID:" CssClass="auto-style9"></asp:Label>
                        </td>
                <td class="auto-style10">
                        <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                <td class="auto-style14"></td>
                <td class="auto-style22">Instructor ID:</td>
                <td class="auto-style20">
                        <asp:TextBox ID="Instructor" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style8"><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Instructor" ErrorMessage="*ID is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style16">First Name:</td>
                <td class="auto-style11">
                        <asp:TextBox ID="Fname" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style13">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get Full Name" Width="134px" CausesValidation="False" CssClass="button"/>
                    </td>
                <td class="auto-style23">First Name:</td>
                <td class="auto-style21">
                        <asp:TextBox ID="Fname1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Fname1" ErrorMessage="*First Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style16">Last Name:</td>
                <td class="auto-style11">
                        <asp:TextBox ID="Lname" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style23">Last Name:</td>
                <td class="auto-style21">
                        <asp:TextBox ID="Lname1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Lname1" ErrorMessage="*Last Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style16">Course:</td>
                <td class="auto-style11">
                        <asp:TextBox ID="Course" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style23">Department:</td>
                <td class="auto-style21">
                        <asp:TextBox ID="Dept" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Dept" ErrorMessage="*Department is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style16">Student Email:</td>
                <td class="auto-style11"><asp:TextBox ID="stemail" runat="server" Enabled="False"></asp:TextBox>
                                    </td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style23">Date of Appointment: </td>
                <td class="auto-style21">
                                    <asp:TextBox ID="DateApp" runat="server" type="date" Width="162px"></asp:TextBox>
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DateApp" ErrorMessage="*Date is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style15"></td>
                <td class="auto-style23">Time of Appointment:&nbsp;</td>
                <td class="auto-style21"><asp:TextBox ID="Time" runat="server" OnTextChanged="TextBox2_TextChanged" type="time" Width="161px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Time" ErrorMessage="*Time is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
            </tr>
            <tr>
                <td class="auto-style30"></td>
                <td class="auto-style31"></td>
                <td class="auto-style32"></td>
                <td class="auto-style33">&nbsp;Instructor Email:</td>
                <td class="auto-style34"><asp:TextBox ID="InstructorEmail" runat="server" Enabled="False" Width="162px"></asp:TextBox>
                                </td>
                <td class="auto-style35">
                    <asp:RequiredFieldValidator ID="validator" runat="server" ControlToValidate="InstructorEmail" ErrorMessage="*Instructor Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style23">Status:</td>
                <td class="auto-style21"><asp:DropDownList ID="DropDownList1" runat="server" Width="171px">
                            <asp:ListItem>Pending</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*Status is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Logout" CausesValidation="False" OnClientClick="return confirm('Are you sure you want to log out ?')" CssClass="button"/>
                </td>
                <td class="auto-style25"></td>
                <td class="auto-style26"></td>
                <td class="auto-style27">
                                    <asp:Button ID="Button2" runat="server" Text="Book Appointment" OnClick="Button2_Click" CssClass="button"/>
                                </td>
                <td class="auto-style28"></td>
                <td class="auto-style29">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Cancel Appointment" OnClientClick="return confirm('Are you sure you want cancel appointment ?')" CssClass="button"/>
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" Width="1458px">
        </asp:GridView>
    </form>
</body>
</html>
