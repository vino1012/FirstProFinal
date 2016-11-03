<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<%@include file="header.jsp"%>
	<br>
	<br>

	<div class="container">

		<br>
		<br>

		<div class="container padding-top-10">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4>
						<strong>Add Product:</strong>
					</h4>
				</div>
				<div class="panel-body">
					<br>

					<form:form id="product" enctype="multipart/form-data" method="post"
						class="form-horizontal" action="productadd"
						commandName="productform">

						<div class="form-group">
							<label class="control-label col-sm-2" for="text">Product
								Id</label>
							<div class="col-sm-3">
								<form:input type="text" class="form-control" id="text"
									path="ProductId" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="text">Product
								Name</label>
							<div class="col-sm-3">
								<form:input type="text" class="form-control" id="text"
									path="ProductName" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="text">Category</label>
							<div class="col-sm-3">
								<form:select name="category" path="Category"
									class="form-control" id="text">
									<option value="Mountain Bike">Mountain Bike</option>
									<option value="Hybrid Bike">Hybrid Bike</option>
									<option value="Hybrid Bike">Half Bike</option>
									<option value="Road Bike">Road Bike</option>
								</form:select>
							</div>
						</div>
						
						<div class="form-group">
                    <label class="control-label col-sm-2" for="description">Description</label>
                    <div class="col-md-10">
                <form:textarea path="Description" id="description" class="form-Control"/>
                	</div></div>
                	
						<div class="form-group">
							<label class="control-label col-sm-2" for="text">Quantity:</label>
							<div class="col-sm-3">
								<form:input type="text" class="form-control" id="text"
									path="Quantity" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="text">Price</label>
							<div class="col-sm-3">
								<form:input type="text" class="form-control" id="text"
									path="Price" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="text">Supplier
								Name</label>
							<div class="col-sm-3">
								<form:input type="text" class="form-control" id="text"
									path="supplier" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="image">Upload
								Image</label>
							<div class="col-md-3">
								<form:input type="file" class="form-input-large" id="image"
									path="picture" />

							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">

								<button type="submit" class="btn btn-success">Add Item</button>

							</div>
						</div>
					</form:form>


					<c:if test="${successmg =='Product added Succesfully!'}">
						<h2>
							<c:out value="${successmg }"></c:out>
						</h2>
					</c:if>
				</div>
			</div>
		</div>
		<br> <br>

	</div>
			<%@include file="footer.jsp"%>
</body>
</html>




