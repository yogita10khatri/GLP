using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Configuration;

public partial class contactUs : System.Web.UI.Page
{
    string con = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbDataAdapter sda;
        DataTable dt = new DataTable();

        sda = new OleDbDataAdapter("select * from contact", con);
        sda.Fill(dt);
        Rep1.DataSource = dt;
        Rep1.DataBind();
    }
}