using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Add_Staff : System.Web.UI.Page
{
    DataManipulation dm = new DataManipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_register_Click(object sender, EventArgs e)
    {
        string str = "insert into Staff_Tb Values('" + txtname.Text + "','" + txtlast.Text + "','" + radiobtn.Text + "','" + txtage.Text + "','" + ddldepartment.Text + "','" + txtmobile.Text + "','" + txtemail.Text + "')";
        int r = dm.For_Execute(str);
        if(r>0)
        {
            Response.Write("<script>alert('Added to the table...')</script>");
        }
    }
}