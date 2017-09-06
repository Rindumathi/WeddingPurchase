<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<html>
<head>
<c:url value="/resources/image" var="img"/>
<c:url value="/resources/css" var="css"/>
<c:url value="/resources/js" var="js"/>
<link href="${css}/bootstrap.min.css">
<title>Login</title>
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
.im
{
position:absolute;
left:900px;
top:300px;
}
input[type=text], input[type=password]
{
    width:25%;
    padding: 15px 20px;
    margin:10px;
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
    width:25%;
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
	margin-left:0px;
	
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
.p
{
Background-color:white;
position:absolute;
    top:400px;
    right:600px;
    width:300px;
	overflow:hidden;
}
h1
{
position:absolute;
    top:300px;
    right:600px;
    width:300px;
	border: 2px solid white;
}

</style>
</head>
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
<fieldset class="p">
<h1 align="center">SIGN IN</h1>
<div class="container">
 <p>SIGN IN <span style="color:Gainsboro "> (OR) <a href ="<c:url value="/User"/>"><button type="submit" style="padding:2px;width:15%;background-color:Orange">JOIN FREE</button></a></span></p>
<c:url value="/j_spring_security_check" var="log"/>
<form:form action="${log}" method="post">
<input type="text"   placeholder="Enter Username" name="j_username"> <br>
<input type="password"  placeholder="Enter Password" name="j_password"><br>
<button type="submit">Sign in</button>
</div>
<center><a href="<c:url value="/Forgotpwd"/>">Forgot password?</a></center>
</div>
</form:form></fieldset>






<div class=im><img src="${img}/logo.png" alt=logo style="width:400px"></div>
</body>

</html>