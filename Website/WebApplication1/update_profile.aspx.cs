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
    public partial class update_profile : System.Web.UI.Page
    {
        SqlConnection _con;
        SqlCommand _cmd;
        SqlDataAdapter _da;
        DataTable _dt;
        SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB;AttachDbFilename = |DataDirectry|\\DESKTOP-P4KM41N.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Binding();
            }
        }

        public void Binding()
        {
            update_profile up = new update_profile();
            Repeater1.DataSource = up.GetTable("select * from users");
            Repeater1.DataBind();
        }

        public DataTable GetTable(string Query)
        {
            _da = new SqlDataAdapter(Query, _con);
            _dt = new DataTable();
            _da.Fill(_dt);
            return _dt;
        }
        public int RunDML(string Query)
        {
            int res;
            _cmd.CommandText = Query;
            _con.Open();
            res = _cmd.ExecuteNonQuery();
            _con.Close();
            return res;
        }
    }
}