<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>User</title>
</head>
<body>
<p>Id: ${user.id}</p>
<p>Name: ${user.firstName}</p>
<p>First Name: ${user.lastName}</p>
<p>Age: ${user.age}</p>
<p>Email: ${user.email}</p>

<a href="/users/${user.id}/edit">Edit</a>

<form method="get" action="/users/delete/${user.id}">
    <%-- method - с каким http-методом будет отправляться эта форма --%>
    <%-- action - на какой адрес эта форма будет обращаться, куда она будет передавать данные --%>
    <input type="submit" value="Delete">
</form>

</form>
</body>
</html>
