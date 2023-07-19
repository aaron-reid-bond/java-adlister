<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<main>
    <form action="login.jsp" method="post">
        <label for="username">Username: </label>
        <input type="text" name="username" id="username">
        <label for="password">Password: </label>
        <input type="password" name="password" id="password">
        <input type="submit" value="submit" name="submit">
    </form>

    <c:if test="${param.submit != null}">
        <c:choose>
            <c:when test="${param.username == 'admin' && param.password == 'password'}">
                <% response.sendRedirect("/profile.jsp"); %>
            </c:when>
            <c:otherwise>
                <% response.sendRedirect("/login.jsp"); %>
            </c:otherwise>
        </c:choose>
    </c:if>
</main>
</body>
</html>