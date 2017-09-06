<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
<c:url value="/resources/image" var="img"/>
<c:url value="/resources/css" var="css"/>
<c:url value="/resources/js" var="js"/>
<link href="${css}/bootstrap.min.css">
<title>Order Confirmation</title>
</head>
<style>
body {
    background-image: url("${img}/44b270f886ed464af238a1057156f54e.jpg");
    background-repeat: no-repeat;
    background-size:1500px 250px;
}
img
{
position:relative;
left:250px;
bottom:10px;
width:300px;
}

ul
{
    list-style:none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    position:absolute;
    top:250px;
    right:0px;
    left:100px;
}

li {
    float:left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 2px 100px;
    text-decoration: none;
	font-size:17px;
	
}
.li a
{
color:DeepPink ;
}
a:visited
{
color:DarkMagenta;
}
 a:hover
{
color:pink;
}
a:active
{
color:red;
}
table, th, td {
    
    border: 1px solid black;
    border-collapse: collapse;
	
}

.ts
{
width:1000px;
position:relative;
top:100px;
}
button {
    background-color:skyblue ;
    
    
    padding: 10px 25px;
    border: none;
    cursor: pointer;
    width:10%;
    border-radius:4px;
    position:relative;
    top:200px;
    left:700px;
}
</style>
<body>
<meta name="viewport" content="width=device-width,initial scale=1">
<link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="${js}/jquery.min.js">
</script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
</script>
</head>
<body>
<div class="container">
<div id="mycr1" class="carousel slide" data-ride="carousel"> 
<div class="carousel-inner">
<div class="item active">
<img src="${img}/58b05ca3f3d536053c16016a.jpg" alt="red" style="width:600px; height:250px">
</div>
<div class="item">
<img src="${img}/mccainpictures071.jpg" alt="butterfly" style="width:600px; height:250px">
</div>
<div class="item">
<img src="${img}/998A2221.jpg" alt="flowers" style="width:600px; height:250px">
</div>
<div class="item">
<img src="${img}/1.jpg" alt="flowers" style="width:600px; height:250px">
</div>
<div class="item">
<img src="${img}/05divyanka-party5.jpg" alt="flowers" style="width:600px; height:250px">
</div>
<div class="item">
<img src="${img}/hdds.jpg" alt="flowers" style="width:600px; height:250px">
</div>
<a class="left carousel-control" href="#mycr1" data-slide="prev">
</a>
<a class="right carousel-control" href="#mycr1" data-slide="next">
</a>
</div>
</div>
</div>
<nav role="main">
<ul class=li a>
               <li><a href="<c:url value="/"/>">HOME</a></li>
                <li><a href="<c:url value="/Saree"/>">SAREE</a></li>
                <li><a href="<c:url value="/Bridal"/>">BRIDAL</a></li>
                <li><a href="<c:url value="/Rings"/>">RINGS</a></li>
                <li><a href="<c:url value="/Contactus"/>">CONTACT US</a></li>
</ul>
</nav>
<h2 style="position:relative;top:90px;">Billing Address</h2>
<table  class="ts" style="width:100%">
  <tr>
    <th style="text-align:center">EMAIL</th>
    <th style="text-align:center">MOBILE NO </th>
    <th style="text-align:center">CITY</th>
	<th style="text-align:center">COUNTRY</th>
	<th style="text-align:center">HOUSE NUMBER</th>
	<th style="text-align:center">PINCODE</th>
  </tr>


  <tr>
   <td style="text-align:center">${billing.getEmailid()}</td>
   <td style="text-align:center">${billing.getPhNo()}</td>
   <td style="text-align:center">${billing.getCity()}</td>
   <td style="text-align:center">${billing.getCountry()}</td>
   <td style="text-align:center">${billing.getHouse_no()}</td>
   <td style="text-align:center">${billing.getPincode()}</td>
 </tr>
 </table><br></br><br></br>
 <h2 style="position:relative;top:100px">Shipping Address</h2>
<table  class="ts" style="width:100%">
  <tr>
    <th style="text-align:center">NAME</th>
    <th style="text-align:center">EMAIL</th>
	<th style="text-align:center">MOBILE NO</th>
    <th style="text-align:center">CITY</th>
	<th style="text-align:center">COUNTRY</th>
	<th style="text-align:center">HOUSE NUMBER</th>
	<th style="text-align:center">PINCODE</th>
  </tr> 
  <tr>
  <td style="text-align:center">${shippingAddress.getFirst_name()}${shippingAddress.getLast_name()}</td>
  <td style="text-align:center">${shippingAddress.getEmailid()}</td>
  <td style="text-align:center">${shippingAddress.getPhNo()}</td>
  <td style="text-align:center">${shippingAddress.getCity()}</td>
  <td style="text-align:center">${shippingAddress.getCountry()}</td>
  <td style="text-align:center">${shippingAddress.getHouse_no()}</td>
  <td style="text-align:center">${shippingAddress.getPincode()}</td>
  </table><br></br><br></br>
  
  
  <table  class="ts" style="width:100%">
  <tr>
    <th style="text-align:center">PRODUCT IMAGE</th>
	<th style="text-align:center">PRODUCT NAME</th>
	<th style="text-align:center">CATEGORY NAME</th>
	<th style="text-align:center">SELLER NAME</th>
	<th style="text-align:center">PRICE</th>
  </tr>
  <c1:if test="${prot!=null}">
  <tr>
  
  <td style="text-align:center"><img src="<c:url value='/resources/image/${prot.getPrdid()}.jpg'/>" style="width:px; height:100px;left:100px;bottom:1px;"></td>
  <td style="text-align:center">${prot.getPrdname()}</td>
  <td style="text-align:center">${prot.getCategoryInfo().getCatname()}</td>
  <td style="text-align:center">${prot.getSupplierInfo().getName()}</td>
  <td style="text-align:center">${prot.getPrice()}</td>
  </tr></c1:if>
  
  <c1:if test="${prot==null}">
     <c1:forEach items="${cartItem}" var="c1">
     <tr>
     <td style="text-align:center"><img src="<c:url value='/resources/image/${c1.getPrdid()}.jpg'/>" style="width:px; height:100px;left:100px;bottom:1px;"></td>
     <td style="text-align:center">${c1.getPrdname()}</td>
     <td style="text-align:center">${c1.getCategoryInfo().getCatname()}</td>
     <td style="text-align:center">${c1.getSupplierInfo().getName()}</td>
     <td style="text-align:center">${c1.getPrice()}</td>
     </tr></c1:forEach></c1:if>


<%-- <c1:if test="${cartItem!=null}"> --%>
<!--   <tr> -->
<%--    <c1:forEach items="${prod}" var="pro"> --%>
<%--   <td style="text-align:center"><img src="<c:url value='/resources/image/${pro.getPrdid()}.jpg'/>" style="width:px; height:100px;left:100px;bottom:1px;"></td> --%>
<%--   <td style="text-align:center">${pro.getPrdname()}</td> --%>
<%--   <td style="text-align:center">${pro.getCategoryInfo().getCatname()}</td> --%>
<%--   <td style="text-align:center">${pro.getSupplierInfo().getName()}</td> --%>
<%--   <td style="text-align:center">${pro.getPrice()}</td> --%>
<%--   </c1:forEach></tr></c1:if> --%>
</table>
<a href="<c:url value="/pay"/>"><button type="Submit" name="Submit" style="color:MediumVioletRed;font-size:20px;">Pay</button></a>
</body>

</html>


