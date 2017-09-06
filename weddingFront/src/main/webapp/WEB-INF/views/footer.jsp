<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>

<head>
    <title>Basic Footer</title>
    <meta charset="utf-8">
    <c:url value="/resources/image" var="img"/>
<c:url value="/resources/css" var="css"/>
<c:url value="/resources/js" var="js"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="${css}/Footer-white.css">
</head>

<body>

    <footer id="myFooter">
        <div class="container">
            <ul>
                <li><a href="<c:url value="/Aboutus"/>">About us</a></li>
                <li><a href="<c:url value="/Contactus"/>">Contact us</a></li>
                <li><a href="#">© 2017 wedding.com</a></li>
                
                
            </ul>
        
        </div>
        <div class="footer-social">
            <a href="#" class="social-icons"><i class="fa fa-facebook"></i></a>
            <a href="#" class="social-icons"><i class="fa fa-google-plus"></i></a>
            <a href="#" class="social-icons"><i class="fa fa-twitter"></i></a>
        </div>
    </footer>
   
</body>

</html>
