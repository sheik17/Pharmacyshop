<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Billing</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/add-bill-form.css"%>
</style>
</head>
<body>
	<h1>Add Bill</h1>
	<div class="box">
		<div id="root">
			<form:form action="addbill" method="post" object="bill"
				enctype="multipart/form-data" modelAttribute="addbill" name="myForm">
				<div>
					<label for="cusName">Customer_Name</label>
					<div>
						<form:input path="cusName" pattern="^[a-zA-Z\\s]{3,20}$" placeholder="Enter Name"  title="Name length should be 3 to 20" required="true" onblur="nameCheck();"/>
					</div>
					<form:errors path="cusName" cssClass="text-danger" />
				</div>
				<div>
					<label for="cusPhoneno">Cus_PhoneNo</label>
					<div>
						<form:input path="cusPhoneno" pattern="^\\d{10}$" placeholder="Enter Phone Number" title="Phone number should be in 10 digit" onblur="mobileNumberCheck();" required="true"/>
					</div>
					<form:errors path="cusPhoneno" cssClass="text-danger" />
				</div>
				<div>
					<label for="billdate">Bill_Date</label>
					<div>
						<form:input path="billdate" type="date" onblur="billDate();" title="Fill Date" pattern="^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$" required="true" readonly="true"/>
					</div>
				</div>
				<div class="col-sm-5">
					<label>Prescription Image</label>
					<div class="custom-file">
						<input type="file" class="custom-file-input" name="productImage"
							accept="image/jpeg, image/png ,image/jpg" id="productImage" /> <label
							class="custom-file-label" for=productImage></label>
					</div>
					<div>
						<input type="hidden" name="imgName" value="bill.pescriptionimg">
					</div>
				</div>
				<br>
				<div>
				<form:button id="button">Add Bill</form:button>
				</div>
			</form:form>
		</div>
	</div>
	<script type="text/javascript">
	<script type="text/javascript">
	let nameCheck = function() {
		 let nameRegex = /^[a-zA-Z]+$/;
		 if(!document.myForm.cusName.value.match(nameRegex)){
				if(alert("Name must contain only alphabets")){ 
					 document.myForm.cusName.focus();
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
		 if(!document.myForm.cusPhoneno.value.match(phoneRg)){
				if(alert("Mobile Number is not valid and support only 10 numbers")){
					 document.myForm.cusPhoneno.focus();
				}
				else
					document.activeElement.blur();
			}
	    else{
	    	return false;
	    }
	} 
	 let billDate = function() {
		 let dateRg = /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;
		 if(!document.myForm.billdate.value.match(dateRg)){
				if(alert("Plz Select Bill Date")){
					 document.myForm.billdate.focus();
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