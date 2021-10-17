<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title><spring:message code="app.title.new"/></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js">
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

<form method="post" action="/users">
    <div class="mb-3">
        <label for="exampleInputFirstName1" class="form-label"><spring:message code="app.page.body.firstName"/></label>
        <input type="text" class="form-control" id="exampleInputFirstName1" name="firstName">
    </div>
    <div class="mb-3">
        <label for="exampleInputLastName1" class="form-label"><spring:message code="app.page.body.lastName"/></label>
        <input type="text" class="form-control" id="exampleInputLastName1" name="lastName">
    </div>
    <div class="mb-3">
        <label for="exampleAge1" class="form-label"><spring:message code="app.page.body.age"/></label>
        <input type="text" class="form-control" id="exampleAge1" name="age">
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label"><spring:message code="app.page.body.email"/></label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
    </div>
    <button type="submit" class="btn btn-primary"><spring:message code="app.page.body.submit.create"/></button>
    </div>
</form>

</body>
</html>
