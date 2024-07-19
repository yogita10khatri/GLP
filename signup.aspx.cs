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


public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection conn;
        OleDbCommand cmd;

        string con = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        conn = new OleDbConnection(con);
        string str = "insert into user ([fullname],[username],[email],[phone],[password],[confirm-p]) values('" + TextBox1.Text + "' ,'" + TextBox2.Text + "' ,'" + TextBox3.Text + "' ,'" + TextBox4.Text + "' ,'" + TextBox5.Text + "' ,'" + TextBox6.Text + "' )";
        cmd = new OleDbCommand(str, conn);
         // TextBox7.Text = "insert into user([fullname],[username],[email],[phone],[password],[confirm-p]) values('" + TextBox1.Text + "' ,'" + TextBox2.Text + "' ,'" + TextBox3.Text + "' ,'" + TextBox4.Text + "' ,'" + TextBox5.Text + "' ,'" + TextBox6.Text + "' )";
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("login.aspx?user=" + TextBox2.Text);


    }
}
