<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<html>
<head>
<c:url value="/resources/image" var="img"/>
<c:url value="/resources/css" var="css"/>
<c:url value="/resources/js" var="js"/>
<link href="${css}/bootstrap.min.css">
<title>Contact us</title>
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
.im
{
position:relative;
left:600px;
top:100px;
}
ul
{
    list-style:none;
    margin:0;
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
table
{
position:absolute;top:440px;left:450px;
}
h1
{
font-family:Garamond;
background-image: url("${img}/fe3ec4b1e346104b37d961a914746c11--vintage-backgrounds-flower-backgrounds.jpg");
color:SlateBlue ;
font-size:45px;
position:absolute;
    top:300px;
    left:520px;
}
th
{
position:relative;
left:70px;
font-size:20px;
color:OrangeRed ;
}
td
{
padding:5px 20px;
position:relative;
left:150px;
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
</body>
<body>
<nav role="main">
<ul class=li a>
               <li><a href="<c:url value="/"/>">HOME</a></li>
                <li><a href="<c:url value="/Saree"/>">SAREE</a></li>
                <li><a href="<c:url value="/Bridal"/>">BRIDAL</a></li>
                <li><a href="<c:url value="/Rings"/>">RINGS</a></li>
                <li><a href="<c:url value="/Contactus"/>">CONTACT US</a></li>
</ul>
</nav>
</body>
<h1>Reach out to us</h1>
<table>
<tr>
<th style="left:150px;padding:15px;">EMAIL</th>
</tr>
<tr>
<td style="left:140px">hi@weddings.com</td>
</tr>
<tr>
<th style="left:90px;padding:15px;">SEND US A MESSAGE</th>
</tr>
<tr>
<td style="left:140px"><button type="submit">Send Message</button></td>
</tr>
<tr>
<th style="left:150px;padding:15px;">PHONE</th>
</tr>
<tr>
<td style="left:140px">+91-8896542381</td>
</tr>
<tr>
<th style="left:140px;padding:15px;">LOCATION<th>
</tr>
<tr>
<td style="left:50px">Sangeetnagar Colony, Somajiguda,Hyderabad, India</td>
</tr>
</table>
<div class=im><img src="${img}/logo.png" alt=logo style="width:400px"></div>
</html>
