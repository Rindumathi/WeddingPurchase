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
  <a target="_blank" href="${img}/c1.jpg">
    <img src="${img}/${prod.getPrdid()}.jpg" alt="image" width="300" height="300">
  </a><h3>${prod.getPrdDes()}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   ${prod.getPrice()}</h3>
  <div class="desc"><a href="<c:url value="/addtocart/${prod.getPrdid()}"/>"><button type="submit">Add to cart</button> <button type="submit">Buy</button>
  </div>
</div></c1:forEach>

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c2.jpg"> --%>
<%--     <img src="${img}/c2.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c3.jpg"> --%>
<%--     <img src="${img}/c3.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c4.jpg"> --%>
<%--     <img src="${img}/c4.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c5.jpg"> --%>
<%--     <img src="${img}/c5.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c6.jpg"> --%>
<%--     <img src="${img}/c6.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c7.jpg"> --%>
<%--     <img src="${img}/c7.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c8.jpg"> --%>
<%--     <img src="${img}/c8.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c9.jpg"> --%>
<%--     <img src="${img}/c9.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c10.jpg"> --%>
<%--     <img src="${img}/c10.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c11.jpg"> --%>
<%--     <img src="${img}/c11.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c12.jpg"> --%>
<%--     <img src="${img}/c12.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c13.jpg"> --%>
<%--     <img src="${img}/c13.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c14.jpg"> --%>
<%--     <img src="${img}/c14.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c15.jpg"> --%>
<%--     <img src="${img}/c15.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c16.jpg"> --%>
<%--     <img src="${img}/c16.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c17.jpg"> --%>
<%--     <img src="${img}/c17.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c18.jpg"> --%>
<%--     <img src="${img}/c18.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c19.jpg"> --%>
<%--     <img src="${img}/c19.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c20.jpg"> --%>
<%--     <img src="${img}/c20.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c21.jpg"> --%>
<%--     <img src="${img}/c21.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c22.jpg"> --%>
<%--     <img src="${img}/c22.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c23.jpg"> --%>
<%--     <img src="${img}/c23.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c24.jpg"> --%>
<%--     <img src="${img}/c24.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c25.jpg"> --%>
<%--     <img src="${img}/c25.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c26.jpg"> --%>
<%--     <img src="${img}/c26.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c27.jpg"> --%>
<%--     <img src="${img}/c27.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/c28.jpg"> --%>
<%--     <img src="${img}/c28.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->



</body>
</html>
