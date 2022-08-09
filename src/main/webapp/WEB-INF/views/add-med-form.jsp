<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Medicine</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addmed" method="post" object="product" enctype="multipart/form-data" modelAttribute="addmed">
				<div>
					<label for="medicineid">Medicine Id</label>
					<div>
						<form:input path="medicineid" />
					</div>
				</div>
				<div>
					<label for="medicinename">Medicine Name</label>
					<div>
						<form:input path="medicinename" />
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
					<label for="manufacture">ManuFactureDate</label>
					<div>
						<form:input path="manufacture" type="date" />
					</div>
				</div>
				<div>
					<label for="expdate">Exp_Date</label>
					<div>
						<form:input path="expdate" type="date"/>
					</div>
				</div>
				<div>
					<label for="pescriptionreq">Pescription_Req</label>
					<div>
						<form:input path="pescriptionreq" />
					</div>
				</div>
				<div>
					<label for="stocks">Stocks</label>
					<div>
						<form:input path="stocks" />
					</div>
				</div>
				<div class="col-sm-5">
					<p>Product Image</p>
					<div class="custom-file">
						<input type="file" class="custom-file-input" name="productImage"
							accept="image/jpeg, image/png ,image/jpg" id="productImage" /> <label
							class="custom-file-label" for=productImage>Choosefile</label>
					</div>
				</div>
				<input type="hidden" name="imgName"
					value="product.medicineImg">
				<form:button type="submit" class="btn btn-primary">Add Medicines</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>