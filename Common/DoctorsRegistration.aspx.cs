using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Common_DoctorsRegistration : System.Web.UI.Page
{
    DataManipulation dm = new DataManipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(fulphoto.HasFile)
        {
            string path = "~/Doctor/Photo/" + fulphoto.FileName;
            fulphoto.SaveAs(Server.MapPath(path));
            imgphoto.ImageUrl = path;
        }
    }

   

    protected void Button2_Click1(object sender, EventArgs e)
    {
        string str = "insert into Doctors_reg_tb values ('" + txtname.Text + "','" + imgphoto.ImageUrl + "','" + txtage.Text + "','" + rdogender.Text + "','" + txtplace.Text + "','" + txtmobile.Text + "','" + txtemail.Text + "','" + txtpassword.Text + "','" + ddlspecial.Text + "','" + ddllanguage.Text + "','" + txtyear.Text + "','" + txtedu.Text + "','" + txtaward.Text + "')";
        int r = dm.For_Execute(str);
        if (r > 0)
        {
            Response.Write("<script>alert('Registration was successfull...')</script>");
        }
    }
}