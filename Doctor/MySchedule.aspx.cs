using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Doctor_MySchedule : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\NithyaProjects\NewProjects\My_Appointment\App_Data\My_Appointment_db.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "insert into Schedule_Tb values('"  + txtstart.Text + "','" + txtend.Text + "','" + Session["DoctorId"] + "')";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        int r = cmd.ExecuteNonQuery();
        con.Close();
        if(r>0)
        {
            string str1 = "select max(Id)from Schedule_Tb";
            SqlCommand cmd1 = new SqlCommand(str1, con);
            con.Open();
            int id =Convert.ToInt32( cmd1.ExecuteScalar());
            con.Close();
            if(checkday.Text!="")
            {
                string str2 = "insert into Consulting_Days_Tb values('" + checkday.Text +"' ,'" + id + "')";
                SqlCommand cmd2 = new SqlCommand(str2, con);
                con.Open();
                int r1 = cmd2.ExecuteNonQuery();
                con.Close();

            }
            Response.Write("<script>alert('TimeSlot saved..')</script>");
        }
       
   }
}