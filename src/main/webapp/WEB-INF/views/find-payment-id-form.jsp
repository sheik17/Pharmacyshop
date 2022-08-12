<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Payment</title>
</head>
<body>
    <div id="root">
        <div id="form">
            <form:form action="" method="post" modelAttribute="findpaymentbyid">
          <div>
					<label for="userId">UserId</label>
					<div>
						<form:input path="userId" />
					</div>
				</div>
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
					<label for="paymentid">PaymentId</label>
					<div>
						<form:input path="paymentid" />
					</div>
				</div>
				<div>
					<label for="paymentdate">PaymentDate</label>
					<div>
						<form:input path="paymentdate" type="date" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>