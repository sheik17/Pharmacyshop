<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/login-form.css"%>
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
<button onclick="document.location='/user/index'"
			style="float: left;">Back</button>
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
