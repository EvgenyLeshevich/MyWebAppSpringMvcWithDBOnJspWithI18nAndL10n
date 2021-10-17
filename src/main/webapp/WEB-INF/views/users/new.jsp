<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title><spring:message code="app.title.new"/></title>
</head>
<body>
<form method="post" action="/users">
    <%-- method - с каким http-методом будет отправляться эта форма --%>
    <%-- action - на какой адрес эта форма будет обращаться, куда она будет передавать данные --%>
        <spring:message code="app.page.body.name"/>: <input type="text" name="firstName">
    <br/>
        <spring:message code="app.page.body.lastName"/>: <input type="text" name="lastName">
    <br/>
        <spring:message code="app.page.body.age"/>: <input type="text" name="age">
    <br/>
        <spring:message code="app.page.body.email"/>: <input type="text" name="email">
    <br/>
    <input type="submit" value="<spring:message code="app.page.body.submit.create"/>">
</form>
</body>
</html>
