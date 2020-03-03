<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<body>

<h3>Stationery Store APIs Backend</h3>

<hr>
<div style="margin: 25px" class="bar">
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
    <hr> <br>
    <hr>
    <a href="${pageContext.request.contextPath}/api/category/count">Category Count</a><br>
    <a href="${pageContext.request.contextPath}/api/offer/count">Offer Count</a><br>
    <a href="${pageContext.request.contextPath}/api/category/1/products/count">Category Products Count</a><br>
    <a href="${pageContext.request.contextPath}/api/search/count?keyWord=q">Search Count</a><br>
    <hr> <br>
    <hr>
    <a href="${pageContext.request.contextPath}/auth/users">Get All users</a><br>
    <a href="${pageContext.request.contextPath}/auth/user/current">Get Current User</a><br>
    <a href="${pageContext.request.contextPath}/auth/user/1">Get User By ID</a><br>
    <hr>

</div>

<hr>
<hr>

<!-- display user name and role -->

<%--<p>--%>
<%--    User: <security:authentication property="principal.username" />--%>
<%--    <br><br>--%>
<%--    Role(s): <security:authentication property="principal.authorities" />--%>
<%--</p>--%>

<hr>
<hr>
<%--<div style="margin: 25px">--%>
<%--    <form:form action="${pageContext.request.contextPath}/logout" >--%>
<%--        <input type="submit" value="Logout" />--%>
<%--    </form:form>--%>
<%--</div>--%>
<hr>

</body>
</html>