<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Create new User</title>
</head>
<body>
<form method="post" action="/users">
    <%-- method - с каким http-методом будет отправляться эта форма --%>
    <%-- action - на какой адрес эта форма будет обращаться, куда она будет передавать данные --%>
    Name: <input type="text" name="firstName">
    <br/>
    Last Name: <input type="text" name="lastName">
    <br/>
    Age: <input type="text" name="age">
    <br/>
    Email: <input type="text" name="email">
    <br/>
    <input type="submit" value="Create">
</form>
</body>
</html>
