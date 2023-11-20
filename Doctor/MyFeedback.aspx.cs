using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Doctor_MyFeedback : System.Web.UI.Page
{
    DataManipulation dm = new DataManipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "select * from  Prescription_Tb where UserId='" + Session["UserId"] + "'";
        DataSet ds2 = dm.For_Adapter(str);
        int doctorId = Convert.ToInt32(ds2.Tables[0].Rows[0][2].ToString());
        //TextBox txtFeed = (TextBox)(e.Item.FindControl("txtfeedback"));
        string str1 = "insert into Feedback_Tb values('" + Session["UserId"] + "','" + doctorId + "','" + txtfeed.Text + "')";
        int r = dm.For_Execute(str1);
        if (r > 0)
        {
            Response.Write("<script>alert('Insert feedback..')</script>");
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Patient/View My Appointment.aspx");
    }
}