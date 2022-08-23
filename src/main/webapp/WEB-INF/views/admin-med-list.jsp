<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Medicine List</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/admin-med-list.css"%>
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js">
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
	<h1>
		Medicine List <br>
		<button onclick="document.location='/user/admin'" style="float: left;">Back</button>
		<button class="value"
			onclick="document.location='/medicine/getfilterexpdate'"
			style="float: center;">Find ExpDate</button>
	</h1>
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
					<th>Quantity</th>
					<th>Price</th>
					<th>Manufacture_Date</th>
					<th>Exp_Date</th>
					<th>Pescription_Req</th>
					<th>Stocks</th>
					<th>Medicine_Img</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody id="myTable">
				<c:forEach var="medicine" items="${allmeddetail}">
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
							width="100" height="100" alt=""></td>
						<td><a href="updatemedform?id=${medicine.medicineid}"> <input
								onclick="change()" type="button" value="Update" id="myButton2"></input></a></td>
						<td><a href="deletemed?id=${medicine.medicineid}"><input
								onclick="change()" type="button" value="Delete" id="myButton3"></input></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br> <br>
	</div>
</body>
</html>