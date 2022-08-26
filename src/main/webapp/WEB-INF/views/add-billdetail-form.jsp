<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add BillDetails</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/add-billdetail-form.css"%>
</style>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js">
</script>
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
</head>
<body>
<h1>Bill Medicine</h1>
<br>
<button onclick="history.back()">Go Back</button>
<br>
<input id="myInput" type="text" placeholder="Search..">
<br>
<br>
	<div id="table">
		<table id="alter">
		<caption></caption>
			<thead>
				<tr>
					<th>Medicine_Id</th>
					<th>Medicine_Name</th>
					<th>Price</th>
					<th>Manufacture_Date</th>
					<th>Exp_Date</th>
					<th>Pescription_Req</th>
					<th>Stocks</th>
					<th>Medicine_Img</th>
					<th>Bill</th>
				</tr>
			</thead>
			<tbody id="myTable">
				<c:forEach var="medicine" items="${allmedicine}">
					<tr>
						<td>${medicine.medicineid}</td>
						<td>${medicine.medicinename}</td>
						<td>${medicine.price}</td>
						<td>${medicine.manufacture}</td>
						<td>${medicine.expdate}</td>
						<td>${medicine.pescriptionreq}</td>
						<td>${medicine.stocks}</td>
						<td><img
							src="file:///C:/Users/shei3123/eclipse-workspace/pharmacyshop/src/main/resources/static/productImages/${medicine.medicineimg}"
							width="100" height="100" alt=""></td>
						<td><a
							href="/billdetail/billDetailsAdd?id=${medicine.medicineid}&billId=${billid}"><input
								onclick="change()" type="button" value="Bill" id="myButton1"></input></a>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br> <br>
	</div>
	<div id="table root">
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
					<th>Edit</th>
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
								onclick="change()" type="button" value="Edit" id="myButton2"></input></a></td>
						<td><a
							href="deletebilldetails?id=${billdetail.billDetailId}&billId=${billdetail.billid}"><input
								onclick="change()" type="button" value="Delete" id="myButton3"></input></a></td>

					</tr>
				</c:forEach>
		</table>
	</div>
	<br>
	<a href="/payment/findbybillidpayment?Id=${billid}"><input
		onclick="change()" type="button" value="Payment" id="myButton4"></input></a>
</body>
</html>