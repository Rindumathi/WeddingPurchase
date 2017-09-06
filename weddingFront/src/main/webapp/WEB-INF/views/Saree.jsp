<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/image" var="img"/>
<c:url value="/resources/css" var="css"/>
<c:url value="/resources/js" var="js"/>
<link href="${css}/bootstrap.min.css">
<style>
div.gallery {
    margin: 5px;
    border: 1px solid #ccc;
    width:300px;
}
div.gallery1 {
    margin: 5px;
    border: 1px solid #ccc;
	float:left;
    width:300px;
}
div.gallery:hover {
    border: 1px solid #777;
}

div.gallery img {
    width:100%;
    height:100%;
}

div.desc {
    padding: 15px;
    text-align: center;
}
</style>
</head>
<body>
<c1:forEach var="prod" items="${products}">
<div class="gallery1">

  <a target="_blank" href="${img}/b1.jpg">
    <img src="${img}/${prod.getPrdid()}.jpg" alt="image" width="300" height="300">
     </a><h3>${prod.getPrdDes()}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   ${prod.getPrice()}</h3>
  <div class="desc"><a href="<c:url value="/addtocart/${prod.getPrdid()}"/>"><button type="submit">Add to cart</button> </a><button type="submit">View</button>
  </div>
</div></c1:forEach>


<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/2.jpg"> --%>
<%--     <img src="${img}/2.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/3.jpg"> --%>
<%--     <img src="${img}/3.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/4.jpg"> --%>
<%--     <img src="${img}/4.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/5.jpg"> --%>
<%--     <img src="${img}/5.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/6.jpg"> --%>
<%--     <img src="${img}/6.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/7.jpg"> --%>
<%--     <img src="${img}/7.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/9..jpg"> --%>
<%--     <img src="${img}/9..jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/10.jpg"> --%>
<%--     <img src="${img}/10.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/11.jpg"> --%>
<%--     <img src="${img}/11.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/12.jpg"> --%>
<%--     <img src="${img}/12.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/13.jpg"> --%>
<%--     <img src="${img}/13.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/14.jpg"> --%>
<%--     <img src="${img}/14.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/15.jpg"> --%>
<%--     <img src="${img}/15.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/16.jpg"> --%>
<%--     <img src="${img}/16.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/17.jpg"> --%>
<%--     <img src="${img}/17.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/18.jpg"> --%>
<%--     <img src="${img}/18.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/19.jpg"> --%>
<%--     <img src="${img}/19.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/20.jpg"> --%>
<%--     <img src="${img}/20.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/21.jpg"> --%>
<%--     <img src="${img}/21.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/22.jpg"> --%>
<%--     <img src="${img}/22.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/23.jpg"> --%>
<%--     <img src="${img}/23.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/24.jpg"> --%>
<%--     <img src="${img}/24.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/25.jpg"> --%>
<%--     <img src="${img}/25.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

</body>

</html>
