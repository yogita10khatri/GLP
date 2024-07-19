<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ointment.aspx.cs" Inherits="ontiment" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
   <div id ="content">
       <asp:Repeater ID="Repeater2" runat="server">
       <ItemTemplate>
                 <h1 style="padding:15px 0px;"><%#Eval("c_name")%></h1>
        
   </ItemTemplate>
       </asp:Repeater>
      
         <div style="clear:both;"> </div>
          <asp:Repeater ID="Repeater1" runat="server">
             <ItemTemplate>
     <div class="alfa">

                 <div class ="box1">
                            <img src='productImage/<%#Eval("p_image")%>' width="150" height="150" />
                     
                 </div>
                 <div class ="desc">
                    <p style="font-size:20px; text-align:center"><br />
                               <%#Eval("p_name") %><br />
                       
                               <%#Eval("comp_name") %><br />
                               <%#Eval("desc") %>
                     </p>
                 </div>

                 <div class ="cart">
                         <div class="amount">₹<%#Eval("price") %></div>
                      <%-- <%#Eval("price") %>--%>
                      <div class="btn1">
                         <%-- <asp:Button ID="Button1" runat="server" Text="Button" />  --%>
                             <a href='ointment.aspx?cid=<%#Eval("c_id")%>&pid=<%#Eval("p_id")%>&nm=<%#Eval("p_name")%>&pr=<%#Eval("price")%>'>ADD TO CART </a>
                  </div>   <%--<asp:Button ID="Button1" runat="server" Text="ADD TO CART" BackColor="#66CCFF" BorderColor="Black" Height="60px" OnClick="Button1_Click"    />--%>
                </div>
    
   </div>
        </ItemTemplate>
         </asp:Repeater>
    
   
    </div>
 
</asp:Content>


