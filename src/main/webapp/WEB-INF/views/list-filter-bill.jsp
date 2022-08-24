<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Filter PhoneNo</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/list-filter-bill.css"%>
</style>
</head>
<body>
<button onclick="document.location='/user/staffindex'" style="float: right;">Home</button>
		<button onclick="document.location='/billing/billallstafflist'"
			style="float: left;">Back</button>
	<h3>Filter</h3>
	<br>
	<div class="box">
	<form action="phoneno" method="get" style="margin: 0;">
		<label>Enter PhoneNo</label> <input type="number" placeholder="cusPhoneno"
			name="cusPhoneno">
			 <input type='submit' value="Get" name="submit">
	</form>
	</div>
</body>
</html>