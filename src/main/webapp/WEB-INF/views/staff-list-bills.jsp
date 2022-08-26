<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Bill List</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/staff-list-bills.css"%>
</style>
</head>
<body>
<h1>Bill List
<br>
		<button onclick="document.location='/user/staffindex'"
			style="float: left;">Back</button>
		<button name="value"
			onclick="document.location='/billing/getfilterphoneno'"
			style="float: center;">Filter Phoneno</button>
	</h1>
	<div id="table root">
		<table id="alter">
		<caption></caption>
			<thead>
				<tr>
					<th>Bill_Id</th>
					<th>Cus_Name</th>
					<th>Cus_PhoneNo</th>
					<th>Bill_Date</th>
					<th>Pescription_Img</th>
					<th>Bill_Amount</th>
					<th>Print</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="billing" items="${allbillstaff}">
					<tr>
						<td>${billing.billid}</td>
						<td>${billing.cusName}</td>
						<td>${billing.cusPhoneno}</td>
						<td>${billing.billdate}</td>
						<td><img src="file:///C:/Users/shei3123/eclipse-workspace/pharmacyshop/src/main/resources/static/presImg/${billing.pescriptionimg}" width="100" height="100" alt=""></td>
						<td>${billing.billamount}</td>
						<td><a
							href="findbillid?id=${billing.billid}"><input
								onclick="change()" type="button" value="Print" id="myButton3"></input></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>