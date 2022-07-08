<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="TcuAppointmentSystem.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            background-color: transparent;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            width: 100%;
            
        }
        .auto-style7 {
            text-align: center;
            font-size: large;
            width: 1149px;
        }
        .auto-style11 {
            text-align: center;
            width: 8405px;
            height: 543px;
        }
        .auto-style12 {
            width: 200px;
        }
        .auto-style13 {
            width: 8405px;
            height: 37px;
            color: white;
            font-size: x-large;
            text-align: right
            
            
        }
        body {
            background-image: url(Images/bck.png);
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
    </style>
</head>
<body>

    



    <form id="form1" runat="server">
    <div class="auto-style5">
    
        <span class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style6">
            <tr>
                <td class="auto-style7">
                    <table class="auto-style17">
                        <tr>
                            <td class="auto-style11"><strong><span class="auto-style2">
                                
                                </span></strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style13">Choose to Login</td>
                     
                            <td class="auto-style12"> 
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Student " Font-Size="Medium" Font-Bold="true" Height="50px" Width="100px" CssClass="button" />
                          </td>
                      
                            <td class="auto-style12">
                                <asp:Button ID="Button2" runat="server" Text="Instructor" OnClick="Button2_Click" Font-Size="Medium" Font-Bold="true" Height="50px" Width="106px" CssClass="button"/>
                                <br />
                                </td>

                          
                       
                            <td class="auto-style12">
                                <asp:Button ID="Button3" runat="server" Text="Admin" Font-Size="Medium" Font-Bold="true" Height="50px" Width="100px" OnClick="Button3_Click" CssClass="button"/>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
               <td class="auto-style15">&nbsp;</td>
            </tr>
        </table>
    
    </div>
      
    </form>
</body>
</html>
