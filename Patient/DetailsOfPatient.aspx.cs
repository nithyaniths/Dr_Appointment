using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Patient_DetailsOfPatient : System.Web.UI.Page
{
    DataManipulation dm = new DataManipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            formdetail();
        }
    }
    public void formdetail()
    {
        string str = "select * from Appointment_Tb where Id='" + Session["UserId"].ToString() + "'";
        DataSet ds = dm.For_Adapter(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            FormView1.DataSource = ds;
            FormView1.DataBind();
        }
    }

    protected void FormView1_ModeChanging(object sender, FormViewModeEventArgs e)
    {
        if (e.NewMode.ToString() == "Edit")
        {
            FormView1.ChangeMode(FormViewMode.Edit);
        }
        if (e.NewMode.ToString() == "ReadOnly")
        {
            FormView1.ChangeMode(FormViewMode.ReadOnly);
        }

        formdetail();
    }

    protected void FormView1_ItemDeleting(object sender, FormViewDeleteEventArgs e)
    {
        Label label = (Label)FormView1.FindControl("lblId");
        string str = "delete from Appointment_Tb where Id='"+label.Text+ "'";
        int r = dm.For_Execute(str);
        if (r > 0)
        {
            formdetail();
        }
        Response.Write("<script>alert('Deleted successfully..')</script>");
    }

    protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
    {
        Label lblId = (Label)FormView1.FindControl("Label1");
        TextBox txtname = (TextBox)FormView1.FindControl("TextBox7");
        TextBox txtgender = (TextBox)FormView1.FindControl("TextBox5");
        TextBox txtage = (TextBox)FormView1.FindControl("TextBox3");
        TextBox txtaddress = (TextBox)FormView1.FindControl("TextBox1");
        TextBox txtmobile = (TextBox)FormView1.FindControl("TextBox4");
        TextBox txtemail = (TextBox)FormView1.FindControl("TextBox6");
        string str = "Update Appointment_Tb set Name='"+txtname.Text+"', Gender='" + txtgender.Text + "',Age='" + txtage.Text + "',Address='" + txtaddress.Text + "',MobileNo='" + txtmobile.Text + "',Email='" + txtemail.Text + "' where Id='"+lblId.Text+"'";
        int r = dm.For_Execute(str);
        if (r > 0)
        {
            FormView1.ChangeMode(FormViewMode.ReadOnly);
            formdetail();
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Patient/ViewHealthRecord.aspx");
    }
}