<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bill.aspx.cs" Inherits="bill" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />  <title>Untitled Page</title>
    <script src="JScript.js" type="text/javascript"></script>
</head>
<body>

    <form id="form3" runat="server">
  
     <div class ="head">
        <div class="img1"><img src="assets/download.png" style="width:100%;height : 100%;" /> </div>
        <div class ="d1">
             GOOD LIFE PHARMACY 
      </div>
      
     </div> 
      <div id ="bill">
    <div>
     <asp:Panel ID="pnl1" runat="server">  
    <div class="bill">
  <div class="brand">
    GOOD LIFE PHARMACY 
  </div>
  <div class="address">
   Pratap Nagar <br> Phone No- 0192083910
  </div>
  <div class="shop-details">
    PAN: AAKPS9298A TIN: 09820163701
  </div>
  
  <div>RETAIL INVOICE </div>
   
  <div class="bill-details">
     
    <div class="flex justify-between">
  <asp:Repeater ID="Repeater1" runat="server">
      <ItemTemplate>
                  <div>BILL NO: <%#Eval("bill_no")%></div>
                </div>
                 <div class="flex justify-between">
                  <div>BILL DATE: <%#Eval("bill_date")%>></div>
       </ItemTemplate>
      </asp:Repeater>
    </div>
    
  </div>
 
  
  <table class="table">
    <tr class="header">
    <th>
      Particulars
    </th> <th>
      Rate
    </th> <th>
      Qty
    </th>
       <th>
      Amount
    </th>
    </tr>
    
      <asp:Label ID="Label1" runat="server" ></asp:Label>
   
      <asp:Repeater ID="Repeater2" runat="server">
     <ItemTemplate> 
       <tr>
      <td><%#Eval("p_name")%></td>
      <td><%#Eval("price")%></td>
      <td><%#Eval("cart_quantity")%>></td>
      <td><%#Eval("t_price")%></td>
    </tr>
    </ItemTemplate>

     </asp:Repeater>
     
     
      <asp:Repeater ID="Repeater3" runat="server">
        <ItemTemplate>    
    <tr class="total">
      <td></td>
      <td>Total Items</td>
      
      <td><%#Eval("total_quantity")%></td>
   </tr>
   
    <tr class="net-amount">
      <td></td>
      <td>Net Amnt</td>
      <td></td>
      <td><%#Eval("amount")%></td>
    </tr>
  </table>
  Payment Method:<%#Eval("mode")%><br>
  <br> <%#Eval("customer_name")%>[customer] <br>
  </ItemTemplate>
      </asp:Repeater>    
  Thank You ! Please visit again
</div>
    
 </asp:Panel>
   <asp:Button ID="btnPrint" runat="server" Text="Print" OnClick="btnPrint_Click" />
     </div>
</div>
    </form>
</body>
</html>
