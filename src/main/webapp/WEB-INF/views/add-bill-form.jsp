<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Billing</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addbill" method="post" object="bill"
				enctype="multipart/form-data" modelAttribute="addbill">
				<div>
					<label for="billid">Bill_Id</label>
					<div>
						<form:input path="billid" />
					</div>
				</div>
				<div>
					<label for=userid>User_Id</label>
					<div>
						<form:input path="userid" />
					</div>
				</div>
				<div>
					<label for="billdate">Bill_Date</label>
					<div>
						<form:input path="billdate" />
					</div>
				</div>
				<div class="col-sm-5">
					<p>Prescription Image</p>
					<div class="custom-file">
						<input type="file" class="custom-file-input" name="productImage"
							accept="image/jpeg, image/png ,image/jpg" id="productImage" /> <label
							class="custom-file-label" for=productImage>Choosefile</label>
					</div>
					<div>
						<input type="hidden" name="imgName" value="bill.pescriptionimg">
					</div>
				</div>
				<div>
					<label for="billamount">Bill_Amount</label>
					<div>
						<form:input path="billamount" />
					</div>
				</div>
				<form:button type="submit" class="btn btn-primary">Update Medicines</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>