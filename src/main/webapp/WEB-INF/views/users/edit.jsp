<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title><spring:message code="app.title.edit"/></title>
</head>
<body>
<form method="post" action=/users/${user.id}>
    <%-- method - с каким http-методом будет отправляться эта форма --%>
    <%-- action - на какой адрес эта форма будет обращаться, куда она будет передавать данные --%>
        <spring:message code="app.page.body.name"/>: <input type="text" name="firstName" value="${user.firstName}">
    <br/>
        <spring:message code="app.page.body.lastName"/>: <input type="text" name="lastName" value="${user.lastName}">
    <br/>
        <spring:message code="app.page.body.age"/>: <input type="text" name="age" value="${user.age}">
    <br/>
        <spring:message code="app.page.body.email"/>: <input type="text" name="email" value="${user.email}">
    <br/>
    <input type="submit" value=<spring:message code="app.page.body.submit.update"/>>
</form>
</body>
</html>
