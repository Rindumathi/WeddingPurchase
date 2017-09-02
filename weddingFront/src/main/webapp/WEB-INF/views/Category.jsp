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
<title>Category Info</title>
</head>
<style>
body 
{
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
.im
{
position:absolute;
left:400px;
top:300px;
}
input[type=text], input[type=password]
{
    width:65%;
    padding: 20px 50px;
    margin:10px 55px;
    display: inline;
    border-radius:8px;
    outline-color:white;
	   
}
button {
    background-color:LightGray ;
    font-size:16px;
    color:black;
    padding: 10px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 40%;
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
lable
{

}
.p3
{
position:absolute;
    top:350px;
    right:900px;
    width:400px;
}
label
{
color:Tomato;
font-size:20px;
position:relative;
    top:0px;
    left:130px;
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
<img src="${img}/mccainpictures071.jpg" alt"butterfly" style="width:600px; height:250px">
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
<nav role="main">
<ul class=li a>
                <li><a href="<c:url value="/"/>">HOME</a></li>
                <li><a href="<c:url value="/Saree"/>">SAREE</a></li>
                <li><a href="<c:url value="/Bridal"/>">BRIDAL</a></li>
                <li><a href="<c:url value="/Rings"/>">RINGS</a></li>
                <li><a href="<c:url value="/Contactus"/>">CONTACT US</a></li>
</ul>
</nav>
<fieldset class=p3>
 <legend align="center"> <h2> Category form </h2></legend>
 <c:url value="/addcat" var="cat"/>
   <form:form action="${cat}" method="post" commandName="Category">
      <br> <label>Category id</label> </br>
	   <form:input type="text" path="catid" placeholder="Enter Category id" name="id"/>
       <br><label>Category Name</label></br>
	   <form:input type="text" path="catname" placeholder="Enter Category name" name="catname"/> 
        <button type="Submit" name="Submit">Submit</button>
        <button type="Reset" name="Reset">Cancel</button>
</form:form>
</fieldset>
<div class=border style="margin-top:500px">
<table style="border:1px solid black">
<tr>
<th>Category Id</th>
<th>Category Name</th>
<th>Edit/Delete</th>
</tr>
<c1:forEach items="${Categories}" var="cat">
<tr>
<td>${cat.getCatid()}</td>
<td>${cat.getCatname()}</td>
<td><a href="<c:url value="/editcategory/${cat.getCatid()}"/>" class="button">edit</a>
<a href="<c:url value="/deletecategory/${cat.getCatid()}"/>" class="button">delete</a></td>
</tr></c1:forEach>
</table>
</div>

<div class=im><img src="${img}/logo.png" alt=logo style="width:400px"></div>
</body>
</html>