<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Medicine</title>
<style type="text/css">
body {
	background-image:
		url("https://images.unsplash.com/photo-1601599561213-832382fd07ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

h1 {
	color: #a31aff;
	text-align: center;
}

label {
	color: #a31aff;
	font-size: 1.3em;
	display: flex;
	margin: 5px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}

#medicinename {
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

#manufacture {
	width: 250px;
	height: 30px;
	border-radius: 3px;
	padding-left: 8px;
}

#expdate {
	width: 250px;
	height: 30px;
	border-radius: 3px;
	padding-left: 8px;
}

#pescriptionreq {
	width: 250px;
	height: 30px;
	border-radius: 3px;
	padding-left: 8px;
}

#stocks {
	width: 250px;
	height: 30px;
	border-radius: 3px;
	padding-left: 8px;
}

#col-sm-5 {
	width: 250px;
	height: 30px;
	border-radius: 3px;
	padding-left: 8px;
}

.box {
	width: 400px;
	height: 680px;
	overflow: hidden;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
	margin: auto;
	padding: 10px;
	text-align: center;
	background-color: #00000;
}
#btn btn-primary{
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
</style>
</head>
<body>
    <div class="box">
        <div id="form">
            <form:form action="updatemed" method="post" object="product" enctype="multipart/form-data" modelAttribute="updatemed">
                <div>
					<label for="medicineid">Medicine Id</label>
					<div>
						<form:input path="medicineid" readonly="true"/>
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
						<form:input path="expdate" type="date" />
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
				<label>Product Image</label>
					<div class="custom-file">
						<input type="file" class="custom-file-input" name="productImage"
							accept="image/jpeg, image/png ,image/jpg" id="productImage" /> <label
							class="custom-file-label" for=productImage>Choosefile</label>
					</div>
				</div>
				<input type="hidden" name="imgName"
					value="product.imageName">
				<form:button type="submit" class="btn btn-primary">Update Medicines</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>