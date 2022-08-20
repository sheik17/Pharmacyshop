<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="" method="post" object="bill"
				enctype="multipart/form-data" modelAttribute="getbill">
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
				<div id="table root">
				<table>
			<thead>
				<tr>
					<th>Bill_Id</th>
					<th>Payment_Id</th>					
					<th>ModeOfPayment</th>
					<th>Balance</th>
					<th>Payment_Date</th>
				</tr>
			</thead>
			<tbody>
					<tr>
						<td>${getpayment.billid}</td>
						<td>${getpayment.paymentid}</td>
						<td>${getpayment.modeofpayment}</td>
						<td>${getpayment.balance}</td>
						<td>${getpayment.paymentdate}</td>
					</tr>
			</tbody>
		</table>
		</div>
		</form:form>		
		</div>
	</div>
</body>
</html>