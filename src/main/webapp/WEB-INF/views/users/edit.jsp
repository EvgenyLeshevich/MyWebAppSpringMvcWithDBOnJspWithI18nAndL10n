<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title><spring:message code="app.title.edit"/></title>
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

<form method="post" action=/users/${user.id}>
    <div class="mb-3">
        <label for="exampleInputFirstName1" class="form-label"><spring:message code="app.page.body.firstName"/></label>
        <input type="text" class="form-control" id="exampleInputFirstName1" name="firstName" value="${user.firstName}">
    </div>
    <div class="mb-3">
        <label for="exampleInputLastName1" class="form-label"><spring:message code="app.page.body.lastName"/></label>
        <input type="text" class="form-control" id="exampleInputLastName1" name="lastName" value="${user.lastName}">
    </div>
    <div class="mb-3">
        <label for="exampleAge1" class="form-label"><spring:message code="app.page.body.age"/></label>
        <input type="text" class="form-control" id="exampleAge1" name="age" value="${user.age}">
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label"><spring:message code="app.page.body.email"/></label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" value="${user.email}">
        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
    </div>
    <button type="submit" class="btn btn-primary"><spring:message code="app.page.body.submit.update"/></button>
    </div>
</form>


</body>
</html>
