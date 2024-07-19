<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="addCAT.aspx.cs" Inherits="Admin_addCAT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="addC">
             <h2 style ="text-align:center; background-color:white;  ">Add | Category </h2>
            
            <asp:Label ID="Label1" runat="server" Text="ENTER CATEGORY NAME" CssClass="c1"></asp:Label>
               <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
    
             <asp:FileUpload ID="FileUpload1" runat="server" />



            <asp:Button ID="Button1" runat="server" Text="ADD" BackColor="black" 
                 BorderColor="White" ForeColor="white" Height="30px" Width="120px" 
                 onclick="Button1_Click" />

        <asp:Button ID="Button2" runat="server" Text="Update" BackColor="black" 
                 BorderColor="White" ForeColor="white" Height="30px" Width="120px" 
                 onclick="Button2_Click" />
     
    </div>

</asp:Content>

