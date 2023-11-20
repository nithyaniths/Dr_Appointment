using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Patient_MyPrescription : System.Web.UI.Page
{
    DataManipulation dm = new DataManipulation();
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\NithyaProjects\NewProjects\My_Appointment\App_Data\My_Appointment_db.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            string str = "select Prescription_Tb.DoctorId,Doctors_reg_tb.* from Prescription_Tb" +
                " inner join Doctors_reg_tb on Prescription_Tb.DoctorId=Doctors_reg_tb.Id where UserId='" + Session["UserId"] + "'";

            SqlDataAdapter cmd1 = new SqlDataAdapter(str, con);
            DataSet ds = new DataSet();
            cmd1.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                lblmsg.Visible = false;
                OutterDataList.DataSource = ds;
                OutterDataList.DataBind();


                foreach (DataListItem Item in OutterDataList.Items)
                {
                    DataList dlPrescription = (DataList)Item.FindControl("InnerDataList");
                    HiddenField hdf = (HiddenField)Item.FindControl("HiddenField1");
                    SqlDataAdapter cmd2 = new SqlDataAdapter("select Health_Register_Tb.Reason_for_Appointment," +
                        "Prescription_Tb.* from Health_Register_Tb inner join Prescription_Tb on  Health_Register_Tb.Id=Prescription_Tb.HealthId " +
                        "where UserId='" + Session["UserId"] + "' and DoctorId='" + hdf.Value + "'", con);
                    DataSet ds1 = new DataSet();
                    cmd2.Fill(ds1);
                    if (ds1.Tables[0].Rows.Count > 0)
                    {
                        dlPrescription.DataSource = ds1;
                        dlPrescription.DataBind();
                    }

                }
            }
            else
            {
                lblmsg.Visible = true;
                lblmsg.Text = "No Prescription to view";
            }
        }

       
        
    }


    
}