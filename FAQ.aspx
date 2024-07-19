<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FAQ.aspx.cs" Inherits="FAQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="heading">
        <h2>FAQ</h2>
    </div>
     <asp:Repeater ID="Rep3" runat="server">
            <ItemTemplate>
              <div class ="Ques">
            
            <p><%#Eval("f_ID") %> . <%#Eval("ques") %></p><br /><br /><br /><br />
            <p>Ans. <%#Eval("ans") %></p>
            
       </div>
       </ItemTemplate>
       </asp:Repeater>
       
</asp:Content>

