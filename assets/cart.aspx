﻿
 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="JScript.js"></script>
    <link href="StyleSheet.css" rel="stylesheet" />
   </head>

<body>
    <form id="form2" runat="server">
      
        <div class ="cart-container" >
            <div class="Header1">
                     <h3 class="Heading1">Shopping Cart</h3>
                     <h5 class="Action1">Remove all</h5>
            </div>
   
   <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
       
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand" OnItemDataBound="Repeater1_ItemDataBound">
                <ItemTemplate>
                    <div id="cart_block" runat="server">
                    <div class="Cart-Items1">
                     
                     <div class="image-box1">
                             <img src='../productImage/<%#Eval("p_image")%>'  style="height:120px" /> 
                     </div>
                     <div class="about1">
                             <h1 class="title1"><%#Eval("p_name")%></h1>
                             <h3 class="subtitle1"> <%#Eval("comp_name")%></h3>
                           
                     </div>
                    
                    
                 <div class="counter">
                         
                         <div class ="btn">
                     <asp:Button ID="Button1" runat="server"  Text="+"  CssClass="btn1" BorderStyle="None" OnClick="Button1_Click" CommandArgument='<%#Eval("p_id")%>' />
                       </div>  
                             <div class="count">

                                 <asp:Label ID="Label2" runat="server" Text='<%#Eval("cart_quantity")%>'></asp:Label> 

                             </div>
                         <div class ="btn">
                             <asp:Button ID="Button2" runat="server" Text="-"  CssClass="btn1" 
                                 BorderStyle="None" CommandArgument ='<%#Eval("p_id")%>' 
                                 onclick="Button2_Click" />
                        </div>
                     
                 <div class="prices">
                     <div class="amount">₹<%#Eval("t_price")%></div>
                    
                     <div class="remove"><u>Remove</u></div>
                </div>
            </div>
                        </div>
                 </div>
                </ItemTemplate>
            </asp:Repeater>
            <hr> 
                   <div class="checkout">
                          <div class="total">
                              
                                <div>
                                    <div class="Subtotal">Sub-Total</div>
                                    <div class="items"><asp:Label ID="Label1" runat="server"></asp:Label></div>
                                 </div>
                             <div class="total-amount">
                                 </div>
                          </div>
                         
                          <div class="ch1">
                             <asp:Button ID="Button3" runat="server" Text="Checkout"  BorderStyle="None" 
                                  onclick="Button3_Click"  />
                          </div>

                   </div>
                    </div>
    </form>
</body>
</html>
