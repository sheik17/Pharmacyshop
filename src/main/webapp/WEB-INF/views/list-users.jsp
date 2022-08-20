<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
<style type="text/css">
@charset "ISO-8859-1";
body
{
background-color: #ccffff;
}
h1, h2, h3 {
	text-align: center;
}
table {
	text-align: center;
	width: 90%;
	
}
#alter{
margin-left:80px;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 10px;
}

table#alter tr:nth-child(even) {
	background-color: #eee;
}

table#alter tr:nth-child(odd) {
	background-color: #fff;
}

table#alter th {
	color: white;
	background-color: gray;
}
table.center {
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
<h1>List of staffs</h1>
	<div id="table root">
		<table id="alter">
		<caption></caption>
			<thead>
				<tr>
					<th>User_Id</th>
					<th>User_Name</th>
					<th>User_Password</th>
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
						<td>${user.userPassword}</td>
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