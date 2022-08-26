<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/admin_index.css"%>
</style>
</head>
<body>
<header class="header">
 <div class="header">
  <a href="#default" class="logo">Medical Shop</a>
  <div class="header-right">
  	<a class="active" href="/user/admin">Home</a>
    <a href="/medicine/addmedform">Add Medicine</a>
    <a href="/medicine/adminmedlist">Medicines</a>
    <a href="/billing/billalllist">Bill List</a>
    <a href="/payment/paymentlist">Payment List</a>
    <a href="/user/userlist">Staff List</a>
    <a href="/user/adduserform">Add Staff</a>
    <a href="/user/index">LogOut</a>
  </div>
</div>
</header>
</body>
</html>