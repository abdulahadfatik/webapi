using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = ("Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=register;Integrated Security=True");
            con.Open();
            cmd.CommandText = "SELECT * FROM [dbo].[user]";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();
        }
    }
}