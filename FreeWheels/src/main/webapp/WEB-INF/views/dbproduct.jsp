<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
</head>
<body>
	<%@include file="header.jsp"%>
	<br>
	<br>
	<div class="container" ng-app="mainApp"  ng-controller="productController">
	<div class="row" ng-repeat="p in productlist" >
		<div class="col-md-4" >
		<img src="<c:url value="/Image/Img/{{p.image}}"/>"
				class="img-thumbnail" alt="Cinque Terre" width="400px" height="240px"/>	
				</div>
			<div class="col-md-8">
				<h3><em>{{p.productName}}</em></h3>
				<p>{{p.description}}</p>
				<h4>Category: {{p.category}}</h4>
				<h4><em>Rs.{{p.price}}</em></h4>
	<a href="addtocart?productid={{p.id}}" class="btn btn-primary btn-lg">Add to Cart</a>
				
	
			</div>
			
		</div>
	</div><br><br>
	<script>
		var mainApp = angular.module("mainApp", []);
		mainApp.controller("productController", function($scope) {

			var json = '${products}';
			var products = JSON.parse(json);
			$scope.productlist = products;

		});
	</script>
	<br>
	<br>

	<%@include file="footer.jsp"%>


</body>
</html>




