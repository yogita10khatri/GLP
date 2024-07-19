using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.OleDb;

public partial class AddWhyUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          
            
            //string con = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            //OleDbCommand cmd;
            //OleDbConnection conn = new OleDbConnection(con);
            
            //string str1 = "select * from why where id =1";
            //cmd = new OleDbCommand(str1, conn);
            //conn.Open();
            //OleDbDataReader dr1 = cmd.ExecuteReader();
            //if (dr1.Read())
            //{
            //    des.Text = dr1.GetValue(0).ToString();
            //}

            //conn.Close();
            string con = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            OleDbCommand cmd;
            OleDbConnection conn = new OleDbConnection(con);
            string str1 = "select * from [why] where [id] = 1";
            cmd = new OleDbCommand(str1, conn);
            conn.Open();
            try
            {

                OleDbDataReader d1 = cmd.ExecuteReader();
                if (d1.Read())
                {
                    des.Text = d1.GetValue(1).ToString();

                }
            }
            catch (Exception E1)
            {
            
            }

            conn.Close();


            
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string con = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        OleDbCommand cmd;
        OleDbConnection conn = new OleDbConnection(con);
        string str = "update [why] set [desc1] ='" + des.Text + "' where [id]=1";
        // string str = "insert into about values(@desc , @id)";
        cmd = new OleDbCommand(str, conn);

     
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}