<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
var image1 = new Image()
image1.src = "bus1.png"
var image2 = new Image()
image2.src = "bus2.jpg"
var image3 = new Image()
image3.src = "bus3.jpg"
</script>
<script type="text/javascript">
function color()
{
 var hexchar = "0123456789ABCDEF";
 var n=0;
 var j=0;
 var k="";
 for(i=0;i<6;i++)
 {
  n = Math.round(Math.random() * 16777215); 
  j = n % 16;
  k = hexchar.charAt(j) + k;
  
 }
 k = "#" + k;
 display(k);
}
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--<img src="airline.gif" width="100%" height="300px" />
--%>
<div>

<img src="bus1.png" alt="" width="100%" height="350" name="slide"/>
<script type="text/javascript">
        var step=1;
        function slideit()
        {
            document.images.slide.src = eval("image"+step+".src");
            if(step<4)
                step++;
            else
                step=1;
            setTimeout("slideit()",1500);
        }
        slideit();
</script>
</div>	
<h3>Abstract-Online Bus Reservation System</h3>
<p align="justify" style="color:White;">
The aim of online booking reservation system is to serve the passengers to reserve the bus ticket in online itself. It helps to book the bus ticket and admin view the ticket reservation allocated details. If it is allocated means then automatically seat will be removed from the reservation. It reduces the time and saves money. The passengers can do the reservation process quick and efficient way. This project describes an interaction between the passengers and admin to manage the reservation of bus. The passengers has to register into the system to search the seat availability. The admin confirms the ticket booking through their passengers respective registered emails. It reduces the searching time and easily the passengers can see the available seats.
</p>
</asp:Content>

