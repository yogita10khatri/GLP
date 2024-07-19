using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.OleDb;

public partial class Admin_AddAboutus : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {
        // autonum();
        if (!IsPostBack)
        {
            string con = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            OleDbCommand cmd;
            OleDbConnection conn = new OleDbConnection(con);
            string str1 = "select * from about where a_id =1";
            cmd = new OleDbCommand(str1, conn);
            conn.Open();
            OleDbDataReader dr1 = cmd.ExecuteReader();
            if (dr1.Read())
            {
                des.Text = dr1.GetValue(0).ToString();
            }
         
            conn.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string con = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        OleDbCommand cmd;
        OleDbConnection conn = new OleDbConnection(con);
       string str = "update [about] set [desc] ='"+des.Text+"' where [a_id]=1";
        cmd = new OleDbCommand(str, conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    //private void autonum()
    //{
    //    string con = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
    //    OleDbCommand cmd;
    //    OleDbConnection conn = new OleDbConnection(con);
    //    conn.Open();
    //    cmd = new OleDbCommand("select count(ID) from about", conn);
    //    int i = Convert.ToInt32(cmd.ExecuteScalar());
    //    conn.Close();
    //    i++;
    //    id1.Text = val + i.ToString();

    //}
}