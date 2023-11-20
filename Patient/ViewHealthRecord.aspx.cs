using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Patient_ViewHealthRecord : System.Web.UI.Page
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
        string str = "select * from Health_Register_Tb where UsersId='" + Session["UserId"]+"'";
        DataSet ds = dm.For_Adapter(str);
        if(ds.Tables[0].Rows.Count>0)
        {
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
    }

    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = e.Item.ItemIndex;
        Bind();
    }

    protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = -1;
        Bind();
    }

    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        Label lblId = (Label)e.Item.FindControl("Label1");
        string dlt = "delete * from Health_Register_Tb where Id='" + lblId.Text + "'";
        int r = dm.For_Execute(dlt);
        if(r>0)
        {
            Bind();
        }
    }

    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        Label lblId = (Label)e.Item.FindControl("Label15");
        TextBox txthealth = (TextBox)e.Item.FindControl("TextBox1");
        TextBox txtweight= (TextBox)e.Item.FindControl("TextBox2");
        TextBox txtblood= (TextBox)e.Item.FindControl("TextBox3");
        TextBox txtreason= (TextBox)e.Item.FindControl("TextBox4");
        RadioButtonList rdomed = (RadioButtonList)e.Item.FindControl("RadioButtonList1");
        TextBox txtemergency= (TextBox)e.Item.FindControl("TextBox6");
        TextBox txtrelation= (TextBox)e.Item.FindControl("TextBox7");
        TextBox txtcontact= (TextBox)e.Item.FindControl("TextBox8");
        string str = "Update Health_Register_Tb set Height='" + txthealth.Text + "',Weight='" + txtweight.Text + "'," +
            "BloodGroup='" + txtblood.Text + "',Reason_for_Appointment='" + txtreason.Text + "',Taking_any_medication_currently='" + rdomed.Text + "'," +
            "Emergency_contact='" + txtemergency.Text + "',Relationship_with_patients='" + txtrelation.Text + "'," +
            "Contact='" + txtcontact.Text + "'where Id='" + lblId.Text + "'";
        int r = dm.For_Execute(str);
        if(r>0)
        {
            DataList1.EditItemIndex = -1;
            Bind();
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Patient/HealthDetails.aspx");
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}