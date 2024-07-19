<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddContact.aspx.cs" Inherits="Admin_AddContact" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="width:1024px; height:450px; margin:0px auto; margin-top:10px; padding:15px; background-color:#063539;">
            <h2 style ="text-align:center; background-color:white;  ">Add | Contact Us</h2>
            <table border="1" width="100%" style="background-color: #FFFFFF; color: black;">

              <tr>

              
                  <td>phone_number</td>
                  <td>address</td>
                  <td>email</td>
              </tr>
              <tr>

                 
                  <td><asp:TextBox ID="phn" runat="server"></asp:TextBox></td>
                  <td>
                      <asp:TextBox ID="address" runat="server"></asp:TextBox></td>
                  <td>
                      <asp:TextBox ID="email" runat="server"></asp:TextBox></td>
              </tr>
             </table> 

    
            <asp:Button ID="Button1" runat="server" Text="ADD" BackColor="black" 
                 BorderColor="White" ForeColor="white" Height="30px" Width="120px" 
                 onclick="Button1_Click" />

        <asp:Button ID="Button2" runat="server" Text="Update" BackColor="black" 
                 BorderColor="White" ForeColor="white" Height="30px" Width="120px" 
                 onclick="Button2_Click" />
     
         
   </div>
</asp:Content>

