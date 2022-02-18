using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace website
{
    public partial class Update_Profile : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            cmd.Connection = con;
            cmd.CommandText = "select * from student";
            con.Open();
            RepeatInformation.DataSource = cmd.ExecuteReader();
            RepeatInformation.DataBind();
            con.Close();
        }
    }
}