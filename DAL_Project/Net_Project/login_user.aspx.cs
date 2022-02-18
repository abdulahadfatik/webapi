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
    public partial class login_user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-P4KM41N;Initial Catalog=User;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"SELECT [name],[email],[password] FROM [dbo].[users]", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('login successfully')</script>");
            Response.Redirect("Home.aspx");

        }

        public bool LoginCheck(string pName, string pPassword)
        {
            return pPassword.Equals("secret");
        }


    }
}