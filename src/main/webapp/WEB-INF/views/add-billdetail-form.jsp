<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add BillDetails</title>
<style>
table, tb {
	width: 50%;
	padding: 15px;
	text-align: left;
}

th, td {
	border: solid 1px #777;
	padding: 10px;
	border-color: #cc0033;
}

td {
	color: #000000
}

body {
	background-image:
		url('https://images.unsplash.com/photo-1628771065518-0d82f1938462?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bWVkaWNpbmV8ZW58MHx8MHx8&w=1000&q=80');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
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
					<th>Bill</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="medicine" items="${allmedicine}">
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
							href="/billdetail/billDetailsAdd?id=${medicine.medicineid}&billId=${billid}"
							class="button" type="button">Bill</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
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
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="billdetail" items="${allbilldetails}">
					<tr>
						<td>${billdetail.billDetailId}</td>
						<td>${billdetail.billid}</td>
						<td>${billdetail.medicineid}</td>
						<td>${billdetail.quantity}</td>
						<td>${billdetail.price}</td>
						<td>${billdetail.amount}</td>
						<td><a
							href="updatebilldetailform?id=${billdetail.billDetailId}"> <input
								onclick="change()" type="button" value="Update" id="myButton1"></input></a></td>
						<td><a href="deletebilldetails?id=${billdetail.billDetailId}&billId=${billdetail.billid}"><input
								onclick="change()" type="button" value="Delete" id="myButton2"></input></a></td>
								
					</tr>
				</c:forEach>
				
		</table>
		<a href="/payment/findbybillidpayment?Id=${billid}"><input
					onclick="change()" type="button" value="Payment" id="myButton2"></input></a>
	</div>
</body>
</html>