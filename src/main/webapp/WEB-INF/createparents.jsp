<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 08/05/2023
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>RCA SMIS</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500&display=swap" rel="stylesheet">
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
<div class="container">
    <img src="https://media.licdn.com/dms/image/C560BAQEl6a9tUkSKfg/company-logo_200_200/0/1558604414993?e=2147483647&amp;v=beta&amp;t=liCSw94UkEjwbMZZh8N23ZMYixEAMmZNq2IftvsF97Y"
         alt="LinkedIn Logo">
    <h2>Sign In</h2>
    <p>Welcome to RCA SMIS.Please enter your details.</p>
    <c:if test="${error != null}">
        <p>
            <span style="color: red"> ${error}</span>
        </p>
    </c:if>
    <c:if test="${success != null}">
        <p>
            <span style="color: green"> ${success}</span>
        </p>
    </c:if>

    <form  action="createparents.php?page=createparents" method="post">

        <input type="text" placeholder="Full name" required  name="name">
        <input type="date" placeholder="Birth" required  name="birth">
        <input type="text" placeholder="phone number" required  name="phone">
        <input type="text" placeholder="Student number" required  name="st_number">
        <input type="submit" value="Sign Up">

        <p>Already have an account <span><a href="login.php?page=login"> Sign in</a>	</span></p>
    </form>

</div>
</body>
</html>