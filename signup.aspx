<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <script src="JScript.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
</head>
<body id ="body1">
    
    <div>
      <div class ="d1"> GOOD LIFE PHARMACY  </div>
       <div class="container2">
    <div class="title">Registration</div>
    <div class="content">
      <form id="Form2" action="#" runat ="server">
        <div class="user-details">
          
          <div class="input-box">
            <span class="details">Full Name</span>
              
              <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your name"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                  ErrorMessage="RequiredFieldValidator" 
                  ControlToValidate="Textbox1"></asp:RequiredFieldValidator>
          </div>
          
          <div class="input-box">
            <span class="details">Username</span>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                  ErrorMessage="RequiredFieldValidator" ControlToValidate="Textbox2"></asp:RequiredFieldValidator>
              <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Username"></asp:TextBox>
          </div>
          
          <div class="input-box">
            <span class="details">Email</span>
             <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Email"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                  ErrorMessage="RequiredFieldValidator" ControlToValidate="Textbox3"></asp:RequiredFieldValidator>            
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                  ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox3" 
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
          
          </div>
          
          <div class="input-box">
            <span class="details">Phone Number</span>
          <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Phone Number"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                  ErrorMessage="RequiredFieldValidator" ControlToValidate="Textbox4"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                  ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox4" 
                  ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>  
                       
           </div>
          
          <div class="input-box">
            <span class="details">Password</span>
            <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Password"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                  ErrorMessage="RequiredFieldValidator" ControlToValidate="Textbox5"></asp:RequiredFieldValidator>
         
          </div>
          
          <div class="input-box">
            <span class="details">Confirm Password</span>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                  ErrorMessage="RequiredFieldValidator" ControlToValidate="Textbox6"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox6" runat="server" placeholder="Confirm Password"></asp:TextBox>
              <asp:CompareValidator ID="CompareValidator1" runat="server" 
                  ErrorMessage="CompareValidator" ControlToCompare="TextBox5" 
                  ControlToValidate="TextBox6"></asp:CompareValidator>
          </div>
          
        </div>
      <%-- <div class="gender-details">
          <input type="radio" name="gender" id="dot-1">
          <input type="radio" name="gender" id="dot-2">
          <input type="radio" name="gender" id="dot-3">
          <span class="gender-title">Gender</span>
          <div class="category">
            <label for="dot-1">
            <span class="dot one"></span>
            <span class="gender">Male</span>
          </label>
          <label for="dot-2">
            <span class="dot two"></span>
            <span class="gender">Female</span>
          </label>
          <label for="dot-3">
            <span class="dot three"></span>
            <span class="gender">Prefer not to say</span>
            </label>
          </div>
        </div>--%>
        <div class="button1">
          
      
            <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
        </div>
      </form>
    </div>
    </div>
   </div>
</body>
</html>
