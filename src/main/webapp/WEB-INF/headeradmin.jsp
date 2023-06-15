<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%--<link rel="stylesheet" href="cssfile.css" type="text/css" />--%>
    <link rel="stylesheet" href="../main.css" typpe="text/css">
	<title>${param.title}</title>
</head>
<body>
         <c:if test="${authenticatedUser !=null}">
<%--					<b>--%>
<%--						<a href="listuser.php?page=profile&&id=${authenticatedUser.id}"><button>Profile</button></a>--%>
<%--						<img src="../images/new.jpg" alt="user photo" />--%>
<%--						<div class="ndetail">--%>
<%--							<p class="np">${authenticatedUser.fullName}</p>--%>
<%--							<p class="nsmall">${authenticatedUser.userRole}</p>--%>
<%--						</div>--%>
<%--						| <a href="login.php?logout=logout"><p class="nout">Logout</p></a>--%>
<%--					</b>--%>
			      <%@ include file="menu.jsp"%>
				</c:if>

				<c:if test="${authenticatedUser == null}">
					<div class="menu" align="left">
						<a href="login.php?"><p class="nout">Login</p></a> |
					</div>
				</c:if>
			</div>

		</div>


	</body>

