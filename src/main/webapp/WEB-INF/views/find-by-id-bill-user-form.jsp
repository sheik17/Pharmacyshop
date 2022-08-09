<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Bill</title>
</head>
<body>
    <div id="root">
        <div id="form">
            <form:form action="" method="post" modelAttribute="fetchByBillId">
           <div>
					<label for="billid">Bill_Id</label>
					<div>
						<form:input path="billid" />
					</div>
				</div>
				<div>
					<label for=userId>User_Id</label>
					<div>
						<form:input path="userId" />
					</div>
				</div>
				<div>
					<label for="billdate">Bill_Date</label>
					<div>
						<form:input path="billdate" />
					</div>
				</div>
				<div>
					<label for="pescriptionimg">Pescription_Img</label>
					<div>
						<form:input path="pescriptionimg" />
					</div>
				</div>
				<div>
					<label for="billamount">Bill_Amount</label>
					<div>
						<form:input path="billamount" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<div id="root" class="box">
        <div id="form">
            <form:form action="" method="post" modelAttribute="fetchUserById">
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
                <div>
                    <label for="userPassword">Password</label>
                    <div>
                        <form:input type="password" path="userPassword" />
                    </div>
                </div>
                <div>
                    <label for="phoneNo">Phone No</label>
                    <div>
                        <form:input path="phoneNo" />
                    </div>
                </div>
                <div>
                    <label for="email">Email</label>
                    <div>
                        <form:input path="email" />
                    </div>
                </div>
                <div>
                    <label for="role">Role</label>
                    <div>
						<td><form:select path="role">
								<form:errors path="role" />
								<form:option value="user">User</form:option>
							</form:select></td>
					</div>
                </div><br>
                <form:button id="log">Sign Up</form:button>
            </form:form>
        </div>
    </div>
</body>
</html>