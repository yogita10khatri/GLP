using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.OleDb;

public partial class cart : System.Web.UI.Page
{
    string con = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
 
    OleDbDataAdapter sda;
    DataTable dt = new DataTable();
    DataTable dt2 = new DataTable();
    DataTable dt1 = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection conn = new OleDbConnection(con);
        if(!IsPostBack)
        {

            String q = " SELECT cart.p_id , cart.p_name,(cart_quantity*cart.price) as t_price, cart.cart_quantity, cart.cart_id, product.p_image, product.comp_name FROM (cart INNER JOIN product ON cart.p_id = product.p_id) ";
        sda = new OleDbDataAdapter(q, con);
        sda.Fill(dt);
          
        Repeater1.DataSource = dt;
        Repeater1.DataBind();

        string str = "select * from cart where cart_id=0";
        OleDbCommand cmd55 = new OleDbCommand(str,conn);
        conn.Open();
        cmd55.ExecuteNonQuery();
        conn.Close();
        DataTable tb55 = new DataTable();
        OleDbDataAdapter adp55 = new OleDbDataAdapter(cmd55);
        adp55.Fill(tb55);
      
        if (tb55.Rows.Count > 0) {

            String a1 = " SELECT max(cart_id) as mcart from cart  ";
            sda = new OleDbDataAdapter(a1, con);
            sda.Fill(dt2);
            Repeater2.DataSource = dt2;
            Repeater2.DataBind();

            String p1 = " SELECT sum(cart_quantity * price)  FROM cart where cart_id=0 ";
            OleDbCommand cmd1 = new OleDbCommand(p1, conn);
            // sda = new OleDbDataAdapter(q1, con);
            // sda.Fill(dt1);
            conn.Open();
            cmd1.ExecuteNonQuery();

           Double test1 = (Double)(cmd1.ExecuteScalar());
            Label3.Text = Label3.Text + test1.ToString();
            conn.Close();
     
      

        String q1 = " SELECT sum(cart_quantity)  FROM cart where cart_id=0";
        OleDbCommand cmd = new OleDbCommand(q1, conn);
       // sda = new OleDbDataAdapter(q1, con);
       // sda.Fill(dt1);
        conn.Open();
            cmd.ExecuteNonQuery();
            
      Double test = (Double)(cmd.ExecuteScalar());
            Label1.Text = test.ToString() + " Items";
            conn.Close();

       
            int delid1 = Convert.ToInt32(Request.QueryString["delid"]);

            string t1 = "delete * from cart where p_id="+delid1+"";
            cmd = new OleDbCommand(t1, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
            //Label1.Text = q1;
            //int adelid2 = Convert.ToInt32(Request.QueryString["adelid1"]);

            //string t2 = "delete * from cart where cart_id=" + adelid2 + "";
            //cmd = new OleDbCommand(t2, conn);
            //conn.Open();
            //cmd.ExecuteNonQuery();
            //conn.Close();
        }
    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection conn = new OleDbConnection(con);
        Button btn = sender as Button;
        string q1 = "select quantity from product where p_id="+btn.CommandArgument.ToString()+" ";

        string q2 = "select cart_quantity from cart where p_id=" + btn.CommandArgument.ToString() + " ";
        conn.Open();
        OleDbCommand cmd = new OleDbCommand(q1,conn);
       OleDbCommand cmd1 = new OleDbCommand(q2, conn);

       cmd.ExecuteNonQuery();
       cmd1.ExecuteNonQuery();

       int Tquant = (int)cmd.ExecuteScalar();
       int Pquant = (int)cmd1.ExecuteScalar();

       if (Pquant <=Tquant)
       {
           string q3 = "update cart  set cart_quantity = cart_quantity+1 where p_id = " + btn.CommandArgument.ToString() + "";
           //   TextBox1.Text = q;
           cmd = new OleDbCommand(q3, conn);
           cmd.ExecuteNonQuery();
           conn.Close();
           Response.Redirect("cart.aspx");
       }
       else
       {
           
            TextBox1.Visible = true;
           TextBox1.Text = "out of stock ";
       }

      
      


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button btn1 = sender as Button;
        // string q = "select * from cart";
        int c = Convert.ToInt32(btn1.CommandArgument);
        string d = DateTime.Now.ToString();

        OleDbConnection conn = new OleDbConnection(con);
        String q1 = " SELECT sum(cart_quantity)  FROM cart where cart_id=0";
        OleDbCommand cmd = new OleDbCommand(q1, conn);
        // sda = new OleDbDataAdapter(q1, con);
        // sda.Fill(dt1);
        conn.Open();
        cmd.ExecuteNonQuery();

       double test = (double)(cmd.ExecuteScalar());

        conn.Close();

        String qy = "insert into bill([cart_id],[bill_date],[total_quantity],[amount],[customer_name],[mode]) values('" + c + "' ,'"+d+"', '"+ test +"','" +Label3.Text + "','" + " yogita" + "','" + "cash " + "')";
      
        //  OleDbConnection conn = new OleDbConnection(con);
        OleDbCommand cmd1 = new OleDbCommand(qy, conn);

        conn.Open();
        cmd1.ExecuteNonQuery();
        conn.Close();
        Response.Redirect(String.Format("~/bill.aspx?cartid=" + c));
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        OleDbConnection conn = new OleDbConnection(con);
        Button btn = sender as Button;
        string q1 = "select quantity from product where p_id=" + btn.CommandArgument.ToString() + " ";

        string q2 = "select cart_quantity from cart where p_id=" + btn.CommandArgument.ToString() + " ";
        conn.Open();
        OleDbCommand cmd = new OleDbCommand(q1, conn);
        OleDbCommand cmd1 = new OleDbCommand(q2, conn);


        cmd.ExecuteNonQuery();
        cmd1.ExecuteNonQuery();

        int Tquant = (int)cmd.ExecuteScalar();
        int Pquant = (int)cmd1.ExecuteScalar();
        //    Control div = e.Item.FindControl("cart_block") as Control;

        conn.Close();


         //   Response.Redirect("cart.aspx");
    
        if (Pquant>1)
        {
            
            
            string q3 = "update cart  set cart_quantity = cart_quantity-1 where p_id = " + btn.CommandArgument.ToString() + "";
            //   TextBox1.Text = q;
            conn.Open();
            cmd = new OleDbCommand(q3, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("cart.aspx");
        }
        else
        {
            int adelid2 = Convert.ToInt32(Request.QueryString["adelid1"]);
            string t2 = "delete * from cart where cart_id=" + adelid2 + "";
            cmd = new OleDbCommand(t2, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("cart.aspx");
            //Repeater1.DataBind();
            TextBox1.Text = "out of stock ";
        }


      
    }

    protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        OleDbConnection conn = new OleDbConnection(con);
        Control div = e.Item.FindControl("cart_block") as Control;
        Label lb = e.Item.FindControl("Label2") as Label;
        HiddenField h1 = e.Item.FindControl("HiddenField1") as HiddenField;

        
        if (h1.Value != "0")
        {
           
           
            div.Visible = false;
        }
        else
        {
            div.Visible = true;
        }
    }
    protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
}