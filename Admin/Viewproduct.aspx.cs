using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.OleDb;

public partial class Admin_product : System.Web.UI.Page
{
    string con = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Delid1"] == null)
        {
            OleDbDataAdapter sda;
            DataTable dt = new DataTable();

            sda = new OleDbDataAdapter("select * from product", con);
            //DataTable dt = new DataTable();  
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
        else
        {

            int adelid = Convert.ToInt32(Request.QueryString["Delid1"]);

            string q = "delete  from [product] where [p_ID] = " + adelid + " ";
            OleDbConnection conn = new OleDbConnection(con);
            conn.Open();
            //TextBox1.Text = q;
            OleDbCommand cmd = new OleDbCommand(q, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("viewProduct.aspx");

        }

    }
}