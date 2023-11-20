using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Common_Login : System.Web.UI.Page
{
    DataManipulation dm = new DataManipulation();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        string str = "select * from Appointment_Tb where email='" + txtemail.Text + "'and password='" + txtpassword.Text + "'";
        DataSet ds = dm.For_Adapter(str);
        if(ds.Tables[0].Rows.Count>0)
        {
            lblmsg.Text = "";
           
            Session["UserId"] = ds.Tables[0].Rows[0][0].ToString();
            Response.Redirect("~/Patient/PatientHome.html");
           
        }
        
        else
        {
            string str1="select * from Admin_tb where email='"+txtemail.Text+"' and password='"+txtpassword.Text+"'";
            DataSet ds1 = dm.For_Adapter(str1);           
            if (ds1.Tables[0].Rows.Count>0)
            {
               
                lblmsg.Text = "";
                Session["AdminId"] =ds1.Tables[0].Rows[0][0].ToString();                
                Response.Redirect("~/Admin/AdminHome.aspx");
                
            }
            else
            {
                string str2 = "select * from Doctors_reg_tb where email='"+txtemail.Text+"' and password='" + txtpassword.Text + "'";
                DataSet ds2 = dm.For_Adapter(str2);
                if(ds2.Tables[0].Rows.Count>0)
                {
                    lblmsg.Visible = false;
                    Session["DoctorId"] = ds2.Tables[0].Rows[0][0].ToString();
                    Response.Redirect("~/Doctor/DoctorHome.html");
                }
                else
                {
                    lblmsg.Visible = true;
                    lblmsg.Text = "invalid username and password";
                }

            }           
        }
        
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Common/Registration.aspx");
    }

    protected void txtemail_TextChanged(object sender, EventArgs e)
    {

    }
}