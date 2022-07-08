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
    public partial class StudentRegistration : System.Web.UI.Page
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

            SqlCommand comm = new SqlCommand("select * from StudentInfo where StudentID = '" + Studid.Text + "'", con);
            SqlDataReader r = comm.ExecuteReader();

            while (r.Read())
            {


                Txt_First.Text = r.GetValue(2).ToString();
                Txt_Lastname.Text = r.GetValue(3).ToString();
                Txt_Course.Text = r.GetValue(4).ToString();
                Txt_Email.Text = r.GetValue(5).ToString();

            }



        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            con.Open();

            SqlCommand commToChecksUsername = new SqlCommand("select StudentID from Student_reg where StudentID = '" + Studid.Text + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(commToChecksUsername);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Student ID Already Registered');", true);

                Studid.Text = "";
                Password.Text = "";
                Txt_First.Text = "";
                Txt_Lastname.Text = "";
                Txt_Course.Text = "";
                Txt_Email.Text = "";

            }
            else
            {

                SqlCommand comm = new SqlCommand("Insert into Student_reg values('" + Studid.Text + "','" + Password.Text + "','" + Txt_First.Text + "','" + Txt_Lastname.Text + "','" + Txt_Course.Text + "','" + Txt_Email.Text + "')", con);
                comm.ExecuteNonQuery();

                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Registered Successfully');", true);

                LoadRecord();

                Studid.Text = "";
                Password.Text = "";
                Txt_First.Text = "";
                Txt_Lastname.Text = "";
                Txt_Course.Text = "";
                Txt_Email.Text = "";


            }
            }
        

            void LoadRecord()
    {
                SqlCommand comm = new SqlCommand("select * from Student_reg", con);
                SqlDataAdapter d = new SqlDataAdapter(comm);
                DataTable dt = new DataTable();
                d.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }






        protected void Button3_Click(object sender, EventArgs e)
        {
            Studid.Text = "";
            Password.Text = "";
            Confirm.Text = "";
            Txt_First.Text = "";
            Txt_Lastname.Text = "";
            Txt_Course.Text= "";
            Txt_Email.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            Response.Redirect("StudentLogin.aspx");
        }
    }
}