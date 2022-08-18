<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<style>
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


\]@media screen and (max-width: 500px) {
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
  	<a class="active" href="/user/admin">Home</a>
    <a href="/medicine/addmedform">Add Medicine</a>
    <a href="/medicine/medlist">Medicines</a>
    <a href="/billing/billlist">Bill List</a>
    <a href="/payment/paymentlist">Payment List</a>
    <a href="/user/index">LogOut</a>
  </div>
</div>
</header>
</body>
</html>