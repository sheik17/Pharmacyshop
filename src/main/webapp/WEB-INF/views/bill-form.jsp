<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List Service Detail</title>
</head>
<body>
<div id="table root">
        <table border='2' width='1000' cellpadding='2'>
            <thead>
                <tr>
                    <th>Bill_Id</th>
					<th>Medicine_Id</th>
					<th>Quantity</th>
					<th>Price</th>
					<th>Amount</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="billdetail" items="${alldetails}">
                    <tr>
                        <td>${billdetail.billid}</td>
						<td>${billdetail.medicineid}</td>
						<td>${billdetail.quantity}</td>
						<td>${billdetail.price}</td>
						<td>${billdetail.amount}</td>
                        <td><a href="/vehicleservicedetails/serviceDetailsAdd?id=${Services.serviceDetailId}&bookId=${bookId}"><button>Add bill</button></a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <div><a href="/vehiclepayment/addpayment?id=${bookId}"><button>payment</button></a></div>
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
				<c:forEach var="billing" items="${allbill}">
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