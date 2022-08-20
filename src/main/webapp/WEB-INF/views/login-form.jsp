<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style type="text/css">
style type ="text /css ">.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}

body {
	background-image:
		url("https://omsi.in/wp-content/uploads/2018/04/Online-Medical-store-Jehanabad.png");
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

#cap {
	width: 260px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#txtCompare {
	width: 255px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#txtCaptcha {
	width: 255px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#log {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
	color: blue;
}

.box {
	width: 400px;
	height: 420px;
	overflow: hidden;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
	margin: auto;
	padding: 10px;
	text-align: center;
	background-color: #A9A9A9;
}
</style>
<script type="text/javascript">
	function GenerateCaptcha() {
		var chr1 = Math.ceil(Math.random() * 10) + '';
		var chr2 = Math.ceil(Math.random() * 10) + '';
		var chr3 = Math.ceil(Math.random() * 10) + '';

		var str = new Array(4).join().replace(
				/(.|$)/g,
				function() {
					return ((Math.random() * 36) | 0).toString(36)[Math
							.random() < .5 ? "toString" : "toUpperCase"]();
				});
		var captchaCode = str + chr1 + ' ' + chr2 + ' ' + chr3;
		document.getElementById("txtCaptcha").value = captchaCode
	}
	function ValidCaptcha() {
		var str1 = removeSpaces(document.getElementById('txtCaptcha').value);
		var str2 = removeSpaces(document.getElementById('txtCompare').value);

		if (str1 == str2){
			return true;
		}else{
			alert("Please enter correct captcha");
		return false;
		}
	}
	function removeSpaces(string) {
		return string.split(' ').join('');
	}
</script>
</head>
<body onload="GenerateCaptcha()">
	<h1>Login</h1>
	<br>
	<div id="root" class="box">
		<div id="form">
			<form:form action="checkuserlogin" method="post" onsubmit="return ValidCaptcha()"
				modelAttribute="user">
				<div>
					<label for="userName">User Name</label>
					<form:input path="userName" pattern="^[a-z A-Z]+$"
						placeholder="Enter Name" title="Please Enter Charactor Only"
						required="true" />
					<div>
						<form:errors path="userName" cssClass="text-danger" />
					</div>
				</div>
				<div>
					<label for="userPassword">Password</label>
					<div>
						<form:input type="password" path="userPassword"
							placeholder="Enter Password"
							pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&-+=()])(?=\\S+$).{8,20}$"
							title="Enter Valid Password" required="true" />
					</div>
					<form:errors path="userPassword" cssClass="text-danger" />
				</div>
				<div>
					<label for="role">Role</label>
					<div>
						<form:select path="role">
							<form:errors path="role" />
							<form:option value="admin">Admin</form:option>
							<form:option value="staff">Staff</form:option>
						</form:select>
					</div>
				</div>
				<div>
					<label for="cap"> Enter Captcha</label>
					<div>
						<input type="text" id="txtCompare" /><br> <br>
						 <input
							 id="txtCaptcha" readonly="readonly"/> <br> <input type="button"
							id="btnrefresh" value="Refresh" onclick="GenerateCaptcha()"/>
					</div>
				</div>
				<br>
				<form:button id="log" onsubmit="ValidCaptcha()">Login</form:button>
			</form:form>
		</div>

	</div>

</body>
</html>
