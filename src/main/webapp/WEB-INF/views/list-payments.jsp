<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Payment List</title>
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
<h1>Payment List</h1>
	<div id="table root">
		<table id="alter">
		<caption></caption>
			<thead>
				<tr>
					<th>Payment_Id</th>
					<th>ModeOfPayment</th>
					<th>Balance</th>
					<th>Bill_Id</th>
					<th>Payment_Date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="payment" items="${allpayment}">
					<tr>
						<td>${payment.paymentid}</td>
						<td>${payment.modeofpayment}</td>
						<td>${payment.balance}</td>
						<td>${payment.billid}</td>
						<td>${payment.paymentdate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>