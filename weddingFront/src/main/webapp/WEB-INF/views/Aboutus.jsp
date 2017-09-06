<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<HTML>
<head>
<Title>About Us</Title>
<c:url value="/resources/image" var="img"/>
<c:url value="/resources/css" var="css"/>
<c:url value="/resources/js" var="js"/>
<link href="${css}/bootstrap.min.css">
</head>
<meta name="viewport" content="width=device-width,initial scale=1">
<link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="${js}/jquery.min.js">
</script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
</script>

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
position:relative;
left:50px;
bottom:50px;
}
h1
{
font-size:80px;
Color:DeepPink;
position:relative;
    top:100px;
    left:405px;
}
sup
{
color:DimGray ;
font-size:20px;
position:absolute;
    top:10px;
    right:993px;
}
p
{
font-family:Times New Roman Italic;
font-size:20px;
padding:5px 20px;
position:relative;
top:100px;
}
ul
{
    list-style:none;
    margin: 0;
    padding: 0;
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
</style>
<nav role="main">
<ul class=li a>
                <li><a href="<c:url value="/"/>">HOME</a></li>
                <li><a href="<c:url value="/Saree"/>">SAREE</a></li>
                <li><a href="<c:url value="/Bridal"/>">BRIDAL</a></li>
                <li><a href="<c:url value="/Rings"/>">RINGS</a></li>
                <li><a href="<c:url value="/Contactus"/>">CONTACT US</a></li>
</ul>
</nav>
<h1><sup>feel the magic of</sup>weddings</h1>
<br>
<p>SayShaadi aims at creating an elegant one-stop premium online solution for Indian weddings, a wedding planning website that will change the way we plan weddings. Leveraging the best in web technology, it helps the to-be-wed couples and their parents to easily and efficiently manage everything leading up to their big day. It can also be called as a wedding professional network which connects millions of to-be-weds, parents and wedding professionals across the country and around the world</p></br>
<br>
</br>
<p>The bride and groom are either swarmed with ideas about caterers, photography, venues and flowers or on the other hand are just clueless on what to do. This is where we come in. Our visual inspiration showcase helps you discover wedding ideas & trends, choose the right vendors to hire, the must-have things to buy and also help you save money by offering exclusive best offers and events. With a stunning and superior browsing experience combined with intuitive yet powerful tools, SayShaadi makes wedding planning a breeze.</p>
<br>
<p>SayShaadi truly is the country's first one-stop destination for all things Shaadi! We have everything you need in one place to help you plan this joyous occasion and we are darn excited to help you and to be a part of one of the biggest and brightest moments of your life. Let us make it extra special. It's time to Say Shaadi!</p>
<br>
</br> 
<div class=im><img src="${img}/logo.png" alt=logo style="width:500px"></div>
</body>
<%@ include file="footer.jsp" %>
</html>





