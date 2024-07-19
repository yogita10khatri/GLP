<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <script src="JScript.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div id = "name1">
    <div class ="head">
        <div class="img1"><img src="assets/download.png" style="width:100%;height : 100%;" /> </div>
        <div class ="d1">
             GOOD LIFE PHARMACY 
      </div>
        
      <div class ="login">
             <div> <h1 style="padding:10px">LOGIN</h1> </div>
              <div class="container">
                  <asp:Label ID="Label1" runat="server" Text="Username" CssClass="font1"></asp:Label> 
                  <asp:TextBox ID="TextBox1" runat="server"  placeholder="Enter Username" ></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
    
    <label for="psw"><b>Password</b></label>
              <asp:TextBox ID="TextBox2" placeholder="Enter Password"  runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        <br />
   
                  <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
  <%--  <label>
      <input type="checkbox" checked="checked" name="remember" align ="middle" > Remember me
    </label--%>
    <br>
    
                  <a href="signup.aspx">FORGET PASSWORD</a>
  </div>
  
     </div>
    </form>
</body>
</html>
