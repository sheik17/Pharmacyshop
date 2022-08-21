<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Sign up</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/add-user-form.css"%>
</style>
</head>
<body>
	<h1>Sign Up</h1>
	<div id="root" class="box">
		<div id="form">
			<form:form action="adduser" method="post" modelAttribute="adduser">
				<div>
					<label for="userName">User Name</label>
					<div>
						<form:input path="userName" pattern="^[a-z A-Z]+$" placeholder="Enter Name"  title="Please Enter Charactor Only" required="true"/>
					</div>
					<form:errors path="userName" cssClass="text-danger" />
				</div>
				<div>
					<label for="userPassword">Password</label>
					<div>
						<form:input type="password" path="userPassword" placeholder="Enter Password" pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&-+=()])(?=\\S+$).{8,20}$" title="Enter Valid Password" required="true"/>
					</div>				
				<form:errors path="userPassword" cssClass="text-danger" />
				</div>
				<div>
					<label for="phoneNo">Phone No</label>
					<div>
						<form:input path="phoneNo" pattern="^\\d{10}$" placeholder="Enter Phone Number" title="Phone number should be in 10 digit" required="true"/>
					</div>
					<form:errors path="phoneNo" cssClass="text-danger" />
				</div>
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" placeholder="Enter Email" title="Enter Valid Email" required="true"/>
					</div>
					<form:errors path="email" cssClass="text-danger" />
				</div>

				<div>
					<label for="role">Role</label>
					<div>
						<form:select path="role">
								<form:option value="staff">Staff</form:option>
							</form:select>
					</div>
				</div>
				<br>
				<form:button id="log">Sign Up</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>