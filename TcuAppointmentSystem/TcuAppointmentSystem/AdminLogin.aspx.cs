using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TcuAppointmentSystem
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox_useradmin.Text == "Admin" && TextBox_passwordadmin.Text == "admin123")
            {
                Session["Adminname"] = "Welcome " + TextBox_useradmin.Text;
                Response.Redirect("AdminDashboard.aspx");

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Incorrect Username or Password ');", true);
                TextBox_useradmin.Text = "";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}