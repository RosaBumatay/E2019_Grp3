using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace TcuAppointmentSystem
{
    public partial class AppointmentAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                LoadRecord();

            }
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand comm = new SqlCommand("select * from Appointments where InstructorID = '" + Instructor.Text + "' and StudentID ='" + TextBox1.Text + "'", con);
            SqlDataReader r = comm.ExecuteReader();

            while (r.Read())
            {


                Fname1.Text = r.GetValue(2).ToString();
                Lname1.Text = r.GetValue(3).ToString();
                Dept.Text = r.GetValue(4).ToString();
                DateApp.Text = r.GetValue(5).ToString();
                Time.Text = r.GetValue(6).ToString();
                DropDownList1.Text = r.GetValue(7).ToString();
                InstructorEmail.Text = r.GetValue(13).ToString();
                Fname.Text = r.GetValue(9).ToString();
                Lname.Text = r.GetValue(10).ToString();
                Course.Text = r.GetValue(11).ToString();
                stemail.Text = r.GetValue(12).ToString();
            }
            con.Close();

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

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDashboard.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand commToChecksUsername = new SqlCommand("select InstructorID from Appointments where InstructorID = '" + Instructor.Text + "'and StudentID ='"+TextBox1.Text+"'", con);
            SqlDataAdapter sd = new SqlDataAdapter(commToChecksUsername);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                if (stemail.Text == "") { 

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Invalid Student Email and Instructor Email');", true);


                }
                else if (InstructorEmail.Text =="")
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Invalid Instructor Email');", true);

                    }


              
                else
                {
                    SqlCommand comm = new SqlCommand("update Appointments set Status = '" + DropDownList1.SelectedValue + "', AppointmentDate ='" + DateApp.Text + "', AppointmentTime = '" + Time.Text + "' where InstructorID = '" + Instructor.Text + "' and StudentID = '" + TextBox1.Text + "'", con);
                    comm.ExecuteNonQuery();


                    con.Close();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
    
                    LoadRecord();


                    MailMessage mail = new MailMessage();
                    mail.To.Add(InstructorEmail.Text.ToString().Trim());
                    mail.From = new MailAddress("markflorida949@gmail.com");
                    mail.Subject = "Appointment Update Status";
                    mail.Body = "The Appointment has been updated, Date Schedule" + DateApp.Text + " Time " + Time.Text + " Instructor name is  " + Fname1.Text + " " + Lname1.Text + " who is instructor in the Department of  " + Dept.Text + " Current status of the appointment is: " + DropDownList1.Text;
                    mail.IsBodyHtml = true;

                    SmtpClient smtp = new SmtpClient();
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.UseDefaultCredentials = false;
                    smtp.Host = "smtp.gmail.com";
                    smtp.Credentials = new System.Net.NetworkCredential("markflorida949@gmail.com", "xaudnufnoqjqylgz");
                    smtp.Send(mail);

                    MailMessage mail1 = new MailMessage();
                    mail1.To.Add(stemail.Text.ToString().Trim());
                    mail1.From = new MailAddress("markflorida949@gmail.com");
                    mail1.Subject = "Appointment Update Status";
                    mail1.Body = "The Appointment has been updated, Date Schedule" + DateApp.Text + " Time " + Time.Text + " Instructor name is  " + Fname1.Text + " " + Lname1.Text + " who is instructor in the Department of  " + Dept.Text + " Current status of the appointment is: " + DropDownList1.Text;
                    mail1.IsBodyHtml = true;

                    SmtpClient smtp1 = new SmtpClient();
                    smtp1.Port = 587;
                    smtp1.EnableSsl = true;
                    smtp1.UseDefaultCredentials = false;
                    smtp1.Host = "smtp.gmail.com";
                    smtp1.Credentials = new System.Net.NetworkCredential("markflorida949@gmail.com", "xaudnufnoqjqylgz");
                    smtp1.Send(mail1);

                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Enter A valid ID');", true);

                TextBox1.Text = "";
                Fname.Text = "";
                Lname.Text = "";
                Course.Text = "";
                Fname1.Text = "";
                Lname1.Text = "";
                Dept.Text = "";
                DateApp.Text = "";
                Time.Text = "";




            }
        }

        

        protected void Button4_Click(object sender, EventArgs e)
        {
            con.Open();
             if(InstructorEmail.Text == "") {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Invalid INstructor Email Address or Student Email Address');", true);
           
           
            }
            else
            {
                SqlCommand commToChecksUsername1 = new SqlCommand("select InstructorID from Appointments where InstructorID = '" + Instructor.Text + "'and StudentID ='" + TextBox1.Text + "'and AppointmentDate ='"+DateApp.Text+"'", con);
                SqlDataAdapter sd1 = new SqlDataAdapter(commToChecksUsername1);
                DataTable dt = new DataTable();
                sd1.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    SqlCommand comm = new SqlCommand("Delete Appointments where StudentID = '" + TextBox1.Text + "'and InstructorID = '" + Instructor.Text + "'", con);
                    comm.ExecuteNonQuery();


                    con.Close();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted Data');", true);
                    LoadRecord();


                  

                    MailMessage mail = new MailMessage();
                    mail.To.Add(InstructorEmail.Text.ToString().Trim() + stemail.Text.ToString().Trim());
                    mail.From = new MailAddress("markflorida949@gmail.com");
                    mail.Subject = "Appointment Status";
                    mail.Body = "Appointment Has been deleted by the admin because instructor is not availble Date " + DateApp.Text + " at the time of " + Time.Text + " who is " + Fname.Text + " " + Lname.Text + " who is student at the Course of " + Course.Text;
                    mail.IsBodyHtml = true;

                    SmtpClient smtp = new SmtpClient();
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.UseDefaultCredentials = false;
                    smtp.Host = "smtp.gmail.com";
                    smtp.Credentials = new System.Net.NetworkCredential("markflorida949@gmail.com", "xaudnufnoqjqylgz");
                    smtp.Send(mail);

                    Instructor.Text = "";
                    Fname1.Text = "";
                    Lname1.Text = "";
                    Dept.Text = "";
                    DateApp.Text = "";
                    Time.Text = "";
                    InstructorEmail.Text = "";

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please input the correct Student ID, Instructor ID and Appointment Date');", true);

                }
            }





        }
    }
}