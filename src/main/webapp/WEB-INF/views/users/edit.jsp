<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Update User</title>
</head>
<body>
<form method="post" action=/users/${user.id}>
    <%-- method - с каким http-методом будет отправляться эта форма --%>
    <%-- action - на какой адрес эта форма будет обращаться, куда она будет передавать данные --%>
    Name: <input type="text" name="firstName" value="${user.firstName}">
    <br/>
    Last Name: <input type="text" name="lastName" value="${user.lastName}">
    <br/>
    Age: <input type="text" name="age" value="${user.age}">
    <br/>
    Email: <input type="text" name="email" value="${user.email}">
    <br/>
    <input type="submit" value="Update">
</form>
</body>
</html>
