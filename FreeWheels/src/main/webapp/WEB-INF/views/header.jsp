<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.navbar {
    margin-bottom:0;
}

h2 {
	font-family: "verdana";
	text-indent: 50px;
}
</style>
</head>
<body>
<br>
	<h2 class="text-primary"><b>Free Wheels</b></h2>

<sec:authentication var="principal" property="principal" />
<c:if test="${principal=='anonymousUser'}">	
		<nav class="navbar navbar-light" style="border-radius:0px; background-color: #0f1418;">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar" style="background-color:white"></span> 
				<span class="icon-bar" style="background-color:white"></span> 
				<span class="icon-bar" style="background-color:white"></span>
			</button>
			<div class="collapse navbar-collapse" id="myNavbar"><ul class="nav navbar-nav">
				<li class="active"><a href="index">
					<span class="glyphicon glyphicon-home">Home</span></a></li>					
						<li><a href="login">
					<span class="glyphicon glyphicon-log-in">Login</span></a></li>					
					<li><a href="register">Sign-up</a></li>
					<li class="dropdown">
    <a class="dropdown-toggle" data-toggle="dropdown">Shop by Category
    <span class="caret"></span></a>
       <ul class="dropdown-menu">
      <li><a href="mountainbike">Mountain Bike</a></li>
      <li><a href="hybridbike">Hybrid Bike</a></li>
      <li><a href="halfbike">Half Bike</a></li>
    			</ul>
    			<c:if test="${empty cartObj }">
    			<li><a href="viewcart">
	<span class=" glyphicon glyphicon-shopping-cart">Cart(0)</span></a></li>
	</c:if>
	
	<c:if test="${not empty cartObj }">
	<li><a href="viewcart">
	<span class=" glyphicon glyphicon-shopping-cart">Cart(<c:out value="${cartObj.cartCount}"></c:out>)</span></a></li>
	</c:if>
				</ul></div>
				</nav>
	</c:if>
	
	
	<c:if test="${principal!='anonymousUser'}">
	
	<nav class="navbar navbar-light" style="border-radius:0px; background-color: #0f1418;">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar" style="background-color:white"></span> 
				<span class="icon-bar" style="background-color:white"></span> 
				<span class="icon-bar" style="background-color:white"></span>
			</button>
			<div class="collapse navbar-collapse" id="myNavbar"><ul class="nav navbar-nav">
				<li class="active"><a href="index">
					<span class="glyphicon glyphicon-home">Home</span></a></li>
					<li><a href="<c:url value="j_spring_security_logout"/>">
	<span class="glyphicon glyphicon-log-out">Logout</span></a></li>
						<li class="dropdown">
    <a class="dropdown-toggle" data-toggle="dropdown">Shop by Category
    <span class="caret"></span></a>
       <ul class="dropdown-menu">
      <li><a href="mountainbike">Mountain Bike</a></li>
      <li><a href="hybridbike">Hybrid Bike</a></li>
      <li><a href="halfbike">Half Bike</a></li>
    </ul>
    <li><a href="pdcontrol">Product List</a></li>
    <c:if test="${empty cartObj }">
    			<li><a href="viewcart">
	<span class=" glyphicon glyphicon-shopping-cart">Cart(0)</span></a></li>
	</c:if>
	
	<c:if test="${not empty cartObj }">
	<li><a href="viewcart">
	<span class=" glyphicon glyphicon-shopping-cart">Cart(<c:out value="${cartObj.cartCount}"></c:out>)</span></a></li>
	</c:if>
    		</ul>
				</div>
				</nav>
	</c:if>
		
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>
		
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="Image/image0.jpg">
			</div>
			
			<div class="item">
				<img src="Image/image003.jpg">
				 </div>
			
			<div class="item">
				<img src="Image/imagee2.jpg">
				</div>
			
				<div class="item">
				<img src="Image/imagee1.jpg">
				 </div>
		</div>

		<!-- Left and right controls -->
		 <a class="left carousel-control" href="#myCarousel" data-slide="prev">
	    <span class="glyphicon glyphicon-chevron-left"></span>
	  	</a>
	  <a class="right carousel-control" href="#myCarousel" data-slide="next">
	    <span class="glyphicon glyphicon-chevron-right"></span>
	  </a>
	  </div>
	

</body>
</html>

