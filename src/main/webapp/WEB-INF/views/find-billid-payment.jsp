<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
<style type="text/css">
body {
	background-image:
		url("https://images.unsplash.com/photo-1593538312308-d4c29d8dc7f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}
h1 {
	color: #8B4513;
	text-align: center;
}
label {
	color: #8B4513;
	font-size: 1.3em;
	display: flex;
	margin: 5px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}
#modeofpayment {
	width: 250px;
	height: 30px;
	border-radius: 3px;
	padding-left: 8px;
}
#billid {
	width: 250px;
	height: 30px;
	border-radius: 3px;
	padding-left: 8px;
}
#paymentdate {
	width: 250px;
	height: 30px;
	border-radius: 3px;
	padding-left: 8px;
}

#balance {
	width: 250px;
	height: 30px;
	border-radius: 3px;
	padding-left: 8px;
}
#button
{
	background-color: #04AA6D;
	border: none;
	color: white;
	padding: 16px 32px;
	text-decoration: none;
	margin-left: auto;
	margin-right: auto;
	cursor: pointer;
	}
.box {
	width: 400px;
	height: 490px;
	overflow: hidden;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
	margin: auto;
	padding: 10px;
	text-align: center;
	background-color: #00000;
}
</style>
</head>
<body>
<h1>Payment</h1>
<div class="box">
		<div id="form">
			<form:form action="addpayment" method="post" modelAttribute="payments">
			<div>
					<label for="billid">Bill Id</label>
					<div>
						<form:input path="billid" />
					</div>
				</div>
				<div>
					<label for="modeofpayment">ModeOfPayment</label>
					<div>
						<form:input path="modeofpayment" />
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