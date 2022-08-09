<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign up</title>
<style type="text/css">
<style type="text/css">
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
body {
	background-image: url("https://st2.depositphotos.com/1003098/8200/i/950/depositphotos_82006754-stock-photo-medicines-arranged-at-pharmacy.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

h1 {
	color: #2F4F4F;
}

label {
	color: #2F4F4F;
	font-size: 1.3em;
	display: flex;
	margin: 5px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}

#userName {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#userPassword {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#role {
	width: 260px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}
#phoneNo {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}
#email {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}
#userId {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}
#log {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 14px;
	padding-left: 10px;
	color: blue;
}
.box {
	width: 400px;
	height: 490px;
	overflow: hidden;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
	margin: auto;
	padding: 10px;
	text-align: center;
	background-color: #A9A9A9;
}
</style>
</head>
<body>
<h1 align="center">Sign Up</h1>
    <div id="root" class="box">
        <div id="form">
            <form:form action="adduser" method="post" modelAttribute="getuser">
                <div>
                    <label for="userId">User Id</label>
                    <div>
                        <form:input path="userId" />
                    </div>
                </div>
                <div>
                    <label for="userName">User Name</label>
                    <div>
                        <form:input path="userName" />
                    </div>
                </div>
                <form:errors path="userName" cssClass="text-danger" />
                <div>
                    <label for="userPassword">Password</label>
                    <div>
                        <form:input type="password" path="userPassword" />
                    </div>
                </div>
                <form:errors path="userPassword" cssClass="text-danger" />
                <div>
                    <label for="phoneNo">Phone No</label>
                    <div>
                        <form:input path="phoneNo" />
                    </div>
                <form:errors path="phoneNo" cssClass="text-danger" />
                  </div>
                <div>
                    <label for="email">Email</label>
                    <div>
                        <form:input path="email" />
                    </div>
                    </div>
				<form:errors path="email" cssClass="text-danger" />
              
                <div>
                    <label for="role">Role</label>
                    <div>
						<td><form:select path="role">
								<form:option value="user">User</form:option>
							</form:select></td>
					</div>
                </div><br>
                <form:button id="log">Sign Up</form:button>
            </form:form>
        </div>
    </div>
    <br>
    <div id="table root">
		<table>
			<thead>
				<tr>
					<th>Bill_Id</th>
					<th>User_Id</th>
					<th>Bill_Date</th>
					<th>Pescription_Img</th>
					<th>Bill_Amount</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="billing" items="${billlist}">
					<!--var represents variable items represents collection  -->
					<tr>
						<td>${billing.billid}</td>
						<td>${billing.userId}</td>
						<td>${billing.billdate}</td>
						<td><img src="file:///C:/Users/shei3123/eclipse-workspace/pharmacyshop/src/main/resources/static/presImg/${billing.pescriptionimg}" width="100" height="100"></td>
						<td>${billing.billamount}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>