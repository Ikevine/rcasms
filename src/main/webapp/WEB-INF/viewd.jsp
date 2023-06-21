<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 21/06/2023
  Time: 23:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="indesc">
    <input type="text" class="input" value="${exist.address.country}" name="country">
    <input type="text" class="input" value="${exist.address.city}" name="city">
</div>
<div class="indesc">
    <input type="text" class="input" value="${exist.address.streetAddress}" name="street">
    <input type="text" class="input" value="${exist.address.postalCode}" name="postal">
</div>
</body>
</html>
