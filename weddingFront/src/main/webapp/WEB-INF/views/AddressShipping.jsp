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
left:400px;
top:300px;
}
h1
{
position:absolute;
    top:300px;
    right:1100px;
    width:300px;
}
h2
{
position:absolute;
    top:300px;
    right:250px;
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
    right:1500px;
    width:300px;
}
.pst
{
Background-color:white;
position:absolute;
    top:375px;
    left:500px;
    width:100px;
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
<body>
<body align="center"><h1>BILLING</h1></body>
<form class="p">
<div class="container">
<!-- <input type="text"   placeholder="Billing Id" name="bname" class="ps"/><br> -->
<form:input type="text" path="userInfo.billing.house_no" placeholder="Your house_no" name="bhs_no" class="ps"/><br>
<form:input type="text" path="userInfo.billing.Country" placeholder="Your country" name="bcountry" class="ps"/><br>
<form:input type="text" path="userInfo.city" placeholder="Your city" name="bcity" class="ps"/><br>
<form:input type="text" path="userInfo.billing.pincode" placeholder="Pincode" name="bpincode" class="ps"/><br> 
<form:input type="text" path="userInfo.phNo" placeholder="Your Mobile #" name="mblnum" class="ps"/><br>
<form:input type="text" path="userInfo.email" placeholder="Email id" name="id" class="ps"/><br>

</div>
</form>

<body align="left"><h2>SHIPPING ADDRESS</h2></body>
<c:url value="/orderConfirm" var="con"/>
<form:form class="pst" action="${con}" commandName="shippingAddress" method="post">
<div class="container">
<form:input type="text" path="ship_Id"  placeholder="Shipping Id" name="shid" class="ps"/><br>
<form:input type="text" path="house_no" placeholder="Your house_no" name="bhs_no" class="ps"/><br>
<form:input type="text" path="Country" placeholder="Your country" name="bcountry" class="ps"/><br>
<form:input type="text" path="City" placeholder="Your city" name="bcity" class="ps"/><br>
<form:input type="text" path="pincode" placeholder="Pincode" name="bpincode" class="ps"/><br> 
<form:input type="text" path="phNo" placeholder="Your Mobile #" name="mblnum" class="ps"/><br>
<form:input type="text" path="emailid" placeholder="Email id" name="id" class="ps"/><br>
<form:input type="text" path="first_name" placeholder="Your First Name" name="sname" class="ps"/><br>
<form:input type="text" path="last_name" placeholder="Your Last Name" name="lname" class="ps"/><br>
<button type="submit">Submit</button>
</div>
</form:form>
</body>
</html>
