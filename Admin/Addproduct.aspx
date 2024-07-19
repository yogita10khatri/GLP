<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="Admin_AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div id="addC">
             <h2 style ="text-align:center; background-color:white;  ">Add | PRODUCT  </h2>
              <table width="100%" style=" color: black;">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="ENTER PRODUCT NAME" CssClass="c1"></asp:Label>
                    </td>
                    <td>
                         <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>    
                  <tr>
                      <td> <asp:Label ID="Label2" runat="server" Text="ENTER DESCRIPTION " CssClass="c1"></asp:Label></td>
                      <td> <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox></td>
                  </tr>
                  <tr>
                      <td><asp:Label ID="Label3" runat="server" Text="UPLOAD IMAGE" CssClass="c1"></asp:Label></td>
                      <td> <asp:FileUpload ID="FileUpload1" runat="server" Width="200px"/></td>
                  </tr>
                  <tr>
                      <td><asp:Label ID="Label4" runat="server" Text="SELECT CAATEGORY " CssClass="c1"></asp:Label></td>
                      <td><asp:DropDownList ID="DropDownList1" runat="server" Width="200px"></asp:DropDownList></td>
                  </tr>
                   <tr>
                      <td><asp:Label ID="Label9" runat="server" Text="ENTER CATEGORY ID " CssClass="c1"></asp:Label></td>
                      <td><asp:TextBox ID="TextBox7" runat="server" Width="200px"></asp:TextBox></td>
                  </tr>
                  <tr>
                      <td><asp:Label ID="Label5" runat="server" Text="ENTER QUANTITY " CssClass="c1"></asp:Label></td>
                      <td>   <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox></td>
                  </tr>
                  <tr>
                      <td> <asp:Label ID="Label6" runat="server" Text="ENTER COMPANY NAME " CssClass="c1"></asp:Label></td>
                      <td><asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox></td>
                  </tr>
                   <tr>
                      <td><asp:Label ID="Label7" runat="server" Text="ENTER COMPANY ID " CssClass="c1"></asp:Label></td>
                      <td><asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox></td>
                  </tr>
                   <tr>
                      <td><asp:Label ID="Label8" runat="server" Text="ENTER PRICE " CssClass="c1"></asp:Label></td>
                      <td><asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox></td>
                  </tr>
                  
              </table>
            

            <asp:Button ID="Button1" runat="server" Text="ADD" BackColor="black" 
                 BorderColor="White" ForeColor="white" Height="30px" Width="120px" OnClick="Button1_Click" 
                 />

        <asp:Button ID="Button2" runat="server" Text="Update" BackColor="black" 
                 BorderColor="White" ForeColor="white" Height="30px" Width="120px" 
                />
     
    </div>

</asp:Content>

