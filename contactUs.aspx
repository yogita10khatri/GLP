<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactUs.aspx.cs" Inherits="contactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div>    
       <div class="heading"> 
       <h2>This is Contact Us Page</h2>
      </div>
      <div class="Ques">
                <asp:Repeater ID="Rep1" runat="server">
                        <ItemTemplate>
                    <br />  <p>
                        <%#Eval("phone_no")%>
                    </p>    
                    <br />     
                    
                <p> <%#Eval("address")%></p>
                 <br />
                <p> <%#Eval("email")%></p>
                </ItemTemplate>
                    </asp:Repeater>
       </div>
       
      </div>

</asp:Content>

