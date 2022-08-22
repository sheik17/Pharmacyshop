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
			<form:form action="adduser" method="post" modelAttribute="adduser" name="myForm">
				<div>
					<label for="userName">User Name</label>
					<div>
						<form:input path="userName" pattern="^[a-zA-Z\\s]{3,20}$" placeholder="Enter Name"  title="Name length should be 3 to 20" required="true" onblur="nameCheck();"/>
					</div>
					<form:errors path="userName" cssClass="text-danger" />
				</div>
				<div>
					<label for="userPassword">Password</label>
					<div>
						<form:input type="password" path="userPassword" placeholder="Enter Password" pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&-+=()])(?=\\S+$).{8,20}$" title="Enter Valid Password" onblur="passwordCheck();" required="true"/>
					</div>				
				<form:errors path="userPassword" cssClass="text-danger" />
				</div>
				<div>
					<label for="phoneNo">Phone No</label>
					<div>
						<form:input path="phoneNo" pattern="^\\d{10}$" placeholder="Enter Phone Number" title="Phone number should be in 10 digit" onblur="mobileNumberCheck();" required="true"/>
					</div>
					<form:errors path="phoneNo" cssClass="text-danger" />
				</div>
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" placeholder="Enter Email" title="Enter Valid Email" required="true" onblur="emailCheck();"/>
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
	<script type="text/javascript">
	let nameCheck = function() {
		 let nameRegex = /^[a-zA-Z]+$/;
		 if(!document.myForm.userName.value.match(nameRegex)){
				if(alert("Name must contain only alphabets")){ 
					 document.myForm.userName.focus();
			    }
				else
					document.activeElement.blur();
			}
	    else{
	        return false;
	    } 
	   
	}

	 let mobileNumberCheck = function() {
		 let phoneRg = /^[1-9]{1}[0-9]{9}/;
		 if(!document.myForm.phoneNo.value.match(phoneRg)){
				if(alert("Mobile Number is not valid and support only 10 numbers")){
					 document.myForm.phoneNo.focus();
				}
				else
					document.activeElement.blur();
			}
	    else{
	    	return false;
	    }
	} 
	 
	let emailCheck = function() {
		let rg = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$/;
		if(!document.myForm.email.value.match(rg)){
			if(alert("Email is not valid Ex:abc@gmail.com")){
				document.myForm.email.focus();
			}
			else
				document.activeElement.blur();
		}
	    else{
	    	return false;
	    }
	}
	let passwordCheck = function() {
			let rg = /^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$/;
			if(!document.form.userPassword.value.match(rg)){
				if(alert("password must begin with letter and contain atleast one number and one symbol must have atleast 8 characters Ex:abcde@12")){
					document.form.userPassword.focus();
				}
				else
					document.activeElement.blur();
			}
		    else{
		    	return false;
		    }
		}
	</script>
</body>
</html>