<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="viewContact.aspx.cs" Inherits="Admin_contact" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div id="show" >
    <h2 style="text-align:center;background-color:white; margin-top:10px; margin-bottom:10px">View | About Us</h2>
          <table border="1" width="100%" style="background-color: #FFFFFF; color: black;">

              <tr>

                  <td>S.no</td>
                  <td>PHONE no.</td>
                  <td>Address</td>
                  <td>Email</td>                
                  <td>Delete</td>
                  <td>Update</td>
              </tr>

        <asp:Repeater ID="rep1" runat="server">
                <ItemTemplate>
              <tr>

                  <td><%#Eval("con_ID")%></td>
                  <td><%#Eval("phone_no") %></td>
                  <td><%#Eval("address") %></td>
                  <td><%#Eval("email") %></td>
                  <td>
                  <a href='viewContact.aspx?Delid1=<%#Eval("con_ID") %>'>Delete</a>
                  </td>
                  <td>
                  <a href='AddContact.aspx?upid=<%#Eval("con_ID") %>'> Update</a>
                 </td>
              </tr>
  
                </ItemTemplate>
        </asp:Repeater>
                        </table>
    </div>
</asp:Content>

