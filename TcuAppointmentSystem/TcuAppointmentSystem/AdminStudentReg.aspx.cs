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
    public partial class AdminStudentReg : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!IsPostBack)
            {

                LoadRecord();

            }




        }

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        protected void Button3_Click1(object sender, EventArgs e)
        {


            con.Open();

            SqlCommand comm = new SqlCommand("select * from StudentInfo where StudentID = '" + Studid.Text + "'", con);
            SqlDataReader r = comm.ExecuteReader();
          
                while (r.Read())
                {

                    Fname.Text = r.GetValue(2).ToString();
                    Lname.Text = r.GetValue(3).ToString();
                    Course.SelectedItem.Text = r.GetValue(4).ToString();
                    Email.Text = r.GetValue(5).ToString();
                  
                }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand commToChecksUsername = new SqlCommand("select StudentID from StudentInfo where StudentID = '" + Studid.Text + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(commToChecksUsername);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Student ID Already Registered');", true);
            }
            else
            {

                SqlCommand comm = new SqlCommand("Insert into StudentInfo values('" + Studid.Text + "','" +Fname.Text + "','" + Lname.Text + "','" + Course.SelectedValue + "','" + Email.Text + "')", con);
                comm.ExecuteNonQuery();

                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Registered Successfully');", true);

                LoadRecord();

                Studid.Text = "";
                Fname.Text = "";
                Lname.Text = "";
                Course.SelectedValue = "";
                Email.Text = "";


            }
        }


        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from StudentInfo", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
         Studid.Text = "";
         Fname.Text = "";
         Lname.Text = "";
         Course.SelectedValue = "";
         Email.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand commToChecksUsername = new SqlCommand("select StudentID from StudentInfo where StudentID = '" + Studid.Text + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(commToChecksUsername);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand comm = new SqlCommand("Delete StudentInfo where StudentID = '" + Studid.Text + "'", con);
                comm.ExecuteNonQuery();

                SqlCommand comm1 = new SqlCommand("Delete Student_reg where StudentID = '" + Studid.Text + "'", con);
                comm1.ExecuteNonQuery();

                SqlCommand comm2 = new SqlCommand("Delete Appointments where StudentID = '" + Studid.Text + "'", con);
                comm2.ExecuteNonQuery();

                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
                LoadRecord();

                Studid.Text = "";
                Fname.Text = "";
                Lname.Text = "";
                Course.SelectedValue = "";
                Email.Text = "";
                   }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Enter a Valid ID');", true);

            }


        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand commToChecksUsername = new SqlCommand("select StudentID from StudentInfo where StudentID = '" + Studid.Text + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(commToChecksUsername);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)

                if (Fname.Text == "")
                {

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please fill up the complete form');", true);

                    Studid.Text = "";
                    Fname.Text = "";
                    Lname.Text = "";
                    Course.SelectedValue = "";
                    Email.Text = "";
                }

                else if (Lname.Text == "")
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please fill up the complete form');", true);

                    Studid.Text = "";
                    Fname.Text = "";
                    Lname.Text = "";
                    Course.SelectedValue = "";
                    Email.Text = "";
                }

                else if (Course.Text == "")
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please fill up the complete form');", true);

                    Studid.Text = "";
                    Fname.Text = "";
                    Lname.Text = "";
                    Course.SelectedValue = "";
                    Email.Text = "";
                }

                else if (Email.Text == "")
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please fill up the complete form');", true);

                    Studid.Text = "";
                    Fname.Text = "";
                    Lname.Text = "";
                    Course.SelectedValue = "";
                    Email.Text = "";
                }

                else
                {

                    {
                        SqlCommand comm = new SqlCommand("update StudentInfo set FirstName = '" + Fname.Text + "', LastName = '" + Lname.Text + "', Course = '" + Course.SelectedValue + "', Email = '" + Email.Text + "' where StudentID = '" + Studid.Text + "'", con);
                        comm.ExecuteNonQuery();

                        SqlCommand comm1 = new SqlCommand("update Student_reg set FirstName = '" + Fname.Text + "', LastName = '" + Lname.Text + "', Course = '" + Course.SelectedValue + "', Email = '" + Email.Text + "' where StudentID = '" + Studid.Text + "'", con);
                        comm1.ExecuteNonQuery();

                        con.Close();
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);

                        LoadRecord();

                        Studid.Text = "";
                        Fname.Text = "";
                        Lname.Text = "";
                        Course.SelectedValue = "";
                        Email.Text = "";


                    }
            }else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Enter a Valid ID');", true);

                Studid.Text = "";
                Fname.Text = "";
                Lname.Text = "";
                Course.SelectedValue = "";
                Email.Text = "";

            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDashboard.aspx");
        }
    }
    }
