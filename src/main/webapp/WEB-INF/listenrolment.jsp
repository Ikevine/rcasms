<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 08/05/2023
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="k" %>
<html>
<head>
    <title>Enrolment</title>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        thead{
            background-color: #008dd4;
            color: white;
            font-family: 'Quicksand', sans-serif;
            font-weight: bold;
        }
    </style>
</head>
<body>
<table>
    <thead>
    <tr>
        <td>id</td>
        <td>Names</td>
        <td>Codes</td>

    </tr>
    </thead>
    <tbody>
    <k:forEach items="${enroLevelist}" var="el" varStatus="enrol">
        <tr>
            <td>${el.id}</td>
            <td>${el.name}</td>
            <td>${el.code}</td>

            <td>
                <a href="/updatestudent.php/id=${el.id}">Update student</a>
                <a href="/deletestudent.php/id=${el.id}">Delete student</a>
            </td>
            <td>
                <input type="button" value="view more">
            </td>
        </tr>
    </k:forEach>
    </tbody>
</table>
</body>
</html>

