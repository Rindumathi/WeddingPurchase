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
<title>Cart</title>
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
left:300px;
}
 center
 {
 position:relative;
 top:200px;
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
<table  class="ts" style="width:"100%">

  <tr>
    <th style="text-align:center">CARTITEM ID</th>
    <th style="text-align:center">PRODUCT NAME</th> 
    <th style="text-align:center">DESCRIPTION</th>
	<th style="text-align:center">PRICE</th>
	<th style="text-align:center">QUANTITY</th>
<!-- 	<th style="text-align:center">GRAND TOTAL</th> -->
	<th style="text-align:center">BUY/REMOVE</th>
	
  </tr>
  <c1:forEach items="${cartItem}" var="crt">
  <tr>
  
  <td>${crt.getCarti_id()}</td>
  <td>${crt.getProductInfo().getPrdname()}</td>
  <td>${crt.getProductInfo().getPrdDes()}</td>
  <td>${crt.getProductInfo().getPrice()}</td>
  <td>${crt.getProductInfo().getQuantity()}</td>
<%--   <td>${crt.getCart().getGroand_total()}</td> --%>

  <td><a href="<c:url value='/Remove/${crt.getCarti_id()}'/>">Remove</a>&nbsp/&nbsp<a href="<c:url value='/Buy/${crt.getProductInfo().getPrdid()}/${crt.getCarti_id()}'/>">Buy</a></td>
  </tr> </c1:forEach>
</table>
<center> <h2>Total price=${gtotal}</h2></center>
<center> <a href="<c:url value='Removeall'/>">Remove All</a>&nbsp/&nbsp<a href="<c:url value='/Buyall'/>">Buy All</a>
</center>
 
</body>

</html>