using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Patient_View_My_Appointment : System.Web.UI.Page
{
    DataManipulation dm = new DataManipulation();
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\NithyaProjects\NewProjects\My_Appointment\App_Data\My_Appointment_db.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }
    }
    public void Bind()
    {
        string str3 = "select Prescription from Prescription_Tb where UserId='" + Session["UserId"] + "'";
        SqlCommand cmd1 = new SqlCommand(str3, con);
        con.Open();
        string Prescription =Convert.ToString( cmd1.ExecuteScalar());
        con.Close();
        if (Prescription !="")
        {
            string str = "select Doctors_reg_tb.Id, Doctors_reg_tb.Name,Doctors_reg_tb.Mobile , Consultation_Tb.* from Consultation_Tb inner join Doctors_reg_tb on" +
                " Consultation_Tb.DoctorId=Doctors_reg_tb.Id  where Consultation_Tb.UserId='" + Session["UserId"] + "'Order by ConsultationDate";
            DataSet ds = dm.For_Adapter(str);

            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }
        else
        {
            lblmsg.Visible = true;
            lblmsg.Text = "NO APPOINTMENTS..";
        }

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string str2 = "delete from Consultation_Tb where ConsultationTime='" + GridView1.Rows[e.RowIndex].Cells[5].Text + "' and UserId='"+Session["UserId"]+"'";
        int r = dm.For_Execute(str2);
        if (r > 0)
        {
            Bind();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {       
        string str1 = "select Id from Prescription_Tb where  UserId='" + Session["UserId"] + "'";       
        SqlCommand cmd = new SqlCommand(str1, con);
        con.Open();
        int preId = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        string str = " select * from Prescription_Tb  where UserId='" + Session["UserId"] + "' and DoctorId='" + GridView1.SelectedRow.Cells[0].Text+ "'";
        DataSet ds1 = dm.For_Adapter(str);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            GridView2.DataSource = ds1;
            GridView2.DataBind();
            Panel1.Visible = true;
            lblmsg.Visible = false;
        }
        
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "Edit")
        {
            Response.Redirect("~/Doctor/MyFeedback.aspx");
        }
    }

    //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    //{
    //    string str = "select Doctors_reg_tb.Id,Prescription_Tb.* from Prescription_Tb inner join Doctors_reg_tb on " +
    //        "Prescription_Tb.DoctorId=Doctors_reg_tb.Id where UserId='" + Session["UserId"] + "'";
    //    DataSet ds3 = dm.For_Adapter(str);
    //    int DoctorId =Convert.ToInt32( ds3.Tables[0].Rows[0][0].ToString());
    //    if(e.Row.RowType==DataControlRowType.DataRow)
    //    {
           
    //        string str1 = "select * from Prescription_Tb  where UserId='" + Session["UserId"] + "'and DoctorId='"+DoctorId+"'";
    //        DataSet ds2 = dm.For_Adapter(str1);
    //        string Prescription = ds2.Tables[0].Rows[0][5].ToString();
    //        if(Prescription!="")
    //        {
    //            Button btnView = (Button)e.Row.FindControl("btnEdit");
    //            btnView.Visible = true;
    //        }
            
    //    }
    //}
}
    