using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_Staff_Attendance : System.Web.UI.Page
{
    DataManipulation dm = new DataManipulation();
   
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\NithyaProjects\NewProjects\My_Appointment\App_Data\My_Appointment_db.mdf;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void Bind()
    {
        string str = "select Isnull(FirstName,' ')+' '+Isnull(LastName,' ') as Name,Id,Department,Mobile  from Staff_Tb";
        DataSet ds = dm.For_Adapter(str);
        if (ds.Tables[0].Rows.Count > 0 && txtSearch.Text != null)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

    }
    protected void btnattendance_Click(object sender, EventArgs e)
    {
        DateTime dateTime = Convert.ToDateTime(txtSearch.Text);
       
        DateTime AttDate = dateTime.Date;
        foreach (GridViewRow gridrow in GridView1.Rows)
        {
            int StaffId = Convert.ToInt32(gridrow.Cells[1].Text);
            CheckBox checkBox = (CheckBox)gridrow.FindControl("chkmark");
            if (checkBox.Checked == true)
            {
                string str1 = "insert into Attendance_Tb values('" + StaffId + "','" + AttDate + "')";
                int r = dm.For_Execute(str1);
                Bind();
            }
            else
            {
                string str2 = "insert into Absent_Tb values('" + StaffId + "','" + AttDate + "')";
                int r1 = dm.For_Execute(str2);
                Bind();
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        Bind();
        Panel1.Visible = true;     
    }
     
    protected void headmark_CheckedChanged(object sender,EventArgs e)
    {
        CheckBox hearedChck = ((CheckBox)GridView1.HeaderRow.FindControl("headmark"));
        if(hearedChck.Checked==true)
        {
            foreach(GridViewRow gvRow in GridView1.Rows)
            {
                CheckBox rowChck = ((CheckBox)gvRow.FindControl("chkmark"));
                rowChck.Checked = true;
            }
        }
        else
        {
            foreach(GridViewRow gvRow in GridView1.Rows)
            {
                CheckBox rowChck = ((CheckBox)gvRow.FindControl("chkmark"));
                rowChck.Checked = false;
            }
        }
    }



}



   
