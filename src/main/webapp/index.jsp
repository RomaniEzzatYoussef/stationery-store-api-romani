<html>
<body>

<h1>Stationery APIs Demo</h1>

<hr>

<a href="${pageContext.request.contextPath}/api/users">Get All users</a><br>
<a href="${pageContext.request.contextPath}/api/product/bestseller?limit=2">Get bestSellers</a><br>
<a href="${pageContext.request.contextPath}/api/category">Get categories</a><br>
<a href="${pageContext.request.contextPath}/api/category?limit=5">Get categories with limit</a><br>

<div style="margin: 25px" class="bar">
    <a href="${pageContext.request.contextPath}/api/offer">Get Offer</a><br>
    <a href="${pageContext.request.contextPath}/api/category/1/products">Get Category Products</a><br>
    <a href="${pageContext.request.contextPath}/api/grade/levels">Get All Grade Levels</a><br>
    <a href="${pageContext.request.contextPath}/api/grade/level/2">Get Grades By Grade Level</a><br>
    <a href="${pageContext.request.contextPath}/api/grade/2/products">Get Products By Grade</a><br>
</div>

</body>
</html>