<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title><spring:message code="app.title.searchById"/></title>
</head>
<body>
<p><spring:message code="app.page.body.id"/>: ${user.id}</p>
<p><spring:message code="app.page.body.name"/>: ${user.firstName}</p>
<p><spring:message code="app.page.body.lastName"/>: ${user.lastName}</p>
<p><spring:message code="app.page.body.age"/>: ${user.age}</p>
<p><spring:message code="app.page.body.email"/>: ${user.email}</p>

<a href="/users/${user.id}/edit"><spring:message code="app.page.body.link.edit"/></a>

<form method="get" action="/users/delete/${user.id}">
    <%-- method - с каким http-методом будет отправляться эта форма --%>
    <%-- action - на какой адрес эта форма будет обращаться, куда она будет передавать данные --%>
    <input type="submit" value="<spring:message code="app.page.body.submit.delete"/>">
</form>

</body>
</html>
