<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<%--<jsp:include page="headerlogin.jsp">--%>
<%--	<jsp:param value="Login page" name="title" />--%>
<%--</jsp:include>--%>

<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--	<title>RCA SMIS</title>--%>
<%--	<link rel="preconnect" href="https://fonts.googleapis.com">--%>
<%--	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>--%>
<%--	<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500&display=swap" rel="stylesheet">--%>
<%--	<link rel="stylesheet" href="../main.css">--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="login">--%>
<%--  &lt;%&ndash;		left side&ndash;%&gt;--%>
<%--		<div class="left">--%>
<%--      &lt;%&ndash; top left	&ndash;%&gt;--%>
<%--           <div class="login-tl">--%>
<%--			   <div class="log-conta">--%>
<%--				   <img src="../images/logo2.png" href="Logo">--%>
<%--			   </div>--%>
<%--			   <h1 class="h1">Rwanda Coding Academy Student Management System</h1>--%>
<%--			   <small class="small">Welcome back</small>--%>
<%--		   </div>--%>
<%--	  &lt;%&ndash; form start here&ndash;%&gt;--%>
<%--			<form action="login.php" method="post" class="form">--%>
<%--                <c:if test="${error != null}">--%>
<%--    			   <p style="color: red">${error}</p>--%>
<%--    	        </c:if>--%>
<%--				<input type="text" placeholder="Enter your name" name="username" class="input">--%>
<%--				<input type="password" placeholder="Enter your Password" name="password" class="input">--%>
<%--				<input type="submit" class="btn-primary" value="Create Account" />--%>
<%--			</form>--%>
<%--			<p class="p">Don't have account? <a href="createuser.php?page=createuser" class="anl">Sign up</a></p>--%>
<%--		</div>--%>
<%--	&lt;%&ndash;	right side&ndash;%&gt;--%>
<%--		<div class="right">--%>

<%--			<div class="overl">--%>
<%--				<div class="expll">--%>
<%--					<h1 class="h12">Leading through Technical Innovation</h1>--%>
<%--					<div class="middle">--%>
<%--						<p class="white">We are school of young talend kid who want to bring new innovation in tech as well as in rwanda</p>--%>
<%--					</div>--%>
<%--					&lt;%&ndash;explaining this&ndash;%&gt;--%>
<%--					<p class="exp2">This system management system is only for instructors , parents , students and discpline staff we welcome to this system</p>--%>
<%--				</div>--%>
<%--			</div>--%>

<%--		</div>--%>
<%--</div>--%>

<%--&lt;%&ndash;&ndash;%&gt;--%>
<%--</body>--%>
<%--</html>--%>


<%--start login here--%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>RCA SMS</title>
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
				<form action="login.php" method="post" class="form">
					<input type="text" placeholder="Enter your username" class="input" name="username" required>
					<input type="password" placeholder="Enter your password" class="input" name="password" required>
					<button class="btn">Sign in</button>
				</form>
				<p class="allr">Don't have an account? <a href="createuser.php?page=createuser" class="llink">Sign up</a> </p>
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
