using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_Attendance_Details : System.Web.UI.Page
{
    
    DataManipulation dm = new DataManipulation();
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\NithyaProjects\NewProjects\My_Appointment\App_Data\My_Appointment_db.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
       
        string str = "select (FirstName + ' ' + LastName) as Name from Staff_Tb where (FirstName + ' ' + LastName)='" + txtSearch.Text + "'";
        DataSet ds = dm.For_Adapter(str);
       
        if(ds.Tables[0].Rows.Count>0)
        {
            string str1 = "select Attendance_Tb.*, (FirstName + ' '+ LastName) as Name from Staff_Tb inner join Attendance_Tb on Attendance_Tb.Staff_Id=Staff_Tb.Id where (FirstName + ' '+ LastName)='" + txtSearch.Text + "'";
            str1 += "select Absent_Tb.*, (FirstName + ' ' + LastName) as Name from Staff_Tb inner join Absent_Tb on Absent_Tb.Staff_Id=Staff_Tb.Id where (FirstName + ' '+ LastName)='" + txtSearch.Text + "'";
            using (SqlCommand cmd1 = new SqlCommand(str1))
            {
                using (SqlDataAdapter sda1 = new SqlDataAdapter())
                {
                   
                    cmd1.Connection = con;
                    sda1.SelectCommand = cmd1;
                    using (DataSet ds1 = new DataSet())
                    {
                        
                        sda1.Fill(ds1);
                        GridView3.DataSource = ds1.Tables[0];
                        GridView3.DataBind();
                        GridView4.DataSource = ds1.Tables[1];
                        GridView4.DataBind();
                        Panel2.Visible = true;
                        
                    }
                }
            }                       
        }
            else
            {
            string str2 = "select Attendance_Tb.*, (FirstName + ' ' + LastName) as Name from Staff_Tb inner join Attendance_Tb   on Attendance_Tb.Staff_Id=Staff_Tb.Id where AttDate='" + txtSearch.Text + "'";
            str2 += "select Absent_Tb.*, (FirstName + ' ' + LastName) as Name from Staff_Tb inner join Absent_Tb on Absent_Tb.Staff_Id=Staff_Tb.Id where AbsentDate='" + txtSearch.Text + "'";
            using (SqlCommand cmd = new SqlCommand(str2))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataSet ds2 = new DataSet())
                    {
                        
                        sda.Fill(ds2);
                        GridView1.DataSource = ds2.Tables[0];
                        GridView1.DataBind();
                        GridView2.DataSource = ds2.Tables[1];
                        GridView2.DataBind();
                        Panel1.Visible = true;
                       
                    }
                }
            }
        }             
    }                              
}
