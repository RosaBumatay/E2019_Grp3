using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TcuAppointmentSystem
{
    public partial class TeacherLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-1J00S5U;Initial Catalog=AppointmentSchedule;User ID=mark;Password=031622");
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeacherRegistration.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void Button_Click(object sender, EventArgs e)
        {

            String check = "select count(*) from TeacherInfo where TeacherID ='" + TextBox_User.Text + "' and Password ='" + TextBox_password.Text + "'";
            SqlCommand com = new SqlCommand(check, con);
            con.Open();
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                Session["teacherid"] = TextBox_User.Text;
                Response.Redirect("TeacherDashboard.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Username or Password is Incorrect!');", true);
                TextBox_User.Text = "";
            }


        }
    }
}