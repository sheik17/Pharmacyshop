<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style>
<%@include file="/WEB-INF/css/list-users.css"%>
</style>
</head>
<body>
<h1>List of staffs</h1>
	<div id="table root">
		<table id="alter">
		<caption></caption>
			<thead>
				<tr>
					<th>Staff_Id</th>
					<th>User_Name</th>
					<th>Phone_No</th>
					<th>Email</th>
					<th>Role</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${alluser}">
					<tr>
						<td>${user.userId}</td>
						<td>${user.userName}</td>
						<td>${user.phoneNo}</td>
						<td>${user.email}</td>
						<td>${user.role}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>