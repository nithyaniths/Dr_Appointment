using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Doctor_MyProfile : System.Web.UI.Page
{
    DataManipulation dm = new DataManipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            formdetails();
        }

    }
    public void formdetails()
    {
        string str = "select * from Doctors_reg_tb where Id='" + Session["DoctorId"].ToString() + "'";
        DataSet ds = dm.For_Adapter(str);
        if(ds.Tables[0].Rows.Count>0)
        {
            FormView1.DataSource = ds;
            FormView1.DataBind();
        }
        
    }


    protected void FormView1_ModeChanging(object sender, FormViewModeEventArgs e)
    {
        if(e.NewMode.ToString()=="Edit")
        {
            FormView1.ChangeMode(FormViewMode.Edit);
        }
        if(e.NewMode.ToString()=="ReadOnly")
        {
            FormView1.ChangeMode(FormViewMode.ReadOnly);
        }
        formdetails();
    }


    protected void FormView1_ItemDeleting(object sender, FormViewDeleteEventArgs e)
    {
        Label label = (Label)FormView1.FindControl("Label1");
        string dlt = "select * from Doctors_reg_tb where Id='" + label.Text + "'";
        int r = dm.For_Execute(dlt);
        if(r>0)
        {
            formdetails();
        }
    }

    protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
    {
        Image imgphoto = (Image)FormView1.FindControl("imgphoto");
        Label lblId = (Label)FormView1.FindControl("Label13");
        TextBox txtname = (TextBox)FormView1.FindControl("TextBox1");
        TextBox txtage = (TextBox)FormView1.FindControl("TextBox2");
        TextBox txtgender= (TextBox)FormView1.FindControl("TextBox3");
        TextBox txtplace= (TextBox)FormView1.FindControl("TextBox4");
        TextBox txtmobile= (TextBox)FormView1.FindControl("TextBox5");
        TextBox txtemail= (TextBox)FormView1.FindControl("TextBox6");
        TextBox txtspecial= (TextBox)FormView1.FindControl("TextBox7");
        TextBox txtlanguage= (TextBox)FormView1.FindControl("TextBox8");
        TextBox txtyear= (TextBox)FormView1.FindControl("TextBox9");
        TextBox txtedu= (TextBox)FormView1.FindControl("TextBox10");
        TextBox txtaward= (TextBox)FormView1.FindControl("TextBox11");
        string str = "Update Doctors_reg_tb set Photo='"+imgphoto.ImageUrl+"', Name='" + txtname.Text + "',Age='" + txtage.Text + "',Gender='" + txtgender.Text + "'," +
            "Place='" + txtplace.Text + "',Mobile='" + txtmobile.Text + "',Email='" + txtemail.Text + "',Specialised_In='" + txtspecial.Text + "'," +
            "Language_Known='" + txtlanguage.Text + "',Year_of_clinical_experience='" + txtyear.Text + "'," +
            "Education_qualification='" + txtedu.Text + "',Award_or_Publications='" + txtaward.Text + "'Where Id='" + lblId.Text + "'";
        int r = dm.For_Execute(str);
        if(r>0)
        {
            FormView1.ChangeMode(FormViewMode.ReadOnly);
            formdetails();
        }
    }





    protected void Button5_Click(object sender, EventArgs e)
    {
        FileUpload fulphoto = (FileUpload)FormView1.FindControl("FileUpload1") as FileUpload;
        Image imagePhoto = (Image)FormView1.FindControl("imgphoto") as Image;
        if(fulphoto.HasFile)
        {
            string path = "~/Doctor/Photo/" + fulphoto.FileName;
            fulphoto.SaveAs(Server.MapPath(path));
            imagePhoto.ImageUrl = path;
        }
    }
}