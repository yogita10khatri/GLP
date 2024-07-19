<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Viewproduct.aspx.cs" Inherits="Admin_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="show">

            <h2 style="text-align:center;background-color:white; margin-top:10px; margin-bottom:10px">View | Category</h2>
          <table border="1" width="100%" style="background-color: #FFFFFF; color: black;">
              <tr>

                  <td>ID</td>
                  <td>Product name</td>
                  <td>desc</td>
                  <td>image</td>
                  <td>category</td>
                   <td>category_id </td>
                  <td>Quantity</td>
                  <td>Company_name</td>
                  <td>Company_id</td>
                  <td>Price</td>
                  <td>Delete</td>
                  <td>Update</td>
              </tr>
           <asp:Repeater ID="Repeater1" runat="server">
              
                  <ItemTemplate>
               <tr>

                  <td> <%#Eval("p_ID")%></td>
                  <td> <%#Eval("p_name")%></td>
                  <td> <%#Eval("desc")%></td>
                  <td><img src='../productImage/<%#Eval("p_image") %>' width="150" height="150" /></td>
                  <td> <%#Eval("category")%></td>
                   <td> <%#Eval("c_id")%></td>
                  <td> <%#Eval("quantity")%></td>
                  <td> <%#Eval("comp_name")%></td>
                  <td> <%#Eval("comp_id")%></td>
                    <td> <%#Eval("price")%></td>
                  <td>
                  <a href='viewproduct.aspx?Delid1=<%#Eval("p_ID") %>'> 
                    Delete
                  </a>
             
                                      
                  <td>
                  <a href='AddProduct.aspx?upid=<%#Eval("p_ID") %>'> 
                    Update
                      </a>
                   </td>
              </tr>
                      </ItemTemplate>
              </asp:Repeater>
          </table>
    </div>
</asp:Content>

