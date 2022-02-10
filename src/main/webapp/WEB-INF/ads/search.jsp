<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Search The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <form action="/ads/search" method="get">
        <label for="query">Search Term:</label>
        <input type="text" name="query" id="query">
        <input type="submit" value="Submit Search">
    </form>
    <h1>Here Are all search results for <c:out value="${query}" />!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2><c:out value="${ad.title}" /></h2>
            <p><c:out value="${ad.description}" /></p>
        </div>
    </c:forEach>
</div>

</body>
</html>
