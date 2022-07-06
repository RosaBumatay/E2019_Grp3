using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-1J00S5U;Initial Catalog=AppointmentSchedule;User ID=mark;Password=031622");
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
            SqlCommand comm = new SqlCommand("update Appointments set Status = '" + DropDownList1.SelectedValue + "', AppointmentDate ='" + DateApp.Text + "', AppointmentTime = '" + Time.Text +"' where InstructorID = '" + Instructor.Text + "' and StudentID = '" + TextBox1.Text + "'", con);
            comm.ExecuteNonQuery();


            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);

            LoadRecord();


            MailMessage mail = new MailMessage();
            mail.To.Add(stemail.Text.ToString().Trim());
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


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Delete Appointments where StudentID = '" + TextBox1.Text + "'and InstructorID = '" + Instructor.Text + "'", con);
            comm.ExecuteNonQuery();


            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully ');", true);
            LoadRecord();


            Instructor.Text = "";
            Fname1.Text = "";
            Lname1.Text = "";
            Dept.Text = "";
            DateApp.Text = "";
            Time.Text = "";
            InstructorEmail.Text = "";


            MailMessage mail = new MailMessage();
            mail.To.Add(InstructorEmail.Text.ToString().Trim()+ stemail.Text.ToString().Trim());
            mail.From = new MailAddress("markflorida949@gmail.com");
            mail.Subject = "Appointment Status";
            mail.Body = "Appointment Has been deleted by the admin because instructor is not availbleDate " + DateApp.Text + " at the time of " + Time.Text + " who is " + Fname.Text + " " + Lname.Text + " who is student at the Course of " + Course.Text;
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("markflorida949@gmail.com", "xaudnufnoqjqylgz");
            smtp.Send(mail);





        }
    }
}