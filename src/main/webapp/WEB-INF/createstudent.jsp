<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 07/05/2023
  Time: 23:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="k" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create student</title>
</head>
<body>
<h1>Hellow there create new student here</h1>
<%--creating the error message and successfull messange--%>
<k:if test="${s != null}">
    <p>
        <span style="color: green">${s}</span>
    </p>
</k:if>
<k:if test="${f != null} != null">
    <p style="color: red">${f}</p>
</k:if>
${success}
<form action="createstudent.php?page=createstudent" method="post">
    <input placeholder="Enter your full name" name="fullName"  required type="text">
    <input type="date" placeholder="Date of Birth" name="birth" required>
    <input type="text" placeholder="Phone number" name="phone" required>
    <input type="text" placeholder="True / False" name="inter" required>
    <input type="text" placeholder="True / False" name="part" required>
    <input type="text" placeholder="True / False" name="repeat" required>
    <input type="submit" value="Create Student">
</form>
</body>
</html>
