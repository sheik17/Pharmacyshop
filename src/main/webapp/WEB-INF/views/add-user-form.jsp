<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Sign up</title>
<style type="text/css">
<
style type ="text /css ">.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}

body {
	background-image:
		url("https://st2.depositphotos.com/1003098/8200/i/950/depositphotos_82006754-stock-photo-medicines-arranged-at-pharmacy.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

h1 {
	color: #2F4F4F;
	 text-align: center;
}

label {
	color: #2F4F4F;
	font-size: 1.3em;
	display: flex;
	margin: 5px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}

#userName {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#userPassword {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#role {
	width: 260px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#phoneNo {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#email {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#userId {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#log {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 14px;
	padding-left: 10px;
	color: blue;
}

.box {
	width: 400px;
	height: 450px;
	overflow: hidden;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
	margin: auto;
	padding: 10px;
	text-align: center;
	background-color: #A9A9A9;
}
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