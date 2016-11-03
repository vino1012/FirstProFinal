<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shipping Address</title>
<!-- Bootstrap -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    
</head>
<body>
	<%@include file="header.jsp"%>
	<br>
	
	<div class="container padding-top-10">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h4>
					<strong>Billing Address Details</strong>
				</h4>
			</div>
			<div class="panel-body">
				<br>

				
					<div class="container">
						<form:form commandName="billingaddress">
						 <div class="form-horizontal">
						
							<div class="form-group">
								<label class="control-label col-sm-2" for="doornumber">Door Number</label>
								<div class="col-sm-5">
								<form:input type="text" path="doornumber"  class="form-control" id="doornumber" />
								</div>
							</div>
								<br>
							<div class="form-group">
								<label class="control-label col-sm-2" for="streetname">Street Name</label>
								<div class="col-sm-5">
									<form:input type="text" path="streetname" class="form-control" name="streetname" id="streetname" />
								</div>
							</div>
							<br>
							<div class="form-group">
								<label class="control-label col-sm-2" for="city">City</label>
								<div class="col-sm-5">
									<form:input type="text" path="city" class="form-control" name="city" id="city" />
								</div>
							</div>
							<br>
							<div class="form-group">
								<label class="control-label col-sm-2" for="state">State</label>
								<div class="col-sm-5">
									<form:input type="text" path="state" class="form-control" name="state" id="state" />
								</div>
							</div>
							<br>
							<div class="form-group">
								<label class="control-label col-sm-2" for="zipcode">Zipcode</label>
								<div class="col-sm-5">
									<form:input type="text" path="zipcode" class="form-control" name="zipcode" id="zipcode" />
								</div>
							</div>
							<br>
							<div class="form-group">
								<label class="control-label col-sm-2" for="contactnumber">Contact Number</label>
								<div class="col-sm-5">
									<form:input type="text" path="contactnumber" class="form-control" name="contactnumber" id="contactnumber" />
								</div>
							</div>
							<br>
				<div class="form-group">
					<label class="control-label col-sm-2" for="payment">Payment Option</label>
						<div class="col-sm-5">
						<form:select name="payment" path="payment"  class="form-control" id="payment">
         
         	    			<option value="credit">Credit Card</option>
            				<option value="debit">Debit Card</option>
              				<option value="cash">Cash On Delivery</option>  
						</form:select>
						</div>
					</div>
				<br>
							
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-default" name="_eventId_backToShippingInfo">Back</button>
									<button type="submit" class="btn btn-default" name="_eventId_billingDetailCollected">Next</button>
									
								</div>
								
							</div></div>
						</form:form>
					</div>
					<br>
					<br>
				
			</div>
		</div>
	</div>
	<br>
	

	<br><br><br><br><br><br>	
	<%@include file="footer.jsp"%>
	





</body>
</html>