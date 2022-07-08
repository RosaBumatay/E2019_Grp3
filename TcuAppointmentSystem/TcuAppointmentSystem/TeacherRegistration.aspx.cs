using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace TcuAppointmentSystem
{
    public partial class TeacherRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                LoadRecord();

            }
            GridView1.Visible = false;


        }

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        protected void Button1_Click(object sender, EventArgs e)
        {

            con.Open();

            SqlCommand comm = new SqlCommand("select * from Teacher_Reg where TeacherID = '" + Teacherid.Text + "'", con);
            SqlDataReader r = comm.ExecuteReader();

            while (r.Read())
            {


                Txt_First.Text = r.GetValue(2).ToString();
                Txt_Lastname.Text = r.GetValue(3).ToString();
                Department.Text = r.GetValue(4).ToString();
                Email.Text = r.GetValue(5).ToString();

            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            con.Open();

            SqlCommand commToChecksUsername = new SqlCommand("select TeacherID from TeacherInfo where TeacherID = '" + Teacherid.Text + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(commToChecksUsername);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('ID Already Registered');", true);
            }
            else
            {

                SqlCommand comm = new SqlCommand("Insert into TeacherInfo values('" + Teacherid.Text + "','" + Txt_First.Text + "','" + Txt_Lastname.Text + "','" + Department.Text + "','" + Email.Text + "','" + Password.Text + "')", con);
                comm.ExecuteNonQuery();

                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Registered Successfully');", true);

                LoadRecord();

                Teacherid.Text = "";
                Password.Text = "";
                Txt_First.Text = "";
                Txt_Lastname.Text = "";
                Department.Text = "";
                Email.Text = "";


            }
        }

        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from TeacherInfo", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Teacherid.Text = "";
            Password.Text = "";
            Confirm.Text = "";
            Txt_First.Text = "";
            Txt_Lastname.Text = "";
            Department.Text = "";
            Email.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeacherLogin.aspx");
        }
    }
}