<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>All Users</title>
</head>
<body>
<c:forEach var="user" items="${users}">
    <p><a href="/users/${user.id}">${user.firstName} ${user.lastName}</a></p>
</c:forEach>

<a href="/users/new">Create new user</a>
</body>
</html>
