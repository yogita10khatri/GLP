<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddFAQ.aspx.cs" Inherits="Admin_AddFAQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div style="width:1024px; height:450px; margin:0px auto; margin-top:10px; padding:15px; background-color:#063539;">
            <h2 style ="text-align:center; background-color:white;  ">Add | FAQ</h2>
            <table border="1" width="100%" style="background-color: #FFFFFF; color: black;">

              <tr>

              
                  <td>Question</td>
                  <td>Answer</td>
                  
              </tr>
              <tr>

                 
                  <td><asp:TextBox ID="ques" runat="server"></asp:TextBox></td>
                  <td>
                      <asp:TextBox ID="ans" runat="server"></asp:TextBox></td>
                  
              </tr>
             </table> 

    
            <asp:Button ID="Button1" runat="server" Text="ADD" BackColor="black" 
                 BorderColor="White" ForeColor="white" Height="30px" Width="120px" 
                 onclick="Button1_Click" />

        <asp:Button ID="Button2" runat="server" Text="Update" BackColor="black" 
                 BorderColor="White" ForeColor="white" Height="30px" Width="120px" 
                 onclick="Button2_Click" />
     
   
</asp:Content>

