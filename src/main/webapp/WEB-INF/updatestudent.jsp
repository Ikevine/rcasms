<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 14/05/2023
  Time: 19:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<k:if test="${s != null}">
    <p>
        <span style="color: green">${s}</span>
    </p>
</k:if>
<k:if test="${f != null} != null">
    <p style="color: red">${f}</p>
</k:if>
${success}
<form action="updatestudent.php?page=updatestudent&&${exist.id}" method="post">
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
