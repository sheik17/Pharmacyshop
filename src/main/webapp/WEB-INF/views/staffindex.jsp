<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Medicine List</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/staffindex.css"%>
</style>
</head>
<body>
<header class="header">
 <div class="header">
  <a href="#default" class="logo">Medical Shop</a>
  <div class="header-right">
    <a class="active" href="/user/staffindex">Home</a>
    <a href="/medicine/medlist">Medicines</a>
    <a href="/billing/billallstafflist">Bill List</a>
    <a href="/user/index">Logout</a>
    
  </div>
</div>
</header>
</body>
</html>