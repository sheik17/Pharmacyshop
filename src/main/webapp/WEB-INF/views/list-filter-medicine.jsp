<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Filter Price</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/list-filter-medicine.css"%>
</style>
</head>
<body>
<button onclick="document.location='/user/admin'" style="float: right;">Home</button>
		<button onclick="document.location='/medicine/adminmedlist'"
			style="float: left;">Back</button>
	<h3>Filter</h3>
	<br>
	<div class="box">
	<form action="expdate" method="get">
		<label>Enter CurrentDate</label> <input type="date" placeholder="expdate"
			name="expdate">
			 <input type='submit' value="Get" name="submit">
	</form>
	</div>
</body>
</html>