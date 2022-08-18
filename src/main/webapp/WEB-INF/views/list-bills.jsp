<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Bill List</title>
</head>
<body>
	<div id="table root">
		<table>
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