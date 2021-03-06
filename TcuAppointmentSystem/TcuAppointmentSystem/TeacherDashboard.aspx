<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherDashboard.aspx.cs" Inherits="TcuAppointmentSystem.TeacherDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

      .auto-style1 {
            width: 100%;
        }
        .auto-style7 {
            width: 145px;
            height: 45px;
            font-size: x-large;
            color: #FF3300;
            text-align: right;
        }
        .auto-style9 {
            color: #000000;
            font-size: medium;
        }
        .auto-style10 {
            height: 45px;
            width: 197px;
        }
        .auto-style8 {
            height: 45px;
            width: 431px;
        }
        .auto-style16 {
            width: 145px;
            text-align: right;
        }
        .auto-style11 {
            width: 197px;
        }
        .auto-style13 {
            text-align: center;
            width: 98px;
        }
        .auto-style25 {
            width: 197px;
            height: 39px;
        }
        .auto-style29 {
            height: 39px;
            width: 431px;
        }
        .auto-style30 {
            width: 145px;
            text-align: right;
            height: 33px;
        }
        .auto-style31 {
            width: 197px;
            height: 33px;
        }
        .auto-style35 {
            height: 33px;
            width: 431px;
        }
        .auto-style36 {
            width: 145px;
            height: 33px;
        }
        .auto-style37 {
            width: 145px;
        }
        .auto-style38 {
            width: 145px;
            height: 39px;
        }
        .auto-style55 {
            height: 45px;
            width: 280px;
            text-align: right;
        }
        .auto-style56 {
            width: 280px;
            text-align: right;
        }
        .auto-style57 {
            width: 280px;
            text-align: right;
            height: 33px;
        }
        .auto-style58 {
            width: 280px;
        }
        .auto-style59 {
            width: 280px;
            height: 39px;
        }
        .auto-style60 {
            height: 45px;
            width: 98px;
        }
        .auto-style61 {
            width: 98px;
        }
        .auto-style62 {
            width: 98px;
            height: 33px;
        }
        .auto-style63 {
            width: 98px;
            height: 39px;
        }
        .auto-style64 {
            height: 45px;
            width: 192px;
        }
        .auto-style65 {
            width: 192px;
        }
        .auto-style66 {
            width: 192px;
            height: 33px;
        }
        .auto-style67 {
            width: 192px;
            height: 39px;
        }
        .auto-style68 {
            width: 145px;
            height: 19px;
        }
        .auto-style69 {
            width: 197px;
            height: 19px;
        }
        .auto-style71 {
            width: 98px;
            height: 19px;
        }
        .auto-style72 {
            width: 280px;
            text-align: right;
            height: 19px;
        }
        .auto-style73 {
            width: 192px;
            height: 19px;
        }
        .auto-style74 {
            height: 19px;
            width: 431px;
        }
        .auto-style75 {
            font-size: x-large;
            color: #FF3300;
        }
        .auto-style76 {
            text-align: center;
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
        .auto-style77 {
            height: 45px;
            width: 160px;
        }
        .auto-style78 {
            width: 160px;
        }
        .auto-style79 {
            width: 160px;
            height: 33px;
        }
        .auto-style80 {
            width: 160px;
            height: 19px;
        }
        .auto-style81 {
            width: 160px;
            height: 39px;
        }
        .auto-style82 {
            width: 431px;
        }
    </style>
</head>
<body style="width: 1440px">
    <form id="form1" runat="server">
    <div>
        <div class="auto-style76">
            <strong><span class="auto-style75">Instructor Appointment Page</span></strong>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                        <asp:Label ID="Label1" runat="server" Text="Student ID:" CssClass="auto-style9"></asp:Label>
                        </td>
                <td class="auto-style10">
                        <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                <td class="auto-style77">
                        &nbsp;</td>
                <td class="auto-style60"></td>
                <td class="auto-style55">Instructor ID:</td>
                <td class="auto-style64">
                        <asp:TextBox ID="Instructor" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">First Name:</td>
                <td class="auto-style11">
                        <asp:TextBox ID="Fname" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style78">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="Fname" ErrorMessage="*First Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style13">
                        <asp:Button ID="Button1" runat="server"  Text="Get Full Name" Width="185px" CausesValidation="False" OnClick="Button1_Click" CssClass="button"/>
                    </td>
                <td class="auto-style56">First Name:</td>
                <td class="auto-style65">
                        <asp:TextBox ID="Fname1" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style82">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Fname1" ErrorMessage="*First Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style16">Last Name:</td>
                <td class="auto-style11">
                        <asp:TextBox ID="Lname" runat="server"></asp:TextBox>
                    </td>
                <td class="auto-style78">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="Lname" ErrorMessage="*Last Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style61">&nbsp;</td>
                <td class="auto-style56">Last Name:</td>
                <td class="auto-style65">
                        <asp:TextBox ID="Lname1" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style82">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Lname1" ErrorMessage="*Last Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style30">Course:</td>
                <td class="auto-style31">
                        <asp:TextBox ID="Course" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                <td class="auto-style79">
                        &nbsp;</td>
                <td class="auto-style62"></td>
                <td class="auto-style57">Department:</td>
                <td class="auto-style66">
                        <asp:TextBox ID="Dept" runat="server" Enabled="False" Width="161px"></asp:TextBox>
                </td>
                <td class="auto-style35"> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Dept" ErrorMessage="*Department is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style16">Student Email:</td>
                <td class="auto-style11"><asp:TextBox ID="stemail" runat="server" Enabled="False"></asp:TextBox>
                                    </td>
                <td class="auto-style78">&nbsp;</td>
                <td class="auto-style61">&nbsp;</td>
                <td class="auto-style56">Date of Appointment: </td>
                <td class="auto-style65">
                                    <asp:TextBox ID="DateApp" runat="server" type="date" Enabled="False" Width="164px"></asp:TextBox>
                    </td>
                <td class="auto-style82">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DateApp" ErrorMessage="*Date is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
            </tr>
            <tr>
                <td class="auto-style36"></td>
                <td class="auto-style31"></td>
                <td class="auto-style79">&nbsp;</td>
                <td class="auto-style62"></td>
                <td class="auto-style57">Time of Appointment:&nbsp;</td>
                <td class="auto-style66"><asp:TextBox ID="Time" runat="server" type="time" Enabled="False" Width="164px"></asp:TextBox>
                </td>
                <td class="auto-style35">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Time" ErrorMessage="*Time is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
            </tr>
            <tr>
                <td class="auto-style68"></td>
                <td class="auto-style69"></td>
                <td class="auto-style80"></td>
                <td class="auto-style71"></td>
                <td class="auto-style72">&nbsp;Instructor Email:</td>
                <td class="auto-style73"><asp:TextBox ID="InstructorEmail" runat="server" Enabled="False"></asp:TextBox>
                                </td>
                <td class="auto-style74">
                    <asp:RequiredFieldValidator ID="validator" runat="server" ControlToValidate="InstructorEmail" ErrorMessage="*Instructor Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
            </tr>
            <tr>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style78">&nbsp;</td>
                <td class="auto-style61">&nbsp;</td>
                <td class="auto-style56">Status:</td>
                <td class="auto-style65"><asp:DropDownList ID="DropDownList1" runat="server" Width="172px">
                            <asp:ListItem>Available</asp:ListItem>
                            <asp:ListItem>Not Available</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                <td class="auto-style82">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*Status is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
            </tr>
            <tr>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style78">&nbsp;</td>
                <td class="auto-style61">&nbsp;</td>
                <td class="auto-style58">&nbsp;</td>
                <td class="auto-style65">&nbsp;</td>
                <td class="auto-style82">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style38">
                    <asp:Button ID="Button3" runat="server" Text="Logout" CausesValidation="False" OnClientClick="return confirm('Are you sure you want to log out ?')" OnClick="Button3_Click" CssClass="button"/>
                </td>
                <td class="auto-style25"></td>
                <td class="auto-style81">&nbsp;</td>
                <td class="auto-style63">
                                    <asp:Button ID="Button2" runat="server" Text="Update Appointment" OnClick="Button2_Click" CssClass="button" Width="186px"/>
                                </td>
                <td class="auto-style59">
                                    &nbsp;</td>
                <td class="auto-style67"></td>
                <td class="auto-style29">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" Width="1478px">
        </asp:GridView>
    </form>
</body>
</html>
