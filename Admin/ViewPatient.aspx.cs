using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_ViewPatient : System.Web.UI.Page
{
    DataManipulation dm = new DataManipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Bind();
        }
    }
    public void Bind()
    {
        String str = "select * from Appointment_Tb ";
        DataSet ds = dm.For_Adapter(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str = "select * from Health_Register_Tb where UsersId='" + GridView1.SelectedRow.Cells[0].Text + "'";
        DataSet ds = dm.For_Adapter(str);
        if(ds.Tables[0].Rows.Count>0)
        {
            lblId.Text = ds.Tables[0].Rows[0][0].ToString();
            txtheight.Text = ds.Tables[0].Rows[0][1].ToString();
            txtweight.Text = ds.Tables[0].Rows[0][2].ToString();
            txtblood.Text = ds.Tables[0].Rows[0][3].ToString();
            txtreason.Text = ds.Tables[0].Rows[0][4].ToString();
            redolist.Text = ds.Tables[0].Rows[0][5].ToString();
            txtemergency.Text = ds.Tables[0].Rows[0][6].ToString();
            txtrelation.Text = ds.Tables[0].Rows[0][7].ToString();
            txtcontact.Text = ds.Tables[0].Rows[0][8].ToString();
        }
        Panel1.Visible=true;
    }



    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        Bind();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        Bind();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string Id = GridView1.Rows[e.RowIndex].Cells[0].Text;
        TextBox txtname = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0];
        TextBox txtgender = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];
        TextBox txtage = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];
        TextBox txtaddress = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0];
        TextBox txtmobile = (TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0];
        TextBox txtemail = (TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0];
        string str1 = "update Appointment_Tb set Name='" + txtname.Text + "',Gender='" + txtgender.Text + "',Age='" + txtage.Text + "'," +
            "Address='" + txtaddress.Text + "',MobileNo='" + txtmobile.Text + "',Email='" + txtemail.Text + "'where Id='" + GridView1.Rows[e.RowIndex].Cells[0].Text + "'";

        int r = dm.For_Execute(str1);
        if(r>0)
        {
            GridView1.EditIndex = -1;
            Bind();
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string str = "delete from Appointment_Tb where Id='" + GridView1.Rows[e.RowIndex].Cells[0].Text + "'";
        int r = dm.For_Execute(str);
         if(r>0)
        {
            Bind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str1 = "Update Health_Register_Tb set Height='" + txtheight.Text + "',Weight='" + txtweight.Text + "',BloodGroup='" + txtblood.Text + "',Reason_for_Appointment='" + txtreason.Text + "'," +
            "Taking_any_medication_currently='" + redolist.Text + "',Emergency_contact='" + txtemergency.Text + "',Relationship_with_patients='" + txtrelation.Text + "',Contact='" + txtcontact.Text + "' where Id='" + lblId.Text + "'";
        int r = dm.For_Execute(str1);
        if(r>0)
        {
            Response.Write("<script>alert('Updated..')</script>");
        }
    }
}