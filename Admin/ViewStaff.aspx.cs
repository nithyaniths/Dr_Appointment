using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_ViewStaff : System.Web.UI.Page
{
    // DataManipulation dm = new DataManipulation();
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\NithyaProjects\NewProjects\My_Appointment\App_Data\My_Appointment_db.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Wogrid();
    }
    public string Wogrid()
    {
        string htmlStr = "";
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandText = "select Isnull(FirstName,' ')+' '+Isnull(LastName,' '),Id,Department,Email  from Staff_Tb";
        con.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        while(reader.Read())
        {
            int ID = reader.GetInt32(1);
            string Name =reader.GetString(0);          
            string Department = reader.GetString(2);          
            string Email=reader.GetString(3);
            htmlStr += "<tr><td>" + ID + "</td>" + "<td>" + Name +  "</td>" + "<td>" + Department + "</td>" +  "<td>" + Email + "</td></tr>";
        }
        con.Close();
        return htmlStr;
    }
}