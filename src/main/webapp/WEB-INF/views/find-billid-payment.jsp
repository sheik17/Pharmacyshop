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
	<div id="errormessage">${message}</div>
	<div class="box">
		<div id="form">
			<form:form action="addpayment" method="post"
				modelAttribute="payments">
				<div>
					<label for="billid">Bill Id</label>
					<div>
						<form:input path="billid" readonly="true"/>
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
						<form:input path="paymentdate" type="date" title="Fill Date" pattern="^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$" onblur="billDate" required="true"/>
					</div>
				</div>
				<br>
				<br>
				<form:button id="button">Payment</form:button>
			</form:form>
		</div>
	</div>
	<script type="text/javascript">
	let billDate = function() {
		 let dateRg = /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;
		 if(!document.myForm.paymentdate.value.match(dateRg)){
				if(alert("Plz Select Bill Date")){
					 document.myForm.paymentdate.focus();
				}
				else
					document.activeElement.blur();
			}
	    else{
	    	return false;
	    }
	} 
	</script>
</body>
</html>