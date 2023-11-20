using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Doctor_ViewSchedule : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\NithyaProjects\NewProjects\My_Appointment\App_Data\My_Appointment_db.mdf;Integrated Security=True");
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
        string str = "select Consulting_Days_Tb.Id,Consulting_Days_Tb.Day,Schedule_Tb.* from Consulting_Days_Tb inner join Schedule_Tb on Consulting_Days_Tb.CId = Schedule_Tb.Id  where DoctorId = '" + Session["DoctorId"] + "'";
        DataSet ds = dm.For_Adapter(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
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

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string Id = GridView1.Rows[e.RowIndex].Cells[0].Text;
        TextBox txtDay = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0];
        TextBox txtStart = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];
        TextBox txtEnd = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];
        string str1 = "Update Consulting_Days_Tb set Day='" + txtDay.Text + "' where Id='" + Id + "'";
        int r = dm.For_Execute(str1);
        if(r>0)
        {
            GridView1.EditIndex = -1;
            Bind();

        }
        string str2 = "Update Schedule_Tb set Starting_Time='" + txtStart.Text + "',Ending_Time='" + txtEnd.Text + "'";
        int r1= dm.For_Execute(str2);
        if(r1>0)
        {
            GridView1.EditIndex = -1;
            Bind();
        }
    }



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}