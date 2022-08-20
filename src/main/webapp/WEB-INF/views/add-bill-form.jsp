<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Billing</title>
<style type="text/css">
body {
	background-image:
		url("https://images.unsplash.com/photo-1593538312308-d4c29d8dc7f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}
h1 {
	color: #8B4513;
	text-align: center;
}
label {
	color: #8B4513;
	font-size: 1.3em;
	display: flex;
	margin: 5px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}
#cusName {
	width: 250px;
	height: 30px;
	border-radius: 3px;
	padding-left: 8px;
}
#cusPhoneno {
	width: 250px;
	height: 30px;
	border-radius: 3px;
	padding-left: 8px;
}
#billdate {
	width: 250px;
	height: 30px;
	border-radius: 3px;
	padding-left: 8px;
}
#col-sm-5 {
	width: 250px;
	height: 30px;
	border-radius: 3px;
	padding-left: 8px;
}
.box {
	width: 400px;
	height: 490px;
	overflow: hidden;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
	margin: auto;
	padding: 10px;
	text-align: center;
	background-color: #00000;
}
</style>
</head>
<body>
	<h1>Add Bill</h1>
	<div class="box">
		
		<div id="form">
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
				<div class="button">
				<form:button type="submit" class="btn btn-primary">Add Bill</form:button>
				</div>
			</form:form>
		</div>
	</div>
	</div>
</body>
</html>