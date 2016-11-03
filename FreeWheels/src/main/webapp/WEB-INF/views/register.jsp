<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%@include file="header.jsp"%>
<br><br>

<div class="container">
		<div class="panel panel-primary">
					<div class="panel-heading">
				<h4><strong>Register Here: </strong></h4>
			</div>
			<div class="panel-body">
  <br>
 
    <form:form id="register" method="post" class="form-horizontal"  action="registeruser" commandName="registerform" >
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">First Name:</label>
      <div class="col-sm-3">
        <form:input type="text" class="form-control" id="text" path="FirstName"/>
      </div>
    </div>    
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Last Name:</label>
      <div class="col-sm-3">
        <form:input type="text" class="form-control" id="text" path="LastName"/>
      </div>
    </div>    
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email id:</label>
      <div class="col-sm-3">
        <form:input type="text" class="form-control" id="text" path="Emailid"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Contact No:</label>
      <div class="col-sm-3">
        <form:input type="text" class="form-control" id="text" path="ContactNo"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">New Password:</label>
      <div class="col-sm-3">
        <form:input type="password" class="form-control" id="pwd" path="NewPassword"/>
      </div>
    </div> 
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Confirm Password:</label>
      <div class="col-sm-3">
        <form:input type="password" class="form-control" id="pwd" path="ConfirmPassword"/>
      </div>
    </div>   
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
      
        <button type="submit" class="btn btn-success">Submit</button>
      
      </div>
    </div>
</form:form>
</div>
</div>
  <c:if test="${successmg =='Registered Succesfully'}">
        	<h2><c:out value="${successmg }"></c:out></h2>
        </c:if>
        
</div>
<br>
<%@include file="footer.jsp"%>

</body>
</html>
