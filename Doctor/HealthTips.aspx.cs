using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Doctor_HealthTips : System.Web.UI.Page
{
    DataManipulation dm = new DataManipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "select * from Doctors_reg_tb where Id='" + Session["DoctorId"] + "'";
        DataSet ds = dm.For_Adapter(str);
        Label1.Text = ds.Tables[0].Rows[0][0].ToString();
        Label2.Text = ds.Tables[0].Rows[0][1].ToString();
            
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str1 = "insert into Tips_Tb values('" + Label1.Text + "','" + Label2.Text + "','" + txtnotes.Text + "')";
        int r = dm.For_Execute(str1);
        if(r>0)
        {
            Response.Write("<script>alert('saved..')</script>");
        }
    }
}