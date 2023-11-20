using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Doctor_ViewPatient : System.Web.UI.Page
{
    DataManipulation dm = new DataManipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "select Appointment_Tb.Id, Appointment_Tb.Name,Appointment_Tb.MobileNo,Appointment_Tb.Email,Consultation_Tb.* from Appointment_Tb inner join Consultation_Tb on Appointment_Tb.Id=Consultation_Tb.UserId where DoctorId='"+Session["DoctorId"]+"'";
        DataSet ds = dm.For_Adapter(str);
        if(ds.Tables[0].Rows.Count>0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String str = "select Appointment_Tb.Age,Appointment_Tb.Gender,Health_Register_Tb.* from Appointment_Tb inner join Health_Register_Tb on Appointment_Tb.Id=Health_Register_Tb.UsersId where Name='" + GridView1.SelectedRow.Cells[1].Text + "'";
        DataSet ds = dm.For_Adapter(str);
       
        if(ds.Tables[0].Rows.Count>0)
        {

            lblId.Text = ds.Tables[0].Rows[0][2].ToString();
            lblAge.Text = ds.Tables[0].Rows[0][0].ToString();
            lblGen.Text = ds.Tables[0].Rows[0][1].ToString();
            lblHeight.Text = ds.Tables[0].Rows[0][3].ToString();
            lblWeight.Text = ds.Tables[0].Rows[0][4].ToString();
            lblBlood.Text = ds.Tables[0].Rows[0][5].ToString();
            lblMed.Text = ds.Tables[0].Rows[0][7].ToString();
            lblRes.Text = ds.Tables[0].Rows[0][6].ToString();
            lblName.Text = ds.Tables[0].Rows[0][8].ToString();
            lblRelation.Text = ds.Tables[0].Rows[0][9].ToString();
            lblCon.Text = ds.Tables[0].Rows[0][10].ToString();

            string str1 = "select * from Prescription_Tb where HealthId='" + lblId.Text + "' and DoctorId='" + Session["DoctorId"] + "'";
            DataSet ds1 = dm.For_Adapter(str1);
            if(ds1.Tables[0].Rows.Count>0)
            {
                lblmsg.Visible = false;
                DataList1.DataSource = ds1;
                DataList1.DataBind();
            }
            else
            {
                lblmsg.Visible = true;
                lblmsg.Text = "No Prescription to view";
            }
           
        }
        Panel1.Visible = true;
       
           
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int UserId = Convert.ToInt32(GridView1.SelectedRow.Cells[0].Text);
        string str1 = "insert into Prescription_Tb values('" + UserId + "','" + Session["DoctorId"] + "','" + lblId.Text + "','" + txtPres.Text + "','" + DateTime.Now + "')";
        int r = dm.For_Execute(str1);
        if (r > 0)
        {
            Response.Write("<script>alert('inserted successfully..')</script>");
        }

    }
}