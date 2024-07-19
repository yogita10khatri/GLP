using System;
using System.Collections;

using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data;
using System.Configuration;
using System.Data.OleDb;

public partial class ontiment : System.Web.UI.Page
{
    string con = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

    OleDbCommand cmd;
    OleDbDataAdapter sda;
    
    DataTable dt1 = new DataTable();
    DataTable dt2 = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            int id = Convert.ToInt32(Request.QueryString["cid"]);
            int companyid = Convert.ToInt32(Request.QueryString["compid"]);
            sda = new OleDbDataAdapter("select * from category where c_id=" + id + " ", con);
            sda.Fill(dt2);
            Repeater2.DataSource = dt2;
            Repeater2.DataBind();

            //            sda = new OleDbDataAdapter("select product.p_id , product.p_name, product.comp_name, product.des , product.price ,cart.cart_id  FROM (cart INNER JOIN product ON cart.p_id = product.p_id) ", con);
            //sda = new OleDbDataAdapter("select * from product where c_id=" + id + " ", con);
            //sda.Fill(dt);
            //Repeater1.DataSource = dt;
            //Repeater1.DataBind();
            string s1 = "select * from product where c_id="+id+" or comp_id="+companyid+"";
            sda = new OleDbDataAdapter(s1, con);
            DataTable dt12 = new DataTable();
            sda.Fill(dt12);
            Repeater1.DataSource = dt12;
            Repeater1.DataBind();
           // TextBox2.Text = s1;
         
      
        int pid1 = Convert.ToInt32(Request.QueryString["pid"]);
        int pr1 = Convert.ToInt32(Request.QueryString["pr"]);

      
        //    sda = new OleDbDataAdapter("select * from cart" , con);
        //sda.Fill(dt);
        //Repeater1.DataSource = dt;
        //Repeater1.DataBind();
      

     
            
        Double t1;
       OleDbConnection conn = new OleDbConnection(con);
        string q = "Select cart_id , cart_quantity from cart where p_id= "+ pid1 +"";
        cmd = new OleDbCommand(q, conn);
       // TextBox1.Text = q;
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        sda = new OleDbDataAdapter(cmd);
        sda.Fill(dt1);
        if (dt1.Rows.Count>0)
        {
                //string p1 = "Select cart_quantity from cart where p_id= " + pid1 + "";
                //cmd = new OleDbCommand(p1, conn);

                //conn.Open();
                //cmd.ExecuteNonQuery();

                //u1 = (int)cmd.ExecuteScalar();
                ////u1 = Convert.ToInt32(p1);
                //conn.Close();
                string q1 = "select (cart_quantity*price) as t_price from cart where [p_id]="+pid1+"";
                cmd = new OleDbCommand(q1, conn);

                conn.Open();
                cmd.ExecuteNonQuery();
                t1 = (Double)cmd.ExecuteScalar();
              
                
                q = "update cart set [cart_quantity] = cart_quantity+1  where [p_id]=" + pid1 + " and cart_id=0 ";
           
           cmd = new OleDbCommand(q, conn);

  
           cmd.ExecuteNonQuery();
           conn.Close();
        
                   }
        else if(pid1>0)
            
        {

           //TextBox1.Text="BB";
           String q1 = "insert into [cart]([p_id],[p_name],[cart_quantity],[price]) values('" + pid1 + "' ,'" + Request.QueryString["nm"] + "','" + 1 + "','" + pr1 + "' )";

           cmd = new OleDbCommand(q1, conn);

           conn.Open();
           cmd.ExecuteNonQuery();
           conn.Close();
           string q12 = "select (cart_quantity*price) as t_price from cart where [p_id]=" + pid1 + "";
           cmd = new OleDbCommand(q12, conn);

           conn.Open();
           cmd.ExecuteNonQuery();
           Double t11= (Double)cmd.ExecuteScalar();
           conn.Close();

           //q = "update cart set [c_price]=" + t11 + " where [p_id]=" + pid1 + "";
           //cmd = new OleDbCommand(q, conn);

           //conn.Open();
           //cmd.ExecuteNonQuery();
           //conn.Close();
 
           
        }
      
        }
    }
}


   
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               