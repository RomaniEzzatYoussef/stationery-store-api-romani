<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<body>

<h2>Stationery Store APIs Backend</h2>

<hr>
<div style="margin: 25px" class="bar">
    <h3>Browsing App</h3>
    <hr>
    <a href="${pageContext.request.contextPath}/api/offer">Get Offer</a><br>
    <a href="${pageContext.request.contextPath}/api/category/1/products">Get Category Products</a><br>
    <a href="${pageContext.request.contextPath}/api/grade/levels">Get All Grade Levels</a><br>
    <a href="${pageContext.request.contextPath}/api/grade/level/2">Get Grades By Grade Level</a><br>
    <a href="${pageContext.request.contextPath}/api/grade/2/products">Get Products By Grade</a><br>
    <a href="${pageContext.request.contextPath}/api/product/bestseller?limit=6">Get bestSellers</a><br>
    <a href="${pageContext.request.contextPath}/api/category">Get categories</a><br>
    <a href="${pageContext.request.contextPath}/api/product/1">Get Product By Id</a><br>
    <a href="${pageContext.request.contextPath}/api/search?keyWord=q">Search By Product Name Or Category Name</a><br>
    <hr>

    <h3>Return count of Pagination</h3>
    <hr>
    <a href="${pageContext.request.contextPath}/api/category/count">Category Count</a><br>
    <a href="${pageContext.request.contextPath}/api/offer/count">Offer Count</a><br>
    <a href="${pageContext.request.contextPath}/api/category/1/products/count">Category Products Count</a><br>
    <a href="${pageContext.request.contextPath}/api/search/count?keyWord=q">Search Count</a><br>
    <hr>

    <h3>Register & OAuth2 Authentication and Authorization</h3>
    <hr>
    <a href="${pageContext.request.contextPath}/api/user">post/user: User Register</a>
    <hr>

    <h3>User Info</h3>
    <hr>
    <a href="${pageContext.request.contextPath}/auth/users">Get All users</a><br>
    <a href="${pageContext.request.contextPath}/auth/user/current?access_token=fab1c082-0983-4df7-ab62-2a6a72e4663a">Get Current User</a><br>
    <a href="${pageContext.request.contextPath}/auth/user/1">Get User By ID</a>
    <hr>

    <h3>User Editing</h3>
    <hr>
    <a href="${pageContext.request.contextPath}/auth/user">patch/user: update User</a>
    <hr>

    <h3>User Cart</h3>
    <hr>
    <a href="${pageContext.request.contextPath}/auth/cart">Get User Cart</a> <br>
    <a href="${pageContext.request.contextPath}/auth/cart">Post User Cart</a> <br>
    <a href="${pageContext.request.contextPath}/auth/cart/cartItem/1">Delete User CartItem with ID</a> <br>
    <a href="${pageContext.request.contextPath}/auth/cart/cartItem/1">Update User CartItem with ID</a> <br>
    <hr>

    <h3>User Order</h3>
    <hr>
    <a href="${pageContext.request.contextPath}/auth/order">Post User Order</a> <br>
    <a href="${pageContext.request.contextPath}/auth/order/1">Get Order By ID</a> <br>
    <a href="${pageContext.request.contextPath}/auth/order/current">Get Current Order For Current User</a> <br>
    <hr>

    <h3>User Logout</h3>
    <hr>
    <a href="${pageContext.request.contextPath}/auth/logout">Post User Logout</a> <br>
    <hr>

</div>

</body>
</html>