<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="viewCategory.aspx.cs" Inherits="Admin_viewCategory" EnableEventValidation="True" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div id="show">

            <h2 style="text-align:center;background-color:white; margin-top:10px; margin-bottom:10px">View | Category</h2>
          <table border="1" width="100%" style="background-color: #FFFFFF; color: black;">
              <tr>

                  <td>S.no</td>
                  <td>Category name</td>
                  <td>image<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                  <td>Delete</td>
                  <td>Update</td>
              </tr>
           <asp:Repeater ID="Repeater1" runat="server">
              
                  <ItemTemplate>
               <tr>

                  <td> <%#Eval("c_ID")%></td>
                  <td> <%#Eval("c_name")%></td>
                   <td><img src='../catimages/<%#Eval("image") %>' width="150" height="150" /></td>
                  <td>
                  <a href='viewCategory.aspx?Delid1=<%#Eval("c_ID") %>'> 
                    Delete
                  </a>
             
                                      
                  <td>
                  <a href='addCAT.aspx?upid=<%#Eval("c_ID") %>'> 
                    Update
                      </a>
                   </td>
              </tr>
                      </ItemTemplate>
              </asp:Repeater>
          </table>
    </div>
</asp:Content>

