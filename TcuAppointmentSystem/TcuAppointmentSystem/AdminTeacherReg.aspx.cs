using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TcuAppointmentSystem
{
    public partial class AdminTeacherReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                LoadRecord();

            }




        }
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-1J00S5U;Initial Catalog=AppointmentSchedule;User ID=mark;Password=031622");
        protected void Button3_Click1(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand comm = new SqlCommand("select * from Teacher_reg where TeacherID = '" + Teacherid.Text + "'", con);
            SqlDataReader r = comm.ExecuteReader();

            while (r.Read())
            {


                Fname.Text = r.GetValue(2).ToString();
                Lname.Text = r.GetValue(3).ToString();
                Dept.SelectedItem.Text = r.GetValue(4).ToString();
                Email.Text = r.GetValue(5).ToString();

            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand commToChecksUsername = new SqlCommand("select TeacherID from Teacher_reg where TeacherID = '" + Teacherid.Text + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(commToChecksUsername);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('ID Already Registered');", true);
            }
            else
            {

                SqlCommand comm = new SqlCommand("Insert into Teacher_reg values('" + Teacherid.Text + "','" + Fname.Text + "','" + Lname.Text + "','" + Dept.SelectedValue + "','" + Email.Text + "')", con);
                comm.ExecuteNonQuery();

                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Registered Successfully');", true);

                LoadRecord();

                Teacherid.Text = "";
                Fname.Text = "";
                Lname.Text = "";
                Dept.SelectedValue = "";
                Email.Text = "";


            }
        }

        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from Teacher_reg", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Teacherid.Text = "";
            Fname.Text = "";
            Lname.Text = "";
            Dept.SelectedValue = "";
            Email.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand commToChecksUsername = new SqlCommand("select TeacherID from Teacher_reg where TeacherID = '" + Teacherid.Text + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(commToChecksUsername);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand comm = new SqlCommand("Delete Teacher_reg where TeacherID = '" + Teacherid.Text + "'", con);
                comm.ExecuteNonQuery();

                SqlCommand comm1 = new SqlCommand("Delete TeacherInfo where TeacherID = '" + Teacherid.Text + "'", con);
                comm1.ExecuteNonQuery();

                SqlCommand comm2 = new SqlCommand("Delete Appointments where InstructorID = '" + Teacherid.Text + "'", con);
                comm2.ExecuteNonQuery();

                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
                LoadRecord();

                Teacherid.Text = "";
                Fname.Text = "";
                Lname.Text = "";
                Dept.SelectedValue = "";
                Email.Text = "";
            }else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Enter a Valid ID');", true);
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand commToChecksUsername = new SqlCommand("select TeacherID from Teacher_reg where TeacherID = '" + Teacherid.Text + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(commToChecksUsername);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand comm = new SqlCommand("update Teacher_reg set Fname = '" + Fname.Text + "', Lname = '" + Lname.Text + "', Department = '" + Dept.SelectedValue + "', Email = '" + Email.Text + "' where TeacherID = '" + Teacherid.Text + "'", con);
                comm.ExecuteNonQuery();

                SqlCommand comm1 = new SqlCommand("update TeacherInfo set Fname = '" + Fname.Text + "', Lname = '" + Lname.Text + "', Department = '" + Dept.SelectedValue + "', Email = '" + Email.Text + "' where TeacherID = '" + Teacherid.Text + "'", con);
                comm1.ExecuteNonQuery();

                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);

                LoadRecord();
            }else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Enter a Valid ID');", true);

            }

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDashboard.aspx");
        }
    }
}