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
body {
	background-image: linear-gradient(to right bottom, #b91eda, #a02ae0, #8234e5, #5d3be8,
		#1241eb);
	height: 100%;
	margin: auto;
	background-repeat: no-repeat;
	background-attachment: fixed;
}

.table {
	box-shadow: 0 6px 6px rgba(#000, 0.3);
	transition: 200ms;
	background: #fff;
	display: flex;
	align-items: center;
	padding: 30px 40px;
}
</style>
</head>
<body>
	<div id="table">
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
						<td><img
							src="file:///C:/Users/shei3123/eclipse-workspace/pharmacyshop/src/main/resources/static/productImages/${medicine.medicineimg}"
							width="100" height="100"></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>