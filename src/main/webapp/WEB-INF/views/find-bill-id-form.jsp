<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Bill</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/find-bill-id-form.css"%>
</style>
</head>
<body>
<div class="box">
    <div id="root">
        <div id="form">
            <form:form action="" method="post" modelAttribute="findbillbyid">
           <div>
					<label for="cusName">Cus_Name</label>
					<div>
						<form:input path="cusName" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="cusPhoneno">Cus_PhoneNO</label>
					<div>
						<form:input path="cusPhoneno" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="billdate">Bill_Date</label>
					<div>
						<form:input path="billdate" type="date" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="pescriptionimg">Pescription_Img</label>
					<div>
						<form:input path="pescriptionimg" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="billamount">Bill_Amount</label>
					<div>
						<form:input path="billamount" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
	</div>
</body>
</html>