<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Medicine List</title>
<style type="text/css">
@charset "ISO-8859-1";

body {
	background-color: #ccffff;
}

h1, h2, h3 {
	text-align: center;
}

table {
	text-align: center;
	width: 90%;
}

#alter {
	margin-left: 90px;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 10px;
}

table#alter tr:nth-child(even) {
	background-color: #eee;
}

table#alter tr:nth-child(odd) {
	background-color: #fff;
}

table#alter th {
	color: white;
	background-color: gray;
}

table.center {
	margin-left: auto;
	margin-right: auto;
}
#myButton2 {
	background-color: #04AA6D;
	border: none;
	color: white;
	padding: 16px 32px;
	text-decoration: none;
	margin-left: auto;
	margin-right: auto;
	cursor: pointer;
}
#myButton3 {
	background-color: #04AA6D;
	border: none;
	color: white;
	padding: 16px 32px;
	text-decoration: none;
	margin-left: auto;
	margin-right: auto;
	cursor: pointer;
}
</style>
</head>
<body>
<h1>Medicine List
<br>
		<button onclick="document.location='/user/admin'"
			style="float: left;">Back</button>
		<button name="value"
			onclick="document.location='/medicine/getfilterexpdate'"
			style="float: center;">Filter ExpDate</button>
	</h1>
	<div id="table">
		<table id="alter">
			<thead>
				<tr>
					<th>Medicine_Id</th>
					<th>Medicine_Name</th>
					<th>Quantity</th>
					<th>Price</th>
					<th>Manufacture_Date</th>
					<th>Exp_Date</th>
					<th>Pescription_Req</th>
					<th>Stocks</th>
					<th>Medicine_Img</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="medicine" items="${allmeddetail}">
					<tr>
						<td>${medicine.medicineid}</td>
						<td>${medicine.medicinename}</td>
						<td>${medicine.quantity}</td>
						<td>${medicine.price}</td>
						<td>${medicine.manufacture}</td>
						<td>${medicine.expdate}</td>
						<td>${medicine.pescriptionreq}</td>
						<td>${medicine.stocks}</td>
						<td><img
							src="file:///C:/Users/shei3123/eclipse-workspace/pharmacyshop/src/main/resources/static/productImages/${medicine.medicineimg}"
							width="100" height="100"></td>
						<td><a
							href="updatemedform?id=${medicine.medicineid}"> <input
								onclick="change()" type="button" value="Update" id="myButton2"></input></a></td>
						<td><a
							href="deletemed?id=${medicine.medicineid}"><input
								onclick="change()" type="button" value="Delete" id="myButton3"></input></a></td>
						</tr>
				</c:forEach>
			</tbody>
		</table>
		<br> 
		<br>
	</div>
</body>
</html>