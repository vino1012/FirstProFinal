<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="<c:url value="/Images/css/screen.css" />" />
<script type="text/javascript" src="<c:url value="/resources/js/jquery-1.6.4.min.js" />"></script>
<style>
#jumbo {
  margin-bottom: auto;
}

</style>
</head>
<body>
<%@include file="header.jsp"%>
<br><br>

<h4 style="text-align:center; font-size:330%; color:blue; 
font-family:Chiller;"><strong>NEW ARRIVALS</strong></h4>

<div class="container">		
<div class="row" >
<div class="col-sm-6 col-md-4">

<center><img src="Image/imagee.jpg" class="img-thumbnail" width=70% alt="..."></center>
</div>		

<div class="col-sm-6 col-md-4">

<center><img src="Image/image4.jpg" class="img-thumbnail" width=70% alt="..."></center>
</div>

<div class="col-sm-6 col-md-4">

<center><img src="Image/image5.jpg" class="img-thumbnail" width=70% alt="..."></center>
</div>
</div>
</div>
<br><br>

<div class="container">

<div align=center><a href="dbproduct"  class="btn btn-success btn-lg" 
style="font-family:Forte; font-size:170%;">View Collection</a></div>
</div><br><br>

<div class="jumbotron jumbotron-fluid" style="background-color:#F0E68C; margin-bottom:-20px">

<h2 style="font-size:270%; font-family:Chiller;"><strong>ABOUT US</strong></h2>
<div class="container">

<p style="color:black; font-size:180%; font-family:Chiller;">At Free Wheels, our vivion is to be Earth's most customer 
centric company; to build a place where people come to 
find virtually anything they want to buy online.
    </p>
    <p style="color:black; font-size:180%; font-family:Chiller;">For 'Every Wish Fulfilled' to happen, we at FreeWheels.com understand that 
    prices can put you off. And that is why we have round-the-clock discounts and amazing prices for 
    you to enjoy. With options like Deals-of-the-Day, find your bicycles at unbelievably low prices.
    </p></div><br><br><br>
  </div>
  
  <div class="jumbotron jumbotron-fluid" style="background-color:#18170e; margin-bottom:-20px">
<h2 style="color:white; font-size:270%; font-family:Chiller;"><strong>CONTACT US</strong></h2>
<div class="container">
    <h3 style="color:white; font-size:250%; font-family:Chiller;"><strong>FREE WHEELS</strong></h3>
      <p style="color:white; font-family:Chiller;">24, Modern complex</p>
      <p style="color:white; font-family:Chiller;">1st Lane, Hitech City</p>
      <p style="color:white; font-family:Chiller;">Bengaluru - 554987</p><br>
      <p style="color:white; font-family:Chiller;">Mob :(+91) 89395-46618</p><br>
    <p style="color:white; font-family:Chiller;">E-mail : joshkumar607@gmail.com</p><br>
    <br>
  </div></div>
  
  <%@include file="footer.jsp"%>
</body>
</html>

