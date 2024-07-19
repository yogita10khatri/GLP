<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="viewFAQ.aspx.cs" Inherits="Admin_other" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         
     <div id="show" >
    <h2 style="text-align:center;background-color:white; margin-top:10px; margin-bottom:10px">View | About Us</h2>
          <table border="1" width="100%" style="background-color: #FFFFFF; color: black;">

              <tr>

                  <td>S.no</td>
                  <td>Question</td>
                  <td>Answer</td>                
                  <td>Delete</td>
                  <td>Update</td>
              </tr>

        <asp:Repeater ID="rep1" runat="server">
                <ItemTemplate>
              <tr>

                  <td><%#Eval("f_ID")%></td>
                  <td><%#Eval("ques") %></td>
                  <td><%#Eval("ans") %></td>
                  <td>
                  <a href='viewFAQ.aspx?Delid1=<%#Eval("f_id") %>'>Delete</a>
                  </td>
                  <td>
                  <a href='AddFAQ.aspx?upid=<%#Eval("f_ID") %>'> Update</a>
                 </td>
              </tr>
  
                </ItemTemplate>
        </asp:Repeater>
                        </table>
    </div>
</asp:Content>

