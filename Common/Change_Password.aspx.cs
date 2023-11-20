using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Common_Change_Password : System.Web.UI.Page
{
    DataManipulation dm = new DataManipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "select * from Appointment_Tb where Id='" + Session["UserId"] + "'and password='" + txtOld.Text + "'";
        DataSet ds = dm.For_Adapter(str);
        if(ds.Tables[0].Rows.Count>0)
        {
            string str1 = "update Appointment_Tb set Password='" + txtNew.Text + "'where Id='" + Session["UserId"] + "'";
            int r = dm.For_Execute(str1);
            if(r>0)
            {
                Response.Write("<script>alert('Password changed.')</script>");
            }
        }
        else
        {
            lblmsg.Text = "Invalid password";
        }
    }
}