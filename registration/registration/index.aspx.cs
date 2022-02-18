using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace registration
{
    public partial class index : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataTable dt = new DataTable();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            con.ConnectionString = ("Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=register;Integrated Security=True");
            con.Open();
            showdata();
            cmd.CommandText = "SELECT * FROM [dbo].[user]";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
        public void showdata()
        {
            cmd.CommandText = "SELECT * FROM [dbo].[user]";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds);
            Label4.Text = ds.Tables[0].Rows[0]["name"].ToString();
        }
    }
}