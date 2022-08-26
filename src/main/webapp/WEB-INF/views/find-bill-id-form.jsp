<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Bill</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@includefile="/WEB-INF/css/list-bills.css"%>
</style>
</head>
<body>
	<h1>Bill Receipt</h1>
	<br>
	<button onclick="history.back()">Go Back</button>
	<button onclick="document.location='/user/index'" style="float: right;">Home</button>
	<div class="box">
		<div id="root">
			<div id="form">
				<table id="alter">
					<caption></caption>
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
						<c:forEach var="billdetail" items="${allbilldetails}">
							<tr>
								<td>${billdetail.billDetailId}</td>
								<td>${billdetail.billid}</td>
								<td>${billdetail.medicineid}</td>
								<td>${billdetail.quantity}</td>
								<td>${billdetail.price}</td>
								<td>${billdetail.amount}</td>
							</tr>
						</c:forEach>
				</table>
				<br> <br>
				<form:form action="" method="get" modelAttribute="findbillbyid">
					<table id="alter">
						<caption></caption>
						<thead>
							<tr>
								<th>Bill_Id</th>
								<th>Cus_Name</th>
								<th>Cus_PhoneNo</th>
								<th>Bill_Date</th>
								<th>Bill_Amount</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>${findbillbyid.billid}</td>
								<td>${findbillbyid.cusName}</td>
								<td>${findbillbyid.cusPhoneno}</td>
								<td>${findbillbyid.billdate}</td>
								<td>${findbillbyid.billamount}</td>
							</tr>
						</tbody>
					</table>
				</form:form>
			</div>
		</div>
	</div>
	<br>
	<br>
	<div id="button1">
<button onclick="window.print()">Print</button>
</div>
</body>
</html>