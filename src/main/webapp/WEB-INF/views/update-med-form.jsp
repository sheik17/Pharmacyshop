<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Medicine</title>
</head>
<body>
    <div id="root">
        <div id="form">
            <form:form action="updatemed" method="post" modelAttribute="updatemed">
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
						<form:input path="manufacture" />
					</div>
				</div>
				<div>
					<label for="expdate">Exp_Date</label>
					<div>
						<form:input path="expdate" />
					</div>
				</div>
				<div>
					<label for="pescription_req">Pescription_Req</label>
					<div>
						<form:input path="pescription_req" />
					</div>
				</div>
				<div>
					<label for="stocks">Stocks</label>
					<div>
						<form:input path="stocks" />
					</div>
				</div>
				<div>
					<label for='medicineimg'>Medicine_Img <input
						name='medicineimg' placeholder='file' type='file'
						accept='image/*'>
					</label>
				</div>
				<form:button>Update</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>