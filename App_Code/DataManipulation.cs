using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class DataManipulation
{
    SqlConnection con;
    public DataManipulation()
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\NithyaProjects\NewProjects\My_Appointment\App_Data\My_Appointment_db.mdf;Integrated Security=True");

    }
    public int For_Execute(string str)
    {
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        int r = cmd.ExecuteNonQuery();
        con.Close();
        return r;
    }
    public DataSet For_Adapter(string str)
    {
        SqlDataAdapter adpt = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        con.Open();
        adpt.Fill(ds);
        con.Close();
        return ds;
    }
}