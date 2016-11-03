<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="<c:url value="/Images/css/screen.css" />" />
<script type="text/javascript" src="<c:url value="/resources/js/jquery-1.6.4.min.js" />"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
<style>
#jumbo {
  margin-bottom: auto;
}
</style>
	</head>
<body>
<%@include file="header.jsp"%>

<c:if test="${emptycart=='emptycart'}">
<br><br>
<br>
<div class="container">
<div class="alert alert-warning" role="alert">

<h3>Your Cart is empty </h3>
 		</div></div>
 		<br>
 		
    </c:if>
    
    <c:if test="${emptycart=='notempty'}">
    <br>
     <div class="container">
 		<br>
 		<h3>Your Cart:</h3>
 		</div>
 		<br>
 		
 	<div class="container">


<div ng-app ="mainApp" ng-controller="productController">
<div class="table-responsive">
<table class="table table-hover table-striped ">
    <thead>
      <tr>
<th>Product Name</th>
        <th>Category</th>
        <th>Unit Price</th>
        <th>Quantity</th>
        <th>Sub total</th>
      </tr>
    </thead>
<tbody>
   		
   			<tr ng-repeat="p in productlist">
   			
   			<td>{{p.product.productName}}</td>
   			<td>{{p.product.category}}</td>
   			<td>Rs. {{p.product.price}}</td>
   			<td>{{p.quantity}}</td>
   			<td>Rs. {{p.totalPrice}}</td>
   			
   			
      			</tr>
   			</tbody>
  </table>
	
</div>
<br>
	
	<h4>Grand total = Rs. <c:out value="${grandtotal }"></c:out></h4>
</div>
 </div>
 <br><br>
 <center> <a href="cart_checkout" class="btn btn-success btn-lg">
 <span class="glyphicon glyphicon-shopping-cart"></span> Check out</a></center> 
  
<script>
		var mainApp = angular.module("mainApp", []);
		mainApp.controller("productController", function($scope) {

			var json = '${cartitems}';
			var products = JSON.parse(json);
			$scope.productlist = products;

		});
	</script>
	
	</c:if>
    
    <br><br>
    <br><br>
  
  <%@include file="footer.jsp"%>
</body>
</html>



