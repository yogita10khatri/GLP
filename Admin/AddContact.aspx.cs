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
using System.Data;
using System.Data.OleDb;
using System.Configuration;
using System.IO;


public partial class Admin_AddContact : System.Web.UI.Page
{
    string con = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
    OleDbCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["upid"] == null)
        {
            Button1.Visible = true;
            Button2.Visible = false;
        }
        else
        {
            Button1.Visible = false;
            Button2.Visible = true;
            OleDbConnection conn = new OleDbConnection(con);
            int id = Int32.Parse(Request.QueryString["upid"]);
            string str1 = "select * from contact where con_ID =" + id + "";
          
            cmd = new OleDbCommand(str1, conn);
            conn.Open();
            OleDbDataReader dr1 = cmd.ExecuteReader();
            if (dr1.Read())
            {
              
                phn.Text = dr1.GetValue(1).ToString();
                address.Text = dr1.GetValue(2).ToString();
                email.Text = dr1.GetValue(3).ToString();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String q = "insert into contact([phone_no],[address],[email]) values('" + phn.Text + "' ,'" + address.Text + "','" + email.Text + "')";
        OleDbConnection conn = new OleDbConnection(con);
        cmd = new OleDbCommand(q, conn);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("viewContact.aspx");
    
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string con = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
      
        OleDbConnection conn = new OleDbConnection(con);
        int id = Int32.Parse(Request.QueryString["upid"]);
        string str1 = "select * from contact where con_ID =" + id + "";


        String q = "update contact set [phone_no]='" + phn.Text + "',[address]='" + address.Text + "',[email] ='" + email.Text + "'  where [con_ID]=" + id + "";
     //  phn.Text = q;
        conn.Open();
        OleDbCommand cmd = new OleDbCommand(q, conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("viewContact.aspx");
    }
}
