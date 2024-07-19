using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Configuration;
using System.Data.OleDb;

public partial class MasterPage : System.Web.UI.MasterPage
{
    string con = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbDataAdapter sda;
        DataTable dt = new DataTable();

        sda = new OleDbDataAdapter("select * from category", con);
        sda.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();

     //   OleDbDataAdapter sda;
     //   DataTable dt = new DataTable();
     //   string con = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        sda = new OleDbDataAdapter("select * from about", con);
        //DataTable dt = new DataTable();  
        sda.Fill(dt);
        Repeater2.DataSource = dt;
        Repeater2.DataBind();
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
     
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ointment.aspx");    
    }
}

