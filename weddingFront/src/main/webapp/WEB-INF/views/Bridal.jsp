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
  <a target="_blank" href="${img}/a1.jpg">
    <img src="${img}/${prod.getPrdid()}.jpg" alt="image" width="300" height="300">
  </a><h3>${prod.getPrdDes()}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   ${prod.getPrice()}</h3>
  <div class="desc"><a href="<c:url value="/addtocart/${prod.getPrdid()}"/>"><button type="submit">Add to cart</button> <button type="submit">Buy</button>
  </div>
</div></c1:forEach>

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a2.jpg"> --%>
<%--     <img src="${img}/a2.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a3.jpg"> --%>
<%--     <img src="${img}/a3.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a4.jpg"> --%>
<%--     <img src="${img}/a4.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a5.jpg"> --%>
<%--     <img src="${img}/a5.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a6.jpg"> --%>
<%--     <img src="${img}/a6.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a7.jpg"> --%>
<%--     <img src="${img}/a7.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a8.jpg"> --%>
<%--     <img src="${img}/a8.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a9.jpg"> --%>
<%--     <img src="${img}/a9.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a10.jpg"> --%>
<%--     <img src="${img}/a10.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a11.jpg"> --%>
<%--     <img src="${img}/a11.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a12.jpg"> --%>
<%--     <img src="${img}/a12.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a13.jpg"> --%>
<%--     <img src="${img}/a13.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a14.jpg"> --%>
<%--     <img src="${img}/a14.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a15.jpg"> --%>
<%--     <img src="${img}/a15.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a16.jpg"> --%>
<%--     <img src="${img}/a16.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a17.jpg"> --%>
<%--     <img src="${img}/a17.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a18.jpg"> --%>
<%--     <img src="${img}/a18.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a19.jpg"> --%>
<%--     <img src="${img}/a19.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a20.jpg"> --%>
<%--     <img src="${img}/a20.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a21.jpg"> --%>
<%--     <img src="${img}/a21.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a22.jpg"> --%>
<%--     <img src="${img}/a22.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a23.jpg"> --%>
<%--     <img src="${img}/a23.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a24.jpg"> --%>
<%--     <img src="${img}/a24.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a25.jpg"> --%>
<%--     <img src="${img}/a25.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a26.jpg"> --%>
<%--     <img src="${img}/a26.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a27.jpg"> --%>
<%--     <img src="${img}/a27.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

<!-- <div class="gallery1"> -->
<%--   <a target="_blank" href="${img}/a28.jpg"> --%>
<%--     <img src="${img}/a28.jpg" alt="image" width="300" height="300"> --%>
<!--   </a> -->
<!--   <div class="desc"><button type="submit">Add to cart</button> <button type="submit">Buy</button> -->
<!--   </div> -->
<!-- </div> -->

</body>
</html>
