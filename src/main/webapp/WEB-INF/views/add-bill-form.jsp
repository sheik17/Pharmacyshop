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
				enctype="multipart/form-data" modelAttribute="addbill">
				<div>
					<label for="cusName">Cus_Name</label>
					<div>
						<form:input path="cusName" />
					</div>
				</div>
				<div>
					<label for="cusPhoneno">Cus_PhoneNO</label>
					<div>
						<form:input path="cusPhoneno" />
					</div>
				</div>
				<div>
					<label for="billdate">Bill_Date</label>
					<div>
						<form:input path="billdate" type="date" />
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
</body>
</html>