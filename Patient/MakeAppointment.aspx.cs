using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Patient_MakeAppointment : System.Web.UI.Page
{
    DataManipulation dm = new DataManipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        
        string str = "select Tips_Tb.Tips,Doctors_reg_tb.* from Doctors_reg_tb inner join Tips_Tb on " +
            "Tips_Tb.DoctorId=Doctors_reg_tb.Id where Specialised_In='" + txtSearch.Text + "'";
        DataSet ds = dm.For_Adapter(str);
        if(ds.Tables[0].Rows.Count>0 && txtSearch.Text!=null)
        {
            DataList1.DataSource = ds;
            DataList1.DataBind();
            Panel1.Visible = true;
            txtSearch.Text = "";
            lblmsg.Text = "";
        }
        else
        {
            Panel1.Visible = false;
            lblmsg.Visible = true;
            lblmsg.Text = "The search item " + txtSearch.Text + " is not available in this record";
        }
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName=="appointment")
        {
            Response.Redirect("~/Patient/ConfirmAppointment.aspx?Id=" + e.CommandArgument.ToString());
        }
        else
        {
            Response.Redirect("~/Patient/ViewFeedback.aspx?Id=" + e.CommandArgument.ToString());
        }
    }
}