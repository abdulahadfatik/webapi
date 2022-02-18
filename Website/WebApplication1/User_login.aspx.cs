using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class User_login : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                Response.Redirect("index.aspx");
            }
            else
            con.ConnectionString = ("Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=register;Integrated Security=True");
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "SELECT * FROM [dbo].[user] where email='" + email.Text + "'and password='" + password.Text + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "[dbo].[user]");
            cmd.ExecuteNonQuery();
            if (ds.Tables[0].Rows.Count == 1)
            {
                Session["email"] = email.Text.Trim();
                Response.Write("<script>alert('login successfully')</script>");
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Write("<script>alert('login failed')</script>");

            }
        }
    }
}