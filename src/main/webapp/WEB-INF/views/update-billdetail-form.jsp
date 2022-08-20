<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Billdetails</title>
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
#billDetailId {
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
#medicineid {
	width: 250px;
	height: 30px;
	border-radius: 3px;
	padding-left: 8px;
}
#quantity {
	width: 250px;
	height: 30px;
	border-radius: 3px;
	padding-left: 8px;
}
#price {
	width: 250px;
	height: 30px;
	border-radius: 3px;
	padding-left: 8px;
}
#amount {
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
    <div class="box">
        <div id="form">
            <form:form action="updatebilldetail" method="post" modelAttribute="updatebilldetail">
               <div>
					<label for="billDetailId">Bill_Detail_Id</label>
					<div>
						<form:input path="billDetailId" readonly="true"/>
					</div>
				</div>
               <div>
					<label for="billid">Bill_Id</label>
					<div>
						<form:input path="billid" readonly="true"/>
					</div>
				</div>
				<div>
					<label for=medicineid>Medicine_id</label>
					<div>
						<form:input path="medicineid" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="quantity">Quantity</label>
					<div>
						<form:input path="quantity" onchange="amountCalculate()"/>
					</div>
				</div>
				<div>
					<label for="price">Price</label>
					<div>
						<form:input path="price" onchange="amountCalculate()" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="amount">Amount</label>
					<div>
						<form:input path="amount" onchange="amountCalculate(this.form)" />
					</div>
				</div>
				<br>
				<form:button id="button">Update</form:button>
			</form:form>
		</div>
	</div>
<script type="text/javascript">
    function amountCalculate() {
        var quantity = document.getElementById("quantity").value;
        var price = document.getElementById("price").value;
        var amount = parseInt(quantity) * parseInt(price);

        document.getElementById("amount").value = amount;
        return amount;
    }
</script>
</body>
</html>