<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Medicine List</title>
<style type="text/css">
body {
	background: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/blurred_bg2.jpg') no-repeat center center fixed;
  background-size: cover;
}

@import url(https://fonts.googleapis.com/css?family=Raleway:400,500,600);

$text: #303336;
$light-text: #8c98a8;
$button: #49B956;
$button-hover: #60CF6F;
.box {
  font: 13px/23px "Raleway", Arial, sans-serif;
  color: $text;  
  padding: 60px 0; 
   background: white;
}
.container {
  margin: 0 auto;
  width: 600px;
  background: #ccccff;
  border-radius: 3px;
  position: relative
}
.price {
    position: absolute;
    left: 35%;
    color: white;
    text-align: center;
    background: rgba(0,153,285,0.8);
    border-radius: 50%;
    padding: 19px 33px;
    font-size: 22px;
  }
  .medid {
      font-size: 16px;
    color: $light-text;
    margin-bottom: 28px;
  }

  .medname {
    font-size: 16px;
    color: $light-text;
    margin-bottom: 28px;
  }

 .quantity {
    font-size: 16px;
    color: $light-text;
    margin-bottom: 28px;
  }
  .manufac {
    font-size: 16px;
    color: $light-text;
    margin-bottom: 28px;
  }
   .expdate {
    font-size: 16px;
    color: $light-text;
    margin-bottom: 28px;
  }
   .pescription {
    font-size: 16px;
    color: $light-text;
    margin-bottom: 28px;
  }
   .stocks {
    font-size: 16px;
    color: $light-text;
    margin-bottom: 28px;
  }
  .button {
    width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
	color: blue;
}
</style>
</head>
<body>
<br>
	<div id="box">	<br>
	<div class="container"><br>
				<c:forEach var="medicine" items="${allmed}">
				<br>
					<!--var represents variable items represents collection  -->
					<div class="medid">Medicine_Id
						<div>${medicine.medicineid}</div>
						</div>
						<div class="medname">Medicine_Name
						<div>${medicine.medicinename}</div>
						</div>
						<div class="quantity">Quantity
						<div>${medicine.quantity}</div>
						</div>
						<div class="price">Price
						<div>${medicine.price}
						</div>
						</div>
						<div class="manufac">Manufacture
						<div>${medicine.manufacture}</div>
						</div>
						<div class="expdate">ExpDate
						<div>${medicine.expdate}</div>
						</div>
						<div class="pescription">PescriptionReq
						<div>
						${medicine.pescriptionreq}</div>
						</div>
						<div class="stocks">Stocks
						<div>${medicine.stocks}
						</div>
						</div>
						<div class="image"><img
							src="file:///C:/Users/shei3123/eclipse-workspace/pharmacyshop/src/main/resources/static/productImages/${medicine.medicineimg}"
							width="100" height="100"></div>
							<div>
						<a href="/billdetail/addbilldetailform" class="button">Purchase Product</a></div>
				</c:forEach>
		</div>
	</div>
</body>
</html>