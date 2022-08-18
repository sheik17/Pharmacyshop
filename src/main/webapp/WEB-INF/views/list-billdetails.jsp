<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>BillDetailsList</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
				 	<th>Bill_Detail_Id</th>
					<th>Bill_Id</th>
					<th>Medicine_Id</th>
					<th>Quantity</th>
					<th>Price</th>
					<th>Amount</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="billdetail" items="${allbilldetail}">
					<tr>
						<td>${billdetail.billDetailId}
						<td>${billdetail.billid}</td>
						<td>${billdetail.medicineid}</td>
						<td>${billdetail.quantity}</td>
						<td>${billdetail.price}</td>
						<td>${billdetail.amount}</td>
						<td><a href="/billdetail/billDetailsAdd?id=${billdetail.billid}&billid=${billid}"><button>Add bill</button></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div><a href="/billing/addbill?id=${billid}"><button>Bill</button></a></div>
	<div id="table root">
		<table border='2' width=1000' cellpadding='2'>
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
				<c:forEach var="billing" items="${allbilldetails}">
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