using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Patient_ConfirmAppointment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\NithyaProjects\NewProjects\My_Appointment\App_Data\My_Appointment_db.mdf;Integrated Security=True");
    DataManipulation dm = new DataManipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "select * from Doctors_reg_tb where Id=" + Request.QueryString["Id"].ToString();
        DataSet ds = dm.For_Adapter(str);
        lblid.Text = ds.Tables[0].Rows[0][0].ToString();
        imgphoto.ImageUrl = ds.Tables[0].Rows[0][2].ToString();
        lblname.Text = ds.Tables[0].Rows[0][1].ToString();
        lblplace.Text = ds.Tables[0].Rows[0][5].ToString();
        lblmobile.Text = ds.Tables[0].Rows[0][6].ToString();
        lblemail.Text = ds.Tables[0].Rows[0][7].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string dt = Request.Form[txtDate.UniqueID];
        txtDate.Text = dt;
        DateTime dateTimeFormat = Convert.ToDateTime(txtDate.Text);
        string week = dateTimeFormat.DayOfWeek.ToString();
        DateTime dateOnly = dateTimeFormat.Date;

        int Token = 0;
        TimeSpan ConsultationTime;

        string str = "select Consulting_Days_Tb.Id,Consulting_Days_Tb.Day,Schedule_Tb.* from Consulting_Days_Tb inner join Schedule_Tb on Consulting_Days_Tb.CId=Schedule_Tb.Id  where DoctorId='" + lblid.Text + "'";
        DataSet ds = dm.For_Adapter(str);
        string day = ds.Tables[0].Rows[0][1].ToString();
        if (week == day)
        {
            TimeSpan startTime = TimeSpan.Parse(ds.Tables[0].Rows[0][3].ToString());
            TimeSpan endTime = TimeSpan.Parse(ds.Tables[0].Rows[0][4].ToString());
            TimeSpan timeInterval = endTime.Subtract(startTime);
            int totalMinute =Convert.ToInt32(timeInterval.TotalMinutes);
            int totalToken = totalMinute / 10;

            string str1 = "select * from Consultation_Tb where DoctorId='"+lblid.Text+"' and ConsultationDate='"+dateTimeFormat+"'";
            DataSet ds2 = dm.For_Adapter(str1);            
            if(ds2.Tables[0].Rows.Count==0)
            {                
                    ConsultationTime = startTime;
                    Token = 1;
                    string str2 = "insert into Consultation_Tb values('" + Session["UserId"] + "','" + lblid.Text + "','" + DateTime.Now + "','" + dateOnly + "','" + ConsultationTime + "','" + Token + "')";
                    int r = dm.For_Execute(str2);
                    if (r > 0)
                    {
                        Response.Write("<script>alert('Your token no is" + Token + "and your expected time is " + ConsultationTime + "')</script>");
                    }                
            }
            else
            {
                string str4 = "select max(TokenNo)from Consultation_Tb where DoctorId='" + lblid.Text + "'";
                SqlCommand cmd = new SqlCommand(str4, con);
                con.Open();
                int token = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();
                
                string str6 = "select * from Consultation_Tb where TokenNo='" + token + "'and DoctorId='" + lblid.Text + "'";
                DataSet ds1 = dm.For_Adapter(str6);               
                ConsultationTime = TimeSpan.Parse(ds1.Tables[0].Rows[0][5].ToString());

             
                TimeSpan newconsultationTime = ConsultationTime.Add(TimeSpan.FromMinutes(10));                                                    
                int newToken = token + 1;


                string count = "select Count(TokenNo) from Consultation_Tb where DoctorId='" + lblid.Text + "'and ConsultationDate='" + dateTimeFormat + "'";
                SqlCommand cmd1 = new SqlCommand(count, con);
                con.Open();
                int tokenCount = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();


               // if (newconsultationTime <= endTime)
                if(tokenCount<totalToken)
                {
                    string str5 = "insert into Consultation_Tb values('" + Session["UserId"] + "','" + lblid.Text + "','" + DateTime.Now + "','" + dateOnly + "','" + newconsultationTime + "','" + newToken + "')";
                    int r = dm.For_Execute(str5);
                    if (r > 0)
                    {
                        Response.Write("<script>alert('Your token no is" + newToken + "and your expected time is " + newconsultationTime + "')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Token is Expired..')</script>");
                }
            }
        }
        else
        {
            Response.Write("<script>alert('Doctor is not available on this day')</script>");
        }
    }
}




