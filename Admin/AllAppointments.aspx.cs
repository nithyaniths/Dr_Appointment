using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_AllAppointments : System.Web.UI.Page
{
    DataManipulation dm = new DataManipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

        string str = "select Appointment_Tb.Name as PatientName,Doctors_reg_tb.Name,Consultation_Tb.* from " +
            "Appointment_Tb inner join Consultation_Tb on Appointment_Tb.Id=Consultation_Tb.UserId inner join " +
          "Doctors_reg_tb on Consultation_Tb.DoctorId=Doctors_reg_tb.Id";
      DataSet ds = dm.For_Adapter(str);
       if(ds.Tables[0].Rows.Count>0)
        {
           GridView1.DataSource = ds;
           GridView1.DataBind();
        }
  
    }
   
   

    
}