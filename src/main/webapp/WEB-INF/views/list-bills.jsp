<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Bill List</title>
<style type="text/css">
@charset "ISO-8859-1";
body
{
background-color: #ccffff;
}
h1, h2, h3 {
	text-align: center;
}
table {
	text-align: center;
	width: 90%;
	
}
#alter{
margin-left:80px;
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
</style>
</head>
<body>
<h1>Bill List
<br>
		<button onclick="document.location='/user/admin'"
			style="float: left;">Back</button>
		<button name="value"
			onclick="document.location='/billing/getfilterphoneno'"
			style="float: center;">Filter Phoneno</button>
	</h1>
	<div id="table root">
		<table id="alter">
			<thead>
				<tr>
					<th>Bill_Id</th>
					<th>Cus_Name</th>
					<th>Cus_PhoneNo</th>
					<th>Bill_Date</th>
					<th>Pescription_Img</th>
					<th>Bill_Amount</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="billing" items="${allbill}">
					<tr>
						<td>${billing.billid}</td>
						<td>${billing.cusName}</td>
						<td>${billing.cusPhoneno}</td>
						<td>${billing.billdate}</td>
						<td><img src="file:///C:/Users/shei3123/eclipse-workspace/pharmacyshop/src/main/resources/static/presImg/${billing.pescriptionimg}" width="100" height="100"></td>
						<td>${billing.billamount}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>