<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Payment List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Payment_Id</th>
					<th>User_Id</th>
					<th>ModeOfPayment</th>
					<th>Balance</th>
					<th>Bill_Id</th>
					<th>Payment_Date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="payment" items="${allpayment}">
					<!--var represents variable items represents collection  -->
					<tr>
						<td>${payment.paymentid}</td>
						<td>${payment.userId}</td>
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