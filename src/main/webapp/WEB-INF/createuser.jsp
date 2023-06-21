<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<%--<jsp:include page="headeradmin.jsp"><jsp:param--%>
<%--		name="title" value="Create User" />--%>
<%--</jsp:include>--%>
<%--<div id="middle">--%>
<%--		<h2 style="text-align: left;">--%>
<%--			<b>Enter User Details</b>--%>
<%--		</h2>--%>
<%--		<form action="createuser.php?page=createuser" method="post">--%>
<%--			<table>--%>
<%--				<tr>--%>
<%--					<td align="right"><b><t:field mandatory="yes"--%>
<%--								text="Username"></t:field></b></td>--%>
<%--					<td align="left"><input type="text" size="25" maxlength="50"--%>
<%--						name="username" id="username" /></td>--%>
<%--				</tr>--%>
<%--				<tr>--%>
<%--					<td align="right"><b><t:field mandatory="yes"--%>
<%--								text="Password"></t:field></b></td>--%>
<%--					<td align="left"><input type="password" size="25"--%>
<%--						maxlength="50" name="password" id="password" /></td>--%>
<%--				</tr>--%>
<%--				<tr>--%>
<%--					<td align="right"><b>User Full Name</b></td>--%>
<%--					<td align="left"><input type="text" size="50" maxlength="50"--%>
<%--						name="userfullname" id="userfullname" /></td>--%>
<%--				</tr>--%>
<%--				<tr>--%>
<%--					<td align="right"><b>Email</b></td>--%>
<%--					<td align="left"><input type="text" size="50" maxlength="50"--%>
<%--						name="email" id="email" /></td>--%>
<%--				</tr>--%>
<%--				<tr>--%>
<%--					<td align="right"><b>Role</b></td>--%>
<%--					<td><select name="userRole" id="userRole">--%>
<%--							<option value="">Select Role</option>--%>
<%--							<c:forEach items="${userRoles}" var="userrole"--%>
<%--								varStatus="userrolestatus">--%>
<%--								<option value="${userrole}">--%>
<%--									<c:out value="${userrole.getRoleDescription()}" />--%>
<%--								</option>--%>
<%--							</c:forEach>--%>
<%--					</select></td>--%>
<%--				</tr>--%>
<%--				<tr>--%>
<%--					<td align="right">&nbsp;</td>--%>
<%--					<td align="left"><input type="submit" name="saveDataUser"--%>
<%--						value="Create User" /></td>--%>
<%--				</tr>--%>
<%--			</table>--%>
<%--		</form>--%>
<%--</div>--%>
<%--<%@ include file="footer.jsp"%>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>RCA SMIS</title>--%>
<%--    <link rel="preconnect" href="https://fonts.googleapis.com">--%>
<%--    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>--%>
<%--    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500&display=swap" rel="stylesheet">--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container">--%>
<%--    <img src="https://media.licdn.com/dms/image/C560BAQEl6a9tUkSKfg/company-logo_200_200/0/1558604414993?e=2147483647&amp;v=beta&amp;t=liCSw94UkEjwbMZZh8N23ZMYixEAMmZNq2IftvsF97Y"--%>
<%--         alt="LinkedIn Logo">--%>
<%--    <h2>Sign In</h2>--%>
<%--    <p>Welcome to RCA SMIS.Please enter your details.</p>--%>
<%--<c:if test="${error != null}">--%>
<%--					<p>--%>
<%--						<span style="color: red"> ${error}</span>--%>
<%--					</p>--%>
<%--			</c:if>--%>
<%--    <c:if test="${success != null}">--%>
<%--        <p>--%>
<%--            <span style="color: green"> ${success}</span>--%>
<%--        </p>--%>
<%--    </c:if>--%>
<%--    --%>
<%--    <form  action="createuser.php?page=createuser" method="post">--%>
<%--        <input type="text" placeholder="Username" required name="username">--%>
<%--        <input type="text" placeholder="Email" required name="email">--%>
<%--        <input type="text" placeholder="Fullname" required name="userfullname">--%>
<%--        <select name="userRole">--%>
<%--            <option>Select Role</option>--%>
<%--            <c:forEach items="${userRoles}" var="userrole">--%>
<%--                varStatus="userrolestatus"--%>
<%--                <option value="${userrole}">--%>
<%--                    <c:out value="${userrole.getRoleDescription()}"/>--%>
<%--                </option>--%>
<%--            </c:forEach>--%>
<%--        </select>--%>
<%--        <input type="password" placeholder="Password" required name="password">--%>
<%--        <input type="submit" value="Sign Up">--%>
<%--        <p>Already have an account <span><a href="login.php?page=login"> Sign in</a>	</span></p>--%>
<%--    </form>--%>

<%--</div>--%>
<%--</body>--%>
<%--</html>--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- font awesame -->
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <title>Sign up</title>
    <link rel="stylesheet" href="../../sass/css/main.css">
</head>
<body>
<div class="container">
    <div class="Lleft">
        <div class="Lmain">

            <div class="log">
                <img src="../images/logo2.png" alt="logo">
            </div>

            <h1>Rwanda Coding Academy Student Management System</h1>
            <p class="small">Welcome back</p>
            <div class="lform">
                <form action="createuser.php?page=createuser" method="post" class="form">
                    <input type="text" placeholder="Enter your username" class="input" name="username" required>
                    <input type="text" placeholder="Enter your full name" class="input" name="userfullname" required>
                    <input type="email" placeholder="Enter your email" class="input" name="email" required>
                    <div class="select-container">
                        <select class="select-box" name="userRole">
                            <option value="value">Select Role</option>
                            <c:forEach items="${userRoles}" var="userrole">

                                 <option value="${userrole}">
                                   <c:out value="${userrole.getRoleDescription()}"/>
                                 </option>

                            </c:forEach>
                        </select>
                        <div class="icon1">
                            <i class="fa-solid fa-caret-down"></i>
                        </div>
                    </div>
                    <input type="password" placeholder="Password" required name="password" class="input">

                    <button class="btn">Sign up</button>

                </form>
                <p class="allr">Already have an account?<a href="login.php?page=login" class="llink">Sign in</a> </p>
            </div>
        </div>

    </div>

    <!-- right side start here -->
    <div class="Lright">
        <div class="overlay">
            <div class="ovhead">
                <h2>Leading through digital Innovation</h2>
            </div>
            <div class="ovdown">
                <p>This system management system is only for instructors , parents , students and discpline staff we welcome to this system</p>
            </div>
        </div>

    </div>

</div>
</body>
</html>