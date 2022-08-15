<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Medicine List</title>
<style>
.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	max-width: 300px;
	margin: auto;
	text-align: center;
	font-family: arial;
}

.price {
	color: grey;
	font-size: 22px;
}

.card button {
	border: none;
	outline: 0;
	padding: 12px;
	color: white;
	background-color: #000;
	text-align: center;
	cursor: pointer;
	width: 100%;
	font-size: 18px;
}

.card button:hover {
	opacity: 0.7;
}
</style>
</head>
<body>
	<c:forEach var="medicine" items="${allmed}">
	<h2 style="text-align: center">Product Card</h2>

	<div class="card">
		<img src="file:///C:/Users/shei3123/eclipse-workspace/pharmacyshop/src/main/resources/static/productImages/${medicine.medicineimg}" style="width: 100%">
		<h1>${medicine.medicinename}</h1>
		<p class="price">${medicine.price}</p>
			<button><a href="/billdetail/addbilldetail">Add to Cart</a></button>
		</p>
	</div>
	</c:forEach>
</body>
</html>