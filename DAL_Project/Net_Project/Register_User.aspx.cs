using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Net_Project
{
    public partial class Register_User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void submit_Click(object sender, EventArgs e)
        {
        SqlConnection SQLConn = new SqlConnection(@"Data Source=DESKTOP-P4KM41N;Initial Catalog=User;Integrated Security=True");
        SqlDataAdapter SQLAdapter = new SqlDataAdapter("insert into users values('" + username.Text + "','" + email.Text + "','" + password.Text + "')", SQLConn);
        DataTable DT = new DataTable();
        SQLAdapter.Fill(DT);
        Session["username"] = username.Text.Trim();
        Response.Redirect("login_user.aspx");
            
        }
    }
}