using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace TcuAppointmentSystem
{
    public partial class StudentDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["studid"] != null)
            {

                TextBox1.Text = Session["studid"].ToString();

            }
            else
            {

                Response.Redirect("StudentLogin.aspx");
            }


            if (!IsPostBack)
            {

                LoadRecord();

            }




        }

        
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-1J00S5U;Initial Catalog=AppointmentSchedule;User ID=mark;Password=031622");
        protected void Button1_Click(object sender, EventArgs e)
        {

            con.Open();

            SqlCommand comm = new SqlCommand("select * from Student_reg where StudentID = '" + TextBox1.Text + "'", con);
            SqlDataReader r = comm.ExecuteReader();
           
            while (r.Read())
            {


                Fname.Text = r.GetValue(3).ToString();
                Lname.Text = r.GetValue(4).ToString();
               Course.Text = r.GetValue(5).ToString();
                stemail.Text = r.GetValue(6).ToString();
               

            }
            con.Close();
            con.Open();
            SqlCommand comm1 = new SqlCommand("select * from TeacherInfo where Fname = '" + Fname1.Text + "'and Lname = '" + Lname1.Text+"'", con);
            SqlDataReader s = comm1.ExecuteReader();
           
            while (s.Read())
            {


                Instructor.Text = s.GetValue(1).ToString();
                Dept.Text = s.GetValue(4).ToString();
                InstructorEmail.Text = s.GetValue(5).ToString();


            }
            con.Close();

            con.Open();

            SqlCommand comm2 = new SqlCommand("select * from Appointments where InstructorFname = '" + Fname1.Text + "' and StudentID='"+TextBox1.Text+"'", con);
            SqlDataReader r2 = comm2.ExecuteReader();

            while (r2.Read())
            {
               

                DateApp.Text = r2.GetValue(5).ToString();
                Time.Text = r2.GetValue(6).ToString();
               

            }
            con.Close();

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            con.Open();

            SqlCommand commToChecksUsername = new SqlCommand("select InstructorID from Appointments where InstructorID = '" + Instructor.Text + "'and AppointmentDate = '" +DateApp.Text+"'", con);
            SqlDataAdapter sd = new SqlDataAdapter(commToChecksUsername);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Teacher Already Scheduled for that day, Please Select Another Date!');", true);
            }


            else
            {

                SqlCommand commToChecksUsername1 = new SqlCommand("select InstructorID from Appointments where InstructorID = '" + Instructor.Text + "'and StudentID = '" + TextBox1.Text + "'", con);
                SqlDataAdapter sd1 = new SqlDataAdapter(commToChecksUsername1);
                
                sd1.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Only one Scheduled to Instructor Appointment per Student');", true);
                }
                else
                {
                    SqlCommand commToChecksUsername2 = new SqlCommand("select Fname from TeacherInfo where Fname = '" + Fname1.Text + "'and Lname = '" + Lname1.Text + "'", con);
                    SqlDataAdapter sd2 = new SqlDataAdapter(commToChecksUsername2);

                    sd2.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        SqlCommand comm = new SqlCommand("Insert into Appointments values('" + Instructor.Text + "','" + Fname1.Text + "','" + Lname1.Text + "','" + Dept.Text + "','" + DateApp.Text + "','" + Time.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox1.Text + "','" + Fname.Text + "','" + Lname.Text + "','" + Course.Text + "','" + stemail.Text + "','" + InstructorEmail.Text + "')", con);
                        comm.ExecuteNonQuery();

                        con.Close();
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Registered Successfully');", true);

                        LoadRecord();

                        MailMessage mail = new MailMessage();
                        mail.To.Add(InstructorEmail.Text.ToString().Trim());
                        mail.From = new MailAddress("markflorida949@gmail.com");
                        mail.Subject = "Appointment Status";
                        mail.Body = "The Request Appointment for you is at " + DateApp.Text + " at the time of " + Time.Text + " who is " + Fname.Text + " " + Lname.Text + " who is student at the Course of " + Course.Text + " Current status of the appointment is: " + DropDownList1.Text;
                        mail.IsBodyHtml = true;

                        SmtpClient smtp = new SmtpClient();
                        smtp.Port = 587;
                        smtp.EnableSsl = true;
                        smtp.UseDefaultCredentials = false;
                        smtp.Host = "smtp.gmail.com";
                        smtp.Credentials = new System.Net.NetworkCredential("markflorida949@gmail.com", "xaudnufnoqjqylgz");
                        smtp.Send(mail);

                    }
                    else
                    {

                        
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Invalid Instructor First name or Last name');", true);

                    }




                }


            }




        }

        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from Appointments", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }





        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentLogin.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand commToChecksUsername = new SqlCommand("select InstructorFname from Appointments where InstructorFname = '" + Fname1.Text + "'and InstructorLname ='" + Lname1.Text + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(commToChecksUsername);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand comm = new SqlCommand("Delete Appointments where StudentID = '" + TextBox1.Text + "'and InstructorID = '" + Instructor.Text + "'", con);
                comm.ExecuteNonQuery();


                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully ');", true);
                LoadRecord();


                MailMessage mail = new MailMessage();
                mail.To.Add(InstructorEmail.Text.ToString().Trim());
                mail.From = new MailAddress("markflorida949@gmail.com");
                mail.Subject = "Appointment Status";
                mail.Body = "Appointment has been cancelled by the student, Date" + DateApp.Text + " at the time of " + Time.Text + " who is " + Fname.Text + " " + Lname.Text + " who is student at the Course of " + Course.Text;
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("markflorida949@gmail.com", "xaudnufnoqjqylgz");
                smtp.Send(mail);

            }else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Invalid Instructor First name and Last name ');", true);
            }







            Instructor.Text = "";
            Fname1.Text = "";
            Lname1.Text = "";
            Dept.Text = "";
            DateApp.Text = "";
            Time.Text = "";
            InstructorEmail.Text = "";



        }
    }
}