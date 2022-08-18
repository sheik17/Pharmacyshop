<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Billdetails</title>
</head>
<body>
    <div id="root">
        <div id="form">
            <form:form action="updatebilldetail" method="post" modelAttribute="updatebilldetail">
               <div>
					<label for="billDetailId">Bill_Detail_Id</label>
					<div>
						<form:input path="billDetailId" />
					</div>
				</div>
               <div>
					<label for="billid">Bill_Id</label>
					<div>
						<form:input path="billid" />
					</div>
				</div>
				<div>
					<label for=medicineid>Medicine_id</label>
					<div>
						<form:input path="medicineid" />
					</div>
				</div>
				<div>
					<label for="quantity">Quantity</label>
					<div>
						<form:input path="quantity" />
					</div>
				</div>
				<div>
					<label for="price">Price</label>
					<div>
						<form:input path="price" />
					</div>
				</div>
				<div>
					<label for="amount">Amount</label>
					<div>
						<form:input path="amount" />
					</div>
				</div>
				<form:button>Update</form:button>
			</form:form>
		</div>
	</div>
 <script type="text/javascript">
	const formEl=document.querySelector("form");
	const tbodyEl=document.querySelector("tbody");
	function onAddWebsite(e)
	{
		e.prevenDefault();
		const billid=document.getElementById("billid").value;
		const medicineid=document.getElementById("medicineid").value;
		const quantity=document.getElementById("quantity").value;
		const price=document.getElementById("price").value;
		const amount=document.getElementById("amount").value;
		tbodyEl.innerHTML += `
		<tr>
			<td>${billid}</td>
			<td>${medicineid}</td>
			<td>${quantity}</td>
			<td>${price}</td>
			<td>${amount}</td>
			<td><button class="deleteBin">Delete</button></td>
			</tr>
		`;	
	}
	formEl.addEventListner("addrow",onAddWebsite)
		function multiply() {
			a = Number(document.getElementById('quantity').value);
			b = Number(document.getElementById('price').value);
			c = a * b;
			document.getElementById('amount').value = c;
		}
	</script>
</body>
</html>