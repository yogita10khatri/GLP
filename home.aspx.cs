using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.OleDb;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
   
       
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbDataAdapter sda;
        DataTable dt = new DataTable();  
        string con = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        sda = new OleDbDataAdapter("select * from about", con);  
        //DataTable dt = new DataTable();  
        sda.Fill(dt);  
        Rep1.DataSource = dt;  
        Rep1.DataBind();

        OleDbDataAdapter sda1;
        DataTable dt1 = new DataTable();  
        sda1 = new OleDbDataAdapter("select * from why", con);
      //  DataTable dt1 = new DataTable();  
        sda1.Fill(dt1);
        Rep2.DataSource = dt1;
        Rep2.DataBind();

      //  OleDbDataAdapter sda2;
      //  DataTable dt2 = new DataTable();
      //  sda2 = new OleDbDataAdapter("select * from category", con);
      //  //  DataTable dt1 = new DataTable();  
      //  sda2.Fill(dt2);
      //Repeater1.DataSource = dt2;
      //Repeater1.DataBind();

     
    }
}
