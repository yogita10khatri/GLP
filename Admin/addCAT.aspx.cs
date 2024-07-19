using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Configuration;
using System.IO;

public partial class Admin_addCAT : System.Web.UI.Page
{
   

     string con = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
    OleDbCommand cmd;
  
    protected void Page_Load(object sender, EventArgs e)
    {
       // autonum();
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
            string str1 = "select * from category where c_id =" + id + "";
          //  TextBox1.Text = str1;
            cmd = new OleDbCommand(str1, conn);
            conn.Open();
            OleDbDataReader dr1 = cmd.ExecuteReader();
            if (dr1.Read())
            {
                TextBox1.Text = dr1.GetValue(1).ToString();
                //FileUpload1.PostedFile.FileName = dr1.GetValue(2);
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        //string str = "update [about] set [desc] ='" + des.Text + "' where [id]=1";

        string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/catimages/") + fileName);

        String q = "insert into category([c_name],[image]) values('"+ TextBox1.Text + "' ,'"+fileName+"')";
        OleDbConnection conn = new OleDbConnection(con);
        cmd = new OleDbCommand(q,conn);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("viewCategory.aspx");
       //   TextBox1.Text = q;
       
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        string con = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        OleDbCommand cmd;
        OleDbConnection conn = new OleDbConnection(con);
        //string str = "update [about] set [desc] ='" + des.Text + "' where [id]=1";

        string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/catimages/") + fileName);
        int id = Int32.Parse(Request.QueryString["upid"]);
        string str1 = "select * from category where c_id =" + id + "";



        String q = "update category set [c_name] ='" + TextBox1.Text + "' , [image]='" + fileName + "' where [c_id]=" + id + "";
//        TextBox1.Text = q;
        cmd = new OleDbCommand(q, conn);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("viewCategory.aspx");
    }
}