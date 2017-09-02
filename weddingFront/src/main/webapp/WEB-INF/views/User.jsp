<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<HTML>
<head>
<Title>Sign up</Title>
<c:url value="/resources/image" var="img"/>
<c:url value="/resources/css" var="css"/>
<c:url value="/resources/js" var="js"/>
<link href="${css}/bootstrap.min.css">
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
left:700px;
top:300px;
}
h1
{
position:absolute;
    top:300px;
    right:520px;
    width:300px;
}
.ps
{
    width:35%;
    padding: 10px 15px;
    margin:10px 0;
    display: inline;
}

button {
    background-color:skyblue;
    font-size:16px;
    color:black;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width:25%;
    border-radius: 1em 1em 1em 1em;
}

button:hover {
    opacity:0.8;
}
.p
{
Background-color:white;
position:absolute;
    top:375px;
    right:1300px;
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
<body align="center"><h1>SIGN UP</h1></body>
<c:url value="/addusr" var="usr"/>
<form:form class="p" action="${usr}" method="post" commandName="user">
<div class="container">
I'm the<form:radiobutton path="gender" name="Gender" value="Female"/>Bride
<form:radiobutton path="gender" name="Gender" value="Male"/>Groom<br>
<form:input type="text" path="uId"  placeholder="User Id" name="uname" class="ps"/><br>
<form:input type="text" path="city" placeholder="Your city" name="cty" class="ps"/><br>
<form:input type="text" path="name" placeholder="Your name" name="uname" class="ps"/><br> 
<form:input type="text" path="phNo" placeholder="Your Mobile #" name="mblnum" class="ps"/><br>
<form:input type="text" path="email"  placeholder="Email id" name="id" class="ps"/><br>
<form:input type="password" path="password" placeholder="Password" name="psw" class="ps"/><br>
<form:input type="text" path="billing.bId"  placeholder="Bill id" name="id" class="ps"/><br>
<form:input type="text" path="billing.house_no"  placeholder="Houseno" name="id" class="ps"/><br>
<form:input type="text" path="billing.Country"  placeholder="Country" name="id" class="ps"/><br>
<form:input type="text" path="billing.City"  placeholder="city" name="id" class="ps"/><br>
<form:input type="text" path="billing.pincode"  placeholder="pincode" name="id" class="ps"/><br>
<form:input type="text" path="billing.phNo"  placeholder="phoneno" name="id" class="ps"/><br>

<button type="submit">Create my account</button>
</form:form>
</div>
<div class=im><img src="${img}/logo.png" alt=logo style="width:500px"></div>
</body>
</html>
