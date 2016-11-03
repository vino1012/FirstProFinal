<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<%@include file="header.jsp"%>
	<br><br><br>
	<div class="container padding-top-10">
		<div class="col-lg-10 col-md-11 col-sm-2 col-xs-12"><div class="panel panel-primary">
			<div class="panel-heading">
				<h4>
					<strong>Login to Continue:</strong>
				</h4>
			</div>
			<div class="panel-body">
				<br>

				<form:form name="submitForm"  method="POST">
					<div class="container">

						<form class="form-horizontal">
							<div class="form-group">
								<label class="control-label col-sm-2" for="username">Email Address:</label>
								<div class="col-sm-3">
									<input type="text" class="form-control" name="username" id="username"
										placeholder="Enter your email id" />
								</div>
							</div>
							<br>
							<br>
							<div class="form-group">
								<label class="control-label col-sm-2" for="pwd">Password:</label>
								<div class="col-sm-3">
									<input type="password" class="form-control" name="password" id="pwd"
										placeholder="Enter your password" />
								</div>
							</div>
							<br>
							<br>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-success">Submit</button>

								</div>
							</div>
						</form>
					</div>
					<br>
					<br>
				</form:form>
			</div></div>
		</div>
	</div>
	<br><br><br><br>
	<%@include file="footer.jsp"%>

</body>
</html>


