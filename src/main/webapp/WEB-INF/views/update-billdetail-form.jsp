<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Billdetails</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/update-billdetail-form.css"%>
</style>
</head>
<body>
<h1>
Edit Bill Details
</h1>
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