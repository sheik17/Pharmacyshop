<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Medicine</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/add-med-form.css"%>
</style>
</head>
<body>
<h1>Update Medicine
<br>
<button onclick="document.location='/medicine/adminmedlist'"
			style="float: left;">Back</button>
</h1>
    <div class="box">
        <div id="form">
            <form:form action="updatemed" method="post" object="product" enctype="multipart/form-data" modelAttribute="updatemed">
				<div>
					<label for="medicineid"></label>
					<div>
						<form:input path="medicineid" type="hidden"/>
					</div>
				</div>
				<div>
					<label for="medicinename">Medicine Name</label>
					<div>
						<form:input path="medicinename" title="Enter valid medicine name" pattern="^[a-zA-Z\\s]{3,20}{  }$" required="true"/>
					</div>
				</div>
				<div>
					<label for="quantity">Quantity</label>
					<div>
						<form:input path="quantity" title="Enter Quantity" pattern="^{1,100}$" required="true"/>
					</div>
				</div>
				<div>
					<label for="price">Price</label>
					<div>
						<form:input path="price" title="Enter Price" pattern="^\d{0,8}(\.\d{1,4})?$" required="true"/>
					</div>
				</div>
				<div>
					<label for="manufacture">ManuFactureDate</label>
					<div>
						<form:input path="manufacture" type="date" title="Fill Date" pattern="^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$" required="true" />
					</div>
				</div>
				<div>
					<label for="expdate">Exp_Date</label>
					<div>
						<form:input path="expdate" type="date" title="Fill Date" pattern="^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$" required="true"/>
					</div>
				</div>
				<div>
					<label for="pescriptionreq">Pescription_Req</label>
					<div>
						<form:select path="pescriptionreq">
								<form:option value="Yes">Yes</form:option>
								<form:option value="No">No</form:option>
							</form:select>
					</div>
				</div>
				<div>
					<label for="stocks">Stocks</label>
					<div>
						<form:input path="stocks" pattern="^{1,100000}$" title="Enter Valid Stocks"/>
					</div>
				</div>
				<div class="col-sm-5">
				<label>Product Image</label>
					<div class="custom-file">
						<input type="file" class="custom-file-input" name="productImage"
							accept="image/jpeg, image/png ,image/jpg" id="productImage" /> <label
							class="custom-file-label" for=productImage>Choosefile</label>
					</div>
				</div>
				<input type="hidden" name="imgName"
					value="product.imageName">
					<div class="button">
				<form:button type="submit" id="button">Update Medicines</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>