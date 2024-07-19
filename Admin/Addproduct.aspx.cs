using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;
using System.IO;
using System.Data;

public partial class Admin_AddProduct : System.Web.UI.Page
{
    string con = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
    OleDbCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection conn = new OleDbConnection(con);
        if (!IsPostBack)
        {
            OleDbDataAdapter ad = new OleDbDataAdapter("select * from category", conn);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataValueField = "c_name";
            DropDownList1.DataTextField = "c_name";
            DropDownList1.DataBind();
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

                int id = Int32.Parse(Request.QueryString["upid"]);
                string str1 = "select * from product where p_id =" + id + "";
                //  TextBox1.Text = str1;
                cmd = new OleDbCommand(str1, conn);
                conn.Open();
                OleDbDataReader dr1 = cmd.ExecuteReader();
                if (dr1.Read())
                {
                    TextBox1.Text = dr1.GetValue(1).ToString();
                  TextBox2.Text = dr1.GetValue(2).ToString();
                    TextBox3.Text = dr1.GetValue(3).ToString();
                    
                    TextBox4.Text = dr1.GetValue(4).ToString();
                    TextBox5.Text = dr1.GetValue(5).ToString();
                  //  TextBox6.Text = dr1.GetValue(6).ToString();
                    // FileUpload1.PostedFile.FileName = dr1.GetValue(3);

                }
            }
        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/productImage/") + fileName);

        String q = "insert into product([p_name],[desc],[p_image],[category],[c_id],[quantity],[comp_name],[comp_id],[price]) values('" + TextBox1.Text + "' ,'" + TextBox2.Text + "' ,'" + fileName + "','" + DropDownList1.SelectedItem.Value + "','" + TextBox7.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
        OleDbConnection conn = new OleDbConnection(con);
        cmd = new OleDbCommand(q, conn);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("Viewproduct.aspx");
    }

  
}