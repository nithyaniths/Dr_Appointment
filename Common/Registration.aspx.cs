using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Common_Registration: System.Web.UI.Page
{
    DataManipulation dm = new DataManipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "insert into Appointment_Tb values('" + txtname.Text + "','" + radiobtn.Text + "','" + txtage.Text + "','" + txtaddress.Text + "','" + txtmobile.Text + "','" + txtemail.Text + "','" + txtpassword.Text + "')";
        int r = dm.For_Execute(str);
        if (r > 0)
        {
            Response.Write("<script>alert('Registration was successfull...')</script>");            
        }
    }
}