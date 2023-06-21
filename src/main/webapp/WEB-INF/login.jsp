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
<div class="login">
  <%--		left side--%>
		<div class="left">
      <%-- top left	--%>
           <div class="login-tl">
			   <div class="log-conta">
				   <img src="../images/logo2.png" href="Logo">
			   </div>
			   <h1 class="h1">Rwanda Coding Academy Student Management System</h1>
			   <small class="small">Welcome back</small>
		   </div>
	  <%-- form start here--%>
			<form action="login.php" method="post" class="form">
                <c:if test="${error != null}">
    			   <p style="color: red">${error}</p>
    	        </c:if>
				<input type="text" placeholder="Enter your name" name="username" class="input">
				<input type="password" placeholder="Enter your Password" name="password" class="input">
				<input type="submit" class="btn-primary" value="Create Account" />
			</form>
			<p class="p">Don't have account? <a href="createuser.php?page=createuser" class="anl">Sign up</a></p>
		</div>
	<%--	right side--%>
		<div class="right">

			<div class="overl">
				<div class="expll">
					<h1 class="h12">Leading through Technical Innovation</h1>
					<div class="middle">
						<p class="white">We are school of young talend kid who want to bring new innovation in tech as well as in rwanda</p>
					</div>
					<%--explaining this--%>
					<p class="exp2">This system management system is only for instructors , parents , students and discpline staff we welcome to this system</p>
				</div>
			</div>

		</div>
</div>

<%----%>
</body>
</html>

