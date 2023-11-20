using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_DoctorDetails : System.Web.UI.Page
{
    DataManipulation dm = new DataManipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "select * from Doctors_reg_tb";
        DataSet ds = dm.For_Adapter(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str = "select * from Doctors_reg_tb where Id='" + GridView1.SelectedRow.Cells[0].Text + "'";
        DataSet ds = dm.For_Adapter(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            imgphoto.ImageUrl = ds.Tables[0].Rows[0][2].ToString();
            lblId.Text = ds.Tables[0].Rows[0][0].ToString();
            txtname.Text = ds.Tables[0].Rows[0][1].ToString();
            txtage.Text = ds.Tables[0].Rows[0][3].ToString();
            txtplace.Text = ds.Tables[0].Rows[0][5].ToString();
            txtmobile.Text = ds.Tables[0].Rows[0][6].ToString();
            txtemail.Text = ds.Tables[0].Rows[0][7].ToString();
            txtspecialised.Text = ds.Tables[0].Rows[0][9].ToString();
            txtlanguage.Text = ds.Tables[0].Rows[0][10].ToString();
            txtexp.Text = ds.Tables[0].Rows[0][11].ToString();
            txtedu.Text = ds.Tables[0].Rows[0][12].ToString();

        }
        Panel1.Visible = true;
    }
    


    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "Update Doctors_reg_tb set Photo='" + imgphoto.ImageUrl + "', Name='" + txtname.Text + "'," +
            "Age='" + txtage.Text + "',Place='" + txtplace.Text + "',Mobile='" + txtmobile.Text + "',Email='" + txtemail.Text + "'," +
            "Specialised_In='" + txtspecialised.Text + "',Language_Known='" + txtlanguage.Text + "'," +
            "Year_of_clinical_experience='" + txtexp.Text + "',Education_qualification='" + txtedu.Text + "'where Id='"+lblId.Text+"'";
        int r = dm.For_Execute(str);
        if(r>0)
        {
            Response.Write("<script>alert('Updated...')</script>");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string dlt = "Delete from Doctors_reg_tb where Id='" + lblId.Text + "'";
        int r = dm.For_Execute(dlt);
        if(r>0)
        {
            Response.Write("<script>alert('records deleted..')</script>");
        }
    }
}