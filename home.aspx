<%--  --%>
<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="slideshow-container">

  <!-- Full-width images with number and caption text -->
 <%-- 
  <div class="mySlides fade">
    <div class="numbertext">1 / 3</div>
   <img src="partner/Alkem.jpg" style="width:100%; height : 490px; />
    <div class="text">Caption Text</div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">2 / 3</div>
   
      <img src="partner/mankind_p.jpg" style="width:100%;height : 480px;" />
    <div class="text">Caption Two</div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">3 / 3</div>
      <img src="partner/sun_p_logo.png" style="width:100% ; height:490px;"/>
   <%-- <img src="2.png" style="width:100% ; height:490px;">--%>
  <%--  <div class="text">Caption Three</div>
  </div>--%>

  <!-- Next and previous buttons -->
 <%-- <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>
--%>
<!-- The dots/circles -->
<%--<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
</div>--%>

<div class="w3-section" >
  <img class="mySlides" src="assets/6.jpg"">
  <img class="mySlides"  src="assets/2.png"  >
  <img class="mySlides"  src="assets/5.jpg" >
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 6000); // Change image every 2 seconds
}
</script>
   <div id ="menu">
       <div>

                
            <div class="aaa">
                <div class="sec12">

                    <h2>About | GLP </h2>
                    <asp:Repeater ID="Rep1" runat="server">
                        <ItemTemplate>
                      <p>
                        <%#Eval("desc")%>
                    </p>    
                        </ItemTemplate>
                    </asp:Repeater>
                    
                     
                </div>
                <div class="sec12">

                    <h2>Why Us | GLP </h2>
                    <asp:Repeater ID="Rep2" runat="server">
                    <ItemTemplate>
                    <p>
                        <%#Eval("desc1") %>
                    </p>
                    </ItemTemplate>
                    </asp:Repeater>    
                </div>

            </div>
       </div>
       <!-- new arrivales-->
        <div>
                <h1 class="a">New Arrivals </h1>
          
          <%--  <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>--%>
             <div class = "section1">
               <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="productImage/Terbinaforce.jpg" PostBackUrl="~/ointment.aspx" style="height: 250px;
    width: 400px;"/>      
            </div>
         <%-- </ItemTemplate>
            </asp:Repeater>--%>
           <div class = "section1">
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="productImage/ly-sun-lycopene.jpg" PostBackUrl="~/ointment.aspx?" style="height: 250px;
    width: 400px;"/>   
              
            </div>
            <div class = "section1">
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="productImage/donep.jpg"  PostBackUrl="~/ointment.aspx" style="height: 250px;
    width: 400px;"/> 
            </div>
        
           </div>
            <div>
                <h1 class="a">IN ASSOCIATION WITH </h1>
              <div class = "section1">
                  <asp:ImageButton ID="ImageButton4" runat="server"  ImageUrl="partner/Alkem.jpg"  PostBackUrl="~/ointment.aspx?compid=6" style="height: 250px;
    width: 400px;"/>
            </div>
            <div class = "section1">
              <asp:ImageButton ID="ImageButton5" runat="server" PostBackUrl="~/ointment.aspx?compid=2" ImageUrl="partner/cipla.jpg"  style="height: 250px;
    width: 400px;"/>
            </div>
            <div class = "section1">
              <asp:ImageButton ID="ImageButton6" runat="server"  ImageUrl="partner/dr_reddy.jpg" PostBackUrl="~/ointment.aspx?compid=3" style="height: 250px;
    width: 400px;"/>
            </div>
            <div class = "section1">
               <asp:ImageButton ID="ImageButton7" runat="server"  ImageUrl="partner/mankind_p.jpg" PostBackUrl="~/ointment.aspx?compid=4" style="height: 250px;
    width: 400px;" />
            </div>
            <div class = "section1">
               <asp:ImageButton ID="ImageButton8" runat="server"  ImageUrl="partner/sun_p_logo.png" PostBackUrl="~/ointment.aspx?compid=1" style="height: 250px;
    width: 400px;"/>
            </div>
            <div class = "section1">
                <asp:ImageButton ID="ImageButton9" runat="server"  ImageUrl="partner/torrent_p.jpg" PostBackUrl="~/ointment.aspx?compid=5" style="height: 250px;
    width: 400px;"/>
            </div>
            </div>
            
            
      </div>
    </div>

</asp:Content>

