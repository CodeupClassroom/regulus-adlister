<%--
  Created by IntelliJ IDEA.
  User: jayarredondo
  Date: 2/4/22
  Time: 9:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp"/>
    <title>Login</title>
</head>
<body>
<%--<%--%>

<%--    if(request.getMethod().equalsIgnoreCase("POST")) {--%>
<%--        if(request.getParameter("username").equals("admin") && request.getParameter("password").equals("password")) {--%>
<%--            response.sendRedirect("/profile.jsp");--%>
<%--        } else {--%>
<%--            response.sendRedirect("/login.jsp");--%>
<%--        }--%>
<%--    }--%>
<%--%>--%>
<jsp:include page="partials/navbar.jsp" />
<div class="container">
<form method="POST" action="/login.jsp">
    <div class="form-group">
        <label for="username">Email address</label>
        <input type="text" class="form-control" id="username" name="username">
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input type="password" class="form-control" id="password" name="password">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>

    <c:choose>
        <c:when test='${param.username.equals("admin") && param.password.equals("password")}'>
            <% response.sendRedirect("/profile.jsp"); %>
        </c:when>
    </c:choose>
</div>
<jsp:include page="partials/scripts.jsp"/>
</body>
</html>
