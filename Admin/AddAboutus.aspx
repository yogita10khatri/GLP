<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddAboutus.aspx.cs" Inherits="Admin_AddAboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="width:1024px; height:450px; margin:0px auto; margin-top:10px; padding:15px; background-color:#063539;">
            <h2 style ="text-align:center; background-color:white;  ">Add | About Us</h2>
           <p>  
                <asp:TextBox ID="des" runat="server" CssClass="abc"  ></asp:TextBox>    
         
           </p>
        <p>
      
            <asp:Button ID="Button1" runat="server" Text="UPDATE" BackColor="#CCFFFF" 
                BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" 
                onclick="Button1_Click"  /> </p>
               
      
    </div>

    
</asp:Content>

