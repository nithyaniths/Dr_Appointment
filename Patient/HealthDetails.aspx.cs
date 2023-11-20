using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Patient_HealthDetails : System.Web.UI.Page
{
    DataManipulation dm = new DataManipulation();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      string str= "insert into Health_Register_Tb values('"+txtheight.Text+"','"+txtweight.Text+"','"+txtblood.Text+"','"+txtreason.Text+"','"+redolist.Text+"','"+txtemergency.Text+"','"+txtrelation.Text+"','"+txtcontact.Text+"','" + Session["UserId"]+"')";
        int r = dm.For_Execute(str);
        if(r>0)
        {
            Response.Write("<script>alert('Submitted....')</script>");
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Patient/ViewHealthRecord.aspx");
    }
}