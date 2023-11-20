using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Patient_ViewFeedback : System.Web.UI.Page
{
    DataManipulation dm = new DataManipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        string str= "select Appointment_Tb.Name,Feedback_Tb.* from Appointment_Tb inner join Feedback_Tb " +
            "on Appointment_Tb.Id=Feedback_Tb.UsersId where DoctorId=" + Request.QueryString["Id"].ToString();
        DataSet ds = dm.For_Adapter(str);
        if(ds.Tables[0].Rows.Count>0)
        {
            Label3.Visible = false;
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
        else
        {
            Label3.Visible = true;
            Label3.Text = "No FeedBack to View";
        }
    }
}