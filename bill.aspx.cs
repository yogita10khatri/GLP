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


public partial class bill : System.Web.UI.Page
{
    string con = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

   
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection conn = new OleDbConnection(con);
        if (!IsPostBack)
        {
            OleDbDataAdapter sda;
            int cartid1 = Convert.ToInt32(Request.QueryString["cartid"]);
           

            String a1 = " SELECT max(cart_id) as mcart from cart  ";
            OleDbCommand cmd11 = new OleDbCommand(a1,conn);           
          
            conn.Open();
            cmd11.ExecuteNonQuery();
            int test1 = (int)(cmd11.ExecuteScalar());
          //  Label3.Text = Label3.Text + test1.ToString();
         //   Label1.Text = test1.ToString();
            conn.Close();

            DataTable dt1 = new DataTable();
            String p1 = " SELECT *  FROM bill where cart_id = "+test1+"";
            OleDbCommand cmd1 = new OleDbCommand(p1, conn);
            sda = new OleDbDataAdapter(p1, con);
            sda.Fill(dt1);
            Repeater1.DataSource = dt1;
            Repeater1.DataBind();

            DataTable dt2 = new DataTable();
            String p2 = " SELECT p_name, p_id , (cart_quantity*cart.price) as t_price, cart_quantity , cart_id , price  FROM cart where cart_id = 0 ";
            OleDbCommand cmd2 = new OleDbCommand(p2, conn);
            sda = new OleDbDataAdapter(p2, con);
            sda.Fill(dt2);
            Repeater2.DataSource = dt2;
            Repeater2.DataBind();


            DataTable dt3 = new DataTable();
            String p3 = " SELECT *  FROM bill where cart_id = " + test1 + " ";
            OleDbCommand cmd3 = new OleDbCommand(p3, conn);
            sda = new OleDbDataAdapter(p3, con);
            sda.Fill(dt3);
            Repeater3.DataSource = dt3;
            Repeater3.DataBind();
            //Double test1 = (Double)cmd1.ExecuteScalar();
            //Label3.Text = Label3.Text + test1.ToString();
            //conn.Close();
            //string t1 = "insert into bill([cart_id],[bill_date],[t_price]) values('" + phn.Text + "' ,'" + address.Text + "','" + email.Text + "')";
           
            //OleDbCommand cmd = new OleDbCommand(qy, conn);

            //conn.Open();
            //cmd.ExecuteNonQuery();
            
            // generating new id 
            OleDbCommand cmd = new OleDbCommand("select MAX(cart_id) from cart", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            int id = (int)(cmd.ExecuteScalar());
            conn.Close();
            id = id + 1;

            
            cmd = new OleDbCommand("update cart set cart_id='"+id+"' where cart_id=0", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

        }
    }
    protected void btnPrint_Click(object sender, EventArgs e)
    {
       
        Session["ctrl"] = pnl1;  
        ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('PrintMe','height=300px,width=300px,scrollbars=1');</script>");
        Control ctrl = (Control)Session["ctrl"];
        PrintHelper.PrintWebControl(ctrl);  
    }
}
