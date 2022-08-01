<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BillDetailsList</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Bill_Id</th>
					<th>Medicine_Id</th>
					<th>Quantity</th>
					<th>Price</th>
					<th>Amount</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="billdetail" items="${allbilldetail}">
					<!--var represents variable items represents collection  -->
					<tr>
						<td>${billdetail.billid}</td>
						<td>${billdetail.medicineid}</td>
						<td>${billdetail.quantity}</td>
						<td>${billdetail.price}</td>
						<td>${billdetail.amount}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>