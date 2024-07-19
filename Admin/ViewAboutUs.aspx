<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewAboutUs.aspx.cs" Inherits="Admin_ViewAboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="show" >
    <h2 style="text-align:center;background-color:white; margin-top:10px; margin-bottom:10px">View | About Us</h2>
          <table border="1" width="100%" style="background-color: #FFFFFF; color: black;">

              <tr>

                  <td>S.no</td>
                  <td>Des</td>
                  <td>Delete</td>
                  <td>Update</td>
              </tr>

        <asp:Repeater ID="rep1" runat="server">
                <ItemTemplate>
              <tr>

                  <td><%#Eval("a_id") %></td>
                  <td><%#Eval("desc") %></td>
                  <td>
                  <a href='viewCategory.aspx?Delid1=<%#Eval("a_id") %>'>Delete</a>
                  </td>
                  <td>
                  <a href='AddAboutus.aspx?upid=<%#Eval("a_id") %>'> Update</a>
                 </td>
              </tr>
  
                </ItemTemplate>
        </asp:Repeater>
                        </table>
    </div>
</asp:Content>

