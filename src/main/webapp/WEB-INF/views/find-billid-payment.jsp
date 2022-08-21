<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/find-billid-payment.css"%>
</style>
</head>
<body>
	<h1>Payment</h1>
	<div class="box">
		<div id="form">
			<form:form action="addpayment" method="post"
				modelAttribute="payments">
				<div>
					<label for="billid">Bill Id</label>
					<div>
						<form:input path="billid" />
					</div>
				</div>
				<div>
					<label for="modeofpayment">ModeOfPayment</label>
					<div>
						<form:select path="modeofpayment">
							<form:errors path="modeofpayment" />
							<form:option value="Card">Card</form:option>
							<form:option value="Upi">Upi</form:option>
							<form:option value="Cash">Cash</form:option>
						</form:select>
					</div>
				</div>
				<div>
					<label for="balance">Total Amount</label>
					<div>
						<form:input path="balance" />
					</div>
				</div>

				<div>
					<label for="paymentdate">Payment Date</label>
					<div>
						<form:input path="paymentdate" type="date" />
					</div>
				</div>
				<br>
				<br>
				<form:button id="button">Payment</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>