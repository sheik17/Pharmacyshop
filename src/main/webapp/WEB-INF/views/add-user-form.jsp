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
body {
	background: #456;
}

h1 {
	color: #fff;
}

label {
	color: #fff;
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
	width: 250px;
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
	background:
		url("https://doc-08-2c-docs.googleusercontent.com/docs/securesc/68c90smiglihng9534mvqmq1946dmis5/fo0picsp1nhiucmc0l25s29respgpr4j/1631524275000/03522360960922298374/03522360960922298374/1Sx0jhdpEpnNIydS4rnN4kHSJtU1EyWka?e=view&authuser=0&nonce=gcrocepgbb17m&user=03522360960922298374&hash=tfhgbs86ka6divo3llbvp93mg4csvb38")
		no-repeat center/cover;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
	margin: auto;
	padding: 10px;
	text-align: center;
}
</style>
</head>
<body>
<h1 align="center">Sign Up</h1>
    <div id="root" class="box">
        <div id="form">
            <form:form action="adduser" method="post" modelAttribute="adduser">
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
                        <form:input path="userPassword" />
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
                        <form:input path="role" />
                    </div>
                </div><br>
                <form:button id="log">Sign Up</form:button>
            </form:form>
        </div>
    </div>
</body>
</html>