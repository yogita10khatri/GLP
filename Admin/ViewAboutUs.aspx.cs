using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Configuration;

public partial class Admin_ViewAboutUs : System.Web.UI.Page
{
    string con = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (Request.QueryString["Delid1"] == null)
        {
            OleDbDataAdapter sda;
            DataTable dt = new DataTable();

            sda = new OleDbDataAdapter("select * from about", con);
            sda.Fill(dt);
            rep1.DataSource = dt;
            rep1.DataBind();
        }
        else
        {

            int adelid = Convert.ToInt32(Request.QueryString["Delid1"]);

            string q = "delete  from [about] where [id] = " + adelid + " ";
            OleDbConnection conn = new OleDbConnection(con);
            conn.Open();
            //TextBox1.Text = q;
            OleDbCommand cmd = new OleDbCommand(q, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("ViewAboutUs.aspx");

        }
    }
}