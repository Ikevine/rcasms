<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%--<jsp:include page="headerlogin.jsp">--%>
<%--	<jsp:param value="Login page" name="title" />--%>
<%--</jsp:include>--%>

<!DOCTYPE html>
<html>
<head>
	<title>RCA SMIS</title>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="../main.css">
</head>
<body>
<%--<div class="container">--%>
<%--	<img src="https://media.licdn.com/dms/image/C560BAQEl6a9tUkSKfg/company-logo_200_200/0/1558604414993?e=2147483647&amp;v=beta&amp;t=liCSw94UkEjwbMZZh8N23ZMYixEAMmZNq2IftvsF97Y" alt="LinkedIn Logo">--%>
<%--	<h2>Sign In</h2>--%>
<%--	<p>Welcome to RCA SMIS.Please enter your details.</p>--%>
<%--	<c:if test="${error != null}">--%>
<%--			<p style="color: red">${error}</p>--%>
<%--	</c:if>--%>
<%--	<form action="login.php" method="post">--%>
<%--		<input type="text" placeholder="Username" required name="username">--%>
<%--		<input type="password" placeholder="Password" required name="password">--%>
<%--		<input type="submit" value="Sign In">--%>
<%--		<p>Create an account <span><a href="createuser.php?page=createuser"> Sign up</a></span></p>--%>

<%--	</form>--%>
<%--</div>--%>
<%--<%@ include file="footerlogin.jsp"%>--%>

<%--//starting of login form--%>
<div class="login">
		left side
		<div class="left">
			<div class="iden">
				<img src="../images/logo.jpg" alt="logo image" class="logo">
				<h1 class="h1">Rwanda Coding Academy Student Management System</h1>
				<p class="small">Welcome</p>
			</div>
			<form>
				<input type="text" placeholder="Enter your username" class="inpu">
				<input type="password" placeholder="Enter your password" class="inpu">
				<button class="btn-primary">Create Account</button>
			</form>
			<div class="bottom-form">
				<p class="small">Already have an account? <a href="#" class="form-a">Sign up</a></p>
			</div>
		</div>
	<%--	right side--%>
		<div class="right">
           <img src="../images/new.jpg" alt="student">
		</div>
</div>

</body>
</html>

