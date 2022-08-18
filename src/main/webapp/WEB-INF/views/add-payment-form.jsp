<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Payment</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addpayment" method="post" modelAttribute="addpayment">
				<div>
					<label for="modeofpayment">ModeOfPayment</label>
					<div>
						<form:input path="modeofpayment" />
					</div>
				</div>
				<div>
					<label for="balance">Balance</label>
					<div>
						<form:input path="balance" />
					</div>
				</div>
				<div>
					<label for="billid">BillId</label>
					<div>
						<form:input path="billid" />
					</div>
				</div>
				<div>
					<label for="paymentdate">PaymentDate</label>
					<div>
						<form:input path="paymentdate" type="date" />
					</div>
				</div>
				<form:button>Add new</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>