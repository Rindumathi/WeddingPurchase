<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<HTML>
<head>
<c:url value="/resources/image" var="img"/>
<c:url value="/resources/css" var="css"/>
<c:url value="/resources/js" var="js"/>
<link href="${css}/bootstrap.min.css">

<style>
ul
{
   
    text-decoration:none;
	list-style:none;
    margin: 0;
    padding: 0; 
    position:absolute;
    top:0px;
    right:0px;
    left:0px;
}

li {
    
    float:left;
}

li a {
    
    display: block;
    color:DarkMagenta;
    text-align: center;
    padding: 4px 15px;
    text-decoration: none;
	font-size:15px;
	
}
.li a
{
color:DeepPink ;
}
a:visited
{
color:DarkMagenta ;
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

<body>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<nav role="main">
<ul class=li a>
  <li><a class="active" href="<c:url value="/Aboutus"/>">About us</a></li>
  <li><a class="active" href="<c:url value="/Contactus"/>">Contact us</a></li>
  <c1:if test="${pageContext.request.userPrincipal.name==null}">
  <li style="float:right"><a class="active" href="<c:url value="/User"/>">Sign Up</a></li>
  <li style="float:right"><a class="active" href="<c:url value="/login"/>">Login</a></li>
  </c1:if>
  <c1:if test="${pageContext.request.userPrincipal.name!=null}">
  <li style="float:right"><a class="active" href="<c:url value="/viewcart"/>"><i style="color:DeepPink"class="fa fa-shopping-cart"></i></a></li>
  <li style="float:right"><a class="active" href="<c:url value="/j_spring_security_logout"/>">Logout</a></li>
  </c1:if>
  <input type="text" name="search" placeholder="Search..">
</ul>
</nav>

<meta http-equiv="content-type" content="text/html;charset=iso-8859-1" />
		<meta name="description" value="A nice slideshow with zooming and panning images fading in and out." />
		<meta name="keywords" value="zoom, pan, panning, zooming images, fading, slideshow, gallery, carousel, example, jquery" />
		<title>Wedding Planner</title>

		<script src="http://code.jquery.com/jquery-1.8.2.min.js" type="text/javascript"></script>
		<script src="${js}/jquery.carouFredSel-6.0.4-packed.js" type="text/javascript"></script>
		<script type="text/javascript">
			$(function() {

				var dur = 1000;
				var pDur =9000;

				$('.carousel').carouFredSel({
					items: {
						visible: 1,
						width: 1500,
						height:520
					},
					scroll: {
						fx: 'fade',
						easing: 'linear',
						duration: dur,
						timeoutDuration: pDur,
						onBefore: function( data ) {
							animate( data.items.visible, pDur + ( dur * 5) );
						},
						onAfter: function( data ) {
							data.items.old.find( 'img' ).stop().css({
								width: 1500,
								height: 520,
								marginTop: 0,
								marginLeft: 0
							});
						}
					},
					onCreate: function( data ) {
						animate( data.items, pDur + ( dur *2 ) );
					}
				});
				
				function animate( item, dur ) {
					var obj = {
						width: 1600,
						height: 650
					};
					switch( Math.ceil( Math.random() * 2 ) ) {
						case 1:
							obj.marginTop = 0;
							break;
						case 2:
							obj.marginTop = -120;
							break;
					}
					switch( Math.ceil( Math.random() * 2 ) ) {
						case 1:
							obj.marginLeft = 0;
							break;
						case 2:
							obj.marginLeft = -200
							break;
					}
					item.find( 'img' ).animate(obj, dur, 'linear' );
				}

			});
		</script>
		<style type="text/css">
			html, body {
			    
				height: 100%;
				padding: 0;
				margin: 0;
			}
			body {
				padding-bottom: 40px;
                color: #5a5a5a;
                
			}
			body * {
			    
				font-family: Arial, Geneva, SunSans-Regular, sans-serif;
				font-size: 14px;
				color:red;
				line-height: 22px;
			}

			#wrapper {
			    
				border:0;
				width: 1500px;
				height: 520px;
				padding:0px;
				margin: 0px 0 0 0px;
				position: absolute;
				top:4%;
				left:0;
				right:0;
				box-shadow:0;
			}
			.carousel,
			.carousel div {
				width:1500px;
				height: 520px;
				overflow:hidden;
			}
			#wrapper
			{
			position: absolute;
			top:25px;
			}
			.navbar-wrapper 
			{
			   
			   width:9000px;
			   margin-top: 20px;
               margin-bottom: -90px; 
               position: absolute;
               top: 0;
               left:500px;
               right:900px;
               z-index: 10;
            }
	  nav[role="main"] ul 
	    {
              background-color:Silver ;
            }
           nav[role="sub"] ul li 
		   {
		     
             background-color: lavender;
             background-repeat:repeat;
             background-size:cover;
	         background-image: url("${img}/fe3ec4b1e346104b37d961a914746c11--vintage-backgrounds-flower-backgrounds.jpg");
	         font-style: oblique;
           }
		   .icon-bar a 
		   {
             text-align: center;
             padding: 2px;
             transition: all 0.3s ease;
             
             font-size:23px;
            }
			
		 
		</style>
	
		<div id="wrapper">
		<div class="navbar-wrapper">
  <div class="container">
    <div class="navbar navbar-inverse navbar-static-top">
      
        <div class="navbar-header">
        <a class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
	      <span class="icon-bar"></span>
	      <span class="icon-bar"></span>
	      <span class="icon-bar"></span>
	    </a>
		<img src="${img}/logo.png" alt=logo  style="position:relative;right:400px;top:500px;width:350px;">
		<img src="${img}/dt.jpg" alt=logo  style="position:relative;right:100px;top:500px;width:500px;">
        </div>
        <div class="navbar-collapse collapse">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		  <nav role="sub">
              <ul class="dropdown-menu">
			  <div class=icon-bar a><li style="width:60px;height:30px;"><a href="#home.html"><i class="fa fa-home" style="color:DarkMagenta;"></i></a></li></div>
                
                <div class="dropdown">
                <li><a href="http://localhost:8080/Frontend/">THE SHOWCASE</a></li>
                <div class="dropdown-content">
                <ul>
				<li style="padding:12px"><a href="<c:url value="/Saree"/>"> SAREE</a></li>
				<li style="padding:10.5px"><a href="<c:url value="/Bridal"/>">BRIDAL</a></li>
				<li style="padding:13.5px"><a href="<c:url value="/Rings"/>">RINGS</a></li>
				</ul>
				</div>
				</div>
                
				 <div class="dropdown">
				<li><a href="#">MARKET PLACE</a></li>
				<div class="dropdown-content">
				<c1:if test="${pageContext.request.userPrincipal.name!=null}">
				<security:authorize access="hasRole('ROLE_ADMIN')">
				<ul>
				<li style="padding:5.5px"><a href="<c:url value="/Category"/>">CATEGORY</a></li>
				<li style="padding:10px"><a href="<c:url value="/Product"/>">PRODUCT</a></li>
				<li style="padding:10px"><a href="<c:url value="/Supplier"/>">SUPPLIER</a></li>
				</ul></security:authorize>
				</c1:if>
				
				</div>
				</div>
				
				
			  </nav>
        </div>
    </div>
  </div><!-- /container -->
</div><!-- /navbar wrapper -->

				<div class="carousel">
				<div><img src="${img}/banner-2.jpg" width="1500" height="520" border="0" /></div>
				<div><img src="${img}/marriage.jpg" width="1500" height="520" border="0" /></div>
			    <div><img src="${img}/Belief.weddingplz.jpg" width="1500" height="520" border="0" /></div>
				<div><img src="${img}/8c0480eaa66af0cfa1e4ee7f3867aaad.jpg" width="1500" height="520" border="0" /></div>
				<div><img src="${img}/2419_Indian marriages.jpg" width="1500" height="520" border="0" /></div>
				<div><img src="${img}/Priya-Vision-41.jpg" width="1500" height="520" border="0" /></div>
				<div><img src="${img}/indian-wedding-texas-jatina-10.jpg" width="1500" height="520" border="0" /></div>
				
			</div>
		</div>
	
	<style>
	.dropdown {
    float: left;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 16px;    
    border: none;
    outline: none;
    color: white;
    padding: 16px 16px;
    background-color:none;
    
}

.container a:hover, .dropdown:hover .dropbtn {
    background-color:none;
    
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 165px;
	margin-top: 20px;
    z-index: 1;
    
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 5px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display:block;
}
input[type=text] {
    
    width:90px;
    font-size: 16px;
    background-color:Silver;
    background-position: 2px 2px; 
    background-repeat: no-repeat;
    padding: 2px 2px 2px 20px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
    width: 40%;
}
.footer 
{
  
  position: absolute;
  right:0;
  top:900px;
  left:0;
  padding:1rem;
  background-color: #efefef;
  text-align: center;
}
</style>
<div class="footer"> 
<ul>
<li><a class="active" href="<c:url value="/Aboutus"/>">About us</a></li>
<li><a class="active" href="#">Help</a></li>
<li style="float:right"><a class="active">www.wedding.com</a></li>
<li style="float:right"><a class="active">Contact us: 088-114001001</a></li>
</ul>
</body>
</div>
</div>
</HTML>