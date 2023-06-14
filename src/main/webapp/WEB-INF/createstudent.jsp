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
    <style>
        body {
            background-color: #f2f2f2;
        }

        .container {
            margin: 50px auto;
            margin-top: 10%;
            width: 400px;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
            position: relative;
            justify-content: center;
            display: flex;
            flex-direction: column;
        }

        .container img {
            position: absolute;
            top: -50px;
            left: 50%;
            transform: translateX(-50%);
            width: 100px;
            height: 100px;
            border-radius: 50%;
            background-color: #ffffff;
            padding: 5px;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
        }

        h2 {
            text-align: center;
            color: #333333;
            font-family: 'Quicksand', sans-serif;
        }

        p, a {
            text-align: center;
            font-family: 'Quicksand', sans-serif;
            text-decoration: none;
        }

        input[type="text"], input[type="password"] {
            width: 93%;
            padding: 10px;
            margin-bottom: 20px;
            border: none;
            border-radius: 5px;
            background-color: #f2f2f2;
            color: #333333;
            font-size: 16px;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #29375A;
            color: #ffffff;
            font-size: 16px;
            cursor: pointer;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
        }

        select {
            width: 98%;
            padding: 10px;
            margin-bottom: 20px;
            border: none;
            border-radius: 5px;
            background-color: #f2f2f2;
            color: #333333;
            font-size: 16px;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
        }

        option {
            color: #333333;
        }

    </style>
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
