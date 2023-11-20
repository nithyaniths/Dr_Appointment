using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Patient_Pending_Appointment : System.Web.UI.Page
{
    DataManipulation dm = new DataManipulation();
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\NithyaProjects\NewProjects\My_Appointment\App_Data\My_Appointment_db.mdf;Integrated Security=True");
    int TOKEN;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Wogrid();
    }

    public void Wogrid()
    {
       
        string str = "select * from Prescription_Tb where UserId='" + Session["UserId"] + "' and  Prescription='"+" "+"'";
        DataSet ds = dm.For_Adapter(str);
        //string Prescription = ds.Tables[0].Rows[0][4].ToString();
        //if(Prescription=="")
        if (ds.Tables[0].Rows.Count <= 0)
        {
            string str2 = "select Doctors_reg_tb.Id, Doctors_reg_tb.Name,Doctors_reg_tb.Mobile , Consultation_Tb.* from Consultation_Tb inner join Doctors_reg_tb on" +
            " Consultation_Tb.DoctorId=Doctors_reg_tb.Id  where Consultation_Tb.UserId='" + Session["UserId"] + "'";

            DataSet ds1 = dm.For_Adapter(str2);
            if(ds1.Tables[0].Rows.Count>0)
            {
                GridView1.DataSource = ds1;
                GridView1.DataBind();
            }

        }
       
    }

   

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string str2 = "delete from Consultation_Tb where ConsultationTime='" + GridView1.Rows[e.RowIndex].Cells[5].Text + "' and UserId='" + Session["UserId"] + "'";
        int r = dm.For_Execute(str2);
        if (r > 0)
        {
            Wogrid();
        }
    }
}