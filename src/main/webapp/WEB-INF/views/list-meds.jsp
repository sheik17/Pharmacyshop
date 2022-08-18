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
body {
   background: #00b09b;
  background: -webkit-linear-gradient(to right, #00b09b, #96c93d);
  background: linear-gradient(to right, #00b09b, #96c93d);
}
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
.header {
  overflow: hidden;
  padding: 20px 10px;
  background-color: #ddd;
}
.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px;
  line-height: 25px;
  border-radius: 4px;
}

.header a.logo {
  font-size: 25px;
  font-weight: bold;
}

.header a:hover {
  background-color: #ddd;
  color: black;
}

.header a.active {
  background-color: dodgerblue;
  color: white;
}

.header-right {
  float: right;
}

@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  .header-right {
    float: none;
  }
}
</style>
</head>
<body>
<header class="header">
 <div class="header">
  <a href="#default" class="logo">Medical Shop</a>
  <div class="header-right">
    <a class="active" href="/user/index">Home</a>
    <a href="/user/index">Logout</a>
    <a href="/medicine/medlist">Medicines</a>
  </div>
</div>
</header>
	<c:forEach var="medicine" items="${allmed}">
	<h2 style="text-align: center">Product Card</h2>

	<div class="card">
		<img src="file:///C:/Users/shei3123/eclipse-workspace/pharmacyshop/src/main/resources/static/productImages/${medicine.medicineimg}" style="width: 100%">
		<h1>${medicine.medicinename}</h1>
		<p class="price">${medicine.price}</p>
			<div><a href="/billing/addbillform">Add to Cart</a></div>
	</div>
	</c:forEach>
</body>
</html>