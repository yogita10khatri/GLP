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


public partial class login : System.Web.UI.Page
{
   

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        string u1, p1;
        OleDbCommand cmd;
        OleDbConnection conn;
        
        DataTable dt = new DataTable();
       // conn = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=F:\medi_project\info.mdb");
        string con = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        conn = new OleDbConnection(con);
        string str = "select * from [admin] where admin_name='"+TextBox1.Text+"'";
        cmd = new OleDbCommand(str, conn);
   
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        OleDbDataAdapter ad = new OleDbDataAdapter(cmd);
        ad.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            u1 = (string)dt.Rows[0][2];
            p1 = (string)dt.Rows[0][5];
            if (p1 != TextBox2.Text)
            {
                RequiredFieldValidator2.ErrorMessage = "invalid password";
                RequiredFieldValidator2.IsValid = false;
            }
            else
            {
                Response.Redirect("home.aspx?user=" + u1);
            }
        }

        else
        {
            RequiredFieldValidator1.ErrorMessage = "username not found ";
            RequiredFieldValidator1.IsValid = false;
        }
        conn.Close();
    }
}
