<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.button {
    background-color: #008CBA;
    border: none;
    color: white;
    padding: 9px 11px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 20px;
    margin: 4px 2px;
    cursor: pointer;
}
.button1 {border-radius: 12px;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/Images/css/screen.css" />" />
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
</head>
<body>
	<%@include file="header.jsp"%>
	<br>
	<br>
	<div class="container">
<a href="Product" class="btn btn-lg btn-primary pull-right">Add Products</a>
</div>
<br>
<div class="container padding-top-10">
		<div class="panel panel-default">
					<div class="panel-heading">
				<h4><strong>Product List: </strong></h4>
			</div>
			<div class="panel-body">
	<div ng-app="mainApp" ng-controller="productController">
		<div class="table-responsive">
			<table class="table table-hover table-striped ">
				<thead>
					<tr>
						<th>Product Id</th>
						<th>Product Name</th>
						<th>Category</th>
						<th>Description</th>
						<th>Price</th>
						<th>Remaining pieces</th>
						<th>Supplier</th>
						<th>Image</th>
						<th>Modify Products</th>
					</tr>
				</thead>
				<tbody>
					<tr ng-repeat="p in productlist">
						<td>{{p.productId}}</td>
						<td>{{p.productName}}</td>
						<td>{{p.category}}</td>
						<td>{{p.description}}</td>
						<td>{{p.price}}</td>
						<td>{{p.quantity}}</td>
						<td>{{p.supplier}}</td>
						<td>{{p.image}}</td>
	<td><a href="deleteprod?productid={{p.id}}" title="delete">
	<span class="glyphicon glyphicon-trash"></span></a> </td>		 
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div></div></div>
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




