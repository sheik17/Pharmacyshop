<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Medicine List</title>
</head>
<body>
	<div id="table root">
		<table>
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
				</tr>
			</thead>
			<tbody>
				<c:forEach var="medicine" items="${allmed}">
					<!--var represents variable items represents collection  -->
					<tr>
						<td>${medicine.medicineid}</td>
						<td>${medicine.medicinename}</td>
						<td>${medicine.quantity}</td>
						<td>${medicine.price}</td>
						<td>${medicine.manufacture}</td>
						<td>${medicine.expdate}</td>
						<td>${medicine.pescriptionreq}</td>
						<td>${medicine.stocks}</td>
						<td>${medicine.medicineimg}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>