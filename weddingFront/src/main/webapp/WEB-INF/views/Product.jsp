<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<c:url value="/resources/image" var="img"/>
<c:url value="/resources/css" var="css"/>
<c:url value="/resources/js" var="js"/>
<link href="${css}/bootstrap.min.css">
<title>Product Info</title>
</head>
<style>
body {
    background-image: url("${img}/44b270f886ed464af238a1057156f54e.jpg");
    background-repeat: no-repeat;
    background-size:1500px 250px;
}
.img1
{
position:relative;
left:250px;
bottom:10px;
width:300px;
}
.im
{
position:absolute;
left:600px;
top:300px;
}
input[type=text], input[type=number],textarea
{
    width:55%;
    padding: 5px 25px;
    margin:10px 55px;
    display: inline;
    border-radius:8px;
    outline-color:white;
	   
}

button {
    background-color:LightGray ;
    font-size:16px;
    color:black;
    padding: 10px 25px;
    margin: 5px 32px;
    border: none;
    cursor: pointer;
    width: 50%;
    border-radius:4px;
}

button:hover {
    opacity:0.8;
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
    float: left;
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
.p3
{
position:absolute;
    top:350px;
    right:900px;
    width:400px;
	border: 2px solid white;
}
label
{
color:Tomato;
font-size:20px;
position:static;
    
}
h2
{
font-size:40px;
font-family:Garamond;
background-image: url("${img}/fe3ec4b1e346104b37d961a914746c11--vintage-backgrounds-flower-backgrounds.jpg");
color:Purple ;
}
 .border table,.border td,.border th
 {
  border:1px solid black;
 }
 
 .one
 {
 margin-left:15px;
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
<img class="img1" src="${img}/58b05ca3f3d536053c16016a.jpg" alt="red" style="width:600px; height:250px">
</div>
<div class="item">
<img class="img1" src="${img}/mccainpictures071.jpg" alt"butterfly" style="width:600px; height:250px">
</div>
<div class="item">
<img class="img1" src="${img}/998A2221.jpg" alt="flowers" style="width:600px; height:250px">
</div>
<div class="item">
<img class="img1" src="${img}/1.jpg" alt="flowers" style="width:600px; height:250px">
</div>
<div class="item">
<img class="img1" src="${img}/05divyanka-party5.jpg" alt="flowers" style="width:600px; height:250px">
</div>
<div class="item">
<img class="img1" src="${img}/hdds.jpg" alt="flowers" style="width:600px; height:250px">
</div>
<a class="left carousel-control" href="#mycr1" data-slide="prev">
</a>
<a class="right carousel-control" href="#mycr1" data-slide="next">
</a>
</div>
</div>
</body>
<nav role="main">
<ul class=li a>
                <li><a href="<c:url value="/"/>">HOME</a></li>
                <li><a href="<c:url value="/Saree"/>">SAREE</a></li>
                <li><a href="<c:url value="/Bridal"/>">BRIDAL</a></li>
                <li><a href="<c:url value="/Rings"/>">RINGS</a></li>
                <li><a href="<c:url value="/Contactus"/>">CONTACT US</a></li>
</ul>
</nav>
<body>
<fieldset class=p3>
<c:url value="/addprd" var="prd"/>
 <legend align="center"> <h2>Product Form</h2></legend>
   <form:form action="${prd}" method="post" commandName="Product" enctype="multipart/form-data">
      <br> <label>Product id</label> </br>
	   <form:input type="text" path="prdid" placeholder="Enter Product id" name="pid"/> 
       <br><label>Product Name</label></br>
	   <form:input type="text" path="prdname" placeholder="Enter Product name" name="pname"/>
       <br><label>Product Description:</label></br>
	   <br><form:textarea name="Product Description" path="prdDes" rows="7" cols="10" style="margin-left:50px"/></br>
       <br><label>Product Quantity:</label></br>
	   <br><form:input type="text" path="Quantity" placeholder="Enter Quantity" name="quantity" min="0" max="100"/></br> 
        <br><label>Price: </label></br>
		<br><form:input type="text" path="price" placeholder="Enter Price" name="price"/></br>	
		<label>Category Id</label>
		<form:select path="categoryInfo.catid">
		<c1:forEach items="${Categories}" var="cat1">
		<option value="${cat1.getCatid()}" label="${cat1.getCatname()}">${cat1.getCatname()}</option><br>
		</c1:forEach>
		</form:select><br>
		<label>Supplier Id</label>
		<form:select path="supplierInfo.supId">
		<c1:forEach items="${Suppliers}" var="sup1">
		<option value="${sup1.getSupId()}" label="${sup1.getName()}">${sup1.getName()}</option>
		</c1:forEach>
		</form:select>
		<tr><td><form:input path="pimg" type="file" name="image" value="Upload file"/></td></tr>  
        <button type="Submit" name="Submit" style="margin-left:70px">Submit</button>
        
</form:form>
</fieldset>
<div class=border style="margin-top:950px">
<table style="border:1px solid black">
<tr>
<th>Product Image</th>
<th>Product Id</th>
<th>Product Name</th>
<th>Product Description</th>
<th>Product Quantity</th>
<th>Price</th>
<th>Category Id</th>
<th>Supplier Id</th>
<th>Edit/Delete</th>
</tr>
<c1:forEach items="${Products}" var="prd">
<tr>

<td><img src="<c:url value="/resources/image/${prd.getPrdid()}.jpg"/>" style="width:120px; height:100px;"/></td>
<td>${prd.getPrdid()}</td>
<td>${prd.getPrdname()}</td>
<td>${prd.getPrdDes()}</td>
<td>${prd.getQuantity()}</td>
<td>${prd.getPrice()}</td>
<td>${prd.getCategoryInfo().getCatid()}</td>
<td>${prd.getSupplierInfo().getSupId()}</td>
<td><a href="<c:url value="/editproduct/${prd.getPrdid()}"/>" class="button">edit</a>
<a href="<c:url value="/deleteproduct/${prd.getPrdid()}"/>" class="button">delete</a></td>
</tr></c1:forEach>
</table>
</div>


 <div class=im><img src="${img}/logo.png" alt=logo style="width:500px"></div>
</body>
</html>