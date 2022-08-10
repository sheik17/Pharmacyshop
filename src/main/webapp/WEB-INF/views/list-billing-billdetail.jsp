<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Billing</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addbill" method="post" object="bill"
				enctype="multipart/form-data" modelAttribute="getbill">
				<div>
					<label for="billid">Bill_Id</label>
					<div>
						<form:input path="billid" />
					</div>
				</div>
				<div>
					<label for=userId>User_Id</label>
					<div>
						<form:input path="userId" />
					</div>
				</div>
				<div>
					<label for="billdate">Bill_Date</label>
					<div>
						<form:input path="billdate" type="date" />
					</div>
				</div>
				<div class="col-sm-5">
					<p>Prescription Image</p>
					<div class="custom-file">
						<input type="file" class="custom-file-input" name="productImage"
							accept="image/jpeg, image/png ,image/jpg" id="productImage" /> <label
							class="custom-file-label" for=productImage>Choosefile</label>
					</div>
					<div>
						<input type="hidden" name="imgName" value="bill.pescriptionimg">
					</div>
				</div>
				<div>
					<label for="billamount">Bill_Amount</label>
					<div>
						<form:input path="billamount" />
					</div>
				</div>
				<form:button type="submit" class="btn btn-primary">Add Medicines</form:button>
			</form:form>
		</div>
	</div>
	<br>
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
				<c:forEach var="billdetail" items="${billdetaillist}">
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