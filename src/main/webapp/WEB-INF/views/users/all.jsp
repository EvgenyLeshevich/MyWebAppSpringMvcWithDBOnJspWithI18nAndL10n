<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title><spring:message code="app.title.all"/></title>
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/js/bootstrap.min.js" />">
    <link rel="stylesheet" href="<c:url value="/resources/js/bootstrap.bundle.min.js" />">

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>

<%--Шапка сайта--%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">Evgeniy</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/"><spring:message code="app.title.home"/></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/users"><spring:message code="app.title.all"/></a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" type="button" id="dropdownMenuButton"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><spring:message code="app.lang.title"/></a>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <li><a class="dropdown-item" href="?lang=ru"><spring:message code="app.lang.russian"/></a></li>
                        <li><a class="dropdown-item" href="?lang=en"><spring:message code="app.lang.english"/></a></li>
                    </ul>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder=<spring:message code="app.page.body.submit.search"/> aria-label="Search">
                <button class="btn btn-outline-success" type="submit"><spring:message code="app.page.body.submit.search"/></button>
            </form>
        </div>
    </div>
</nav>

<div class="panel-body">
    <div class="col-md-offset-1 col-md-10">
    <table class="table caption-top text-center">
        <caption><a class="btn btn-secondary btn-sm" href="/users/new" role="button"><spring:message code="app.page.body.link.create"/></a>  | <spring:message code="app.page.body.listOfUsers"/></caption>
        <tr>
            <th scope="col"><spring:message code="app.page.body.id"/></th>
            <th scope="col"><spring:message code="app.page.body.firstName"/></th>
            <th scope="col"><spring:message code="app.page.body.lastName"/></th>
            <th scope="col"><spring:message code="app.page.body.age"/></th>
            <th scope="col"><spring:message code="app.page.body.email"/></th>
        </tr>
        <c:forEach var="user" items="${users}">
            <tr>
                <th scope="row"><a href="/users/${user.id}">${user.id}</a></th>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td>${user.age}</td>
                <td>${user.email}</td>
            </tr>
        </c:forEach>
    </table>
    </div>
</div>

</body>
</html>
