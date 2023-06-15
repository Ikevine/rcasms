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
<%--<li><a class="idTabs" href="#admin"><img--%>
<%--		src="icons/application_side_expand.png" /> Admin</a>--%>
<%--	<ul class="noJS">--%>

<%--		<li><a href="adduser.php?page=adduser"><img--%>
<%--				src="icons/user_add.png" /> Create User</a></li>--%>

<%--		<li><a href="listuser.php?page=users&&action=list"><img--%>
<%--				src="icons/application_view_list.png" /> List of users</a></li>--%>

<%--		<li><a href="listcourses.php?page=listcourse"><img--%>
<%--				src="icons/application_view_list.png" />List of courses</a></li>--%>
<%--	</ul></li>--%>
<%--<li><a--%>
<%--	href="listemployees.php?page=employees&&user_role=adm&&action=list"><img--%>
<%--		src="icons/application_view_columns.png" /> Courses</a>--%>
<%--		<ul class="noJS">--%>
<%--			<li><a href="createcourse.php?page=createcourse"><img--%>
<%--					src="icons/application_view_list.png" />create courses</a></li>--%>

<%--			<li><a href="listcourses.php?page=listcourse"><img--%>
<%--					src="icons/application_view_list.png" />List of courses</a></li>--%>
<%--		</ul>--%>
<%--</li>--%>

<%--<li><a class="idTabs" href="#students"><img--%>
<%--		src="icons/application_side_expand.png" /> Students</a>--%>
<%--	<ul class="noJS">--%>
<%--		<li><a--%>
<%--				href="createstudent.php?page=students"><img--%>
<%--				src="icons/application_view_list.png" /> Create Student</a></li>--%>
<%--		<li><a--%>
<%--			href="Liststudents.php?page=liststudents"><img--%>
<%--				src="icons/application_view_list.png" />list Students</a></li>--%>
<%--		<li><a--%>
<%--			href="listparents.php?page=parents&&user_role=adm&&action=list"><img--%>
<%--				src="icons/application_view_list.png" /> Parents</a></li>--%>
<%--	</ul></li>--%>

<%--<li><a class="idTabs" href="#marks"><img--%>
<%--		src="icons/application_side_expand.png" /> Marks</a>--%>
<%--	<ul class="noJS">--%>
<%--		<li><a href="listmarks.php?page=marks&&action=list"><img--%>
<%--				src="icons/application_view_list.png" /> Marks</a></li>--%>
<%--		<li><a--%>
<%--			href="listcourses.php?page=courses&&action=list"><img--%>
<%--				src="icons/application_view_list.png" /> Courses</a></li>--%>
<%--	</ul></li>--%>

<%--<li><a class="idTabs" href="#reports"><img--%>
<%--		src="icons/application_side_expand.png" /> Reports</a>--%>
<%--	<ul class="noJS">--%>
<%--		<li><a--%>
<%--			href="liststudents.php?page=reportsearch&&user_role=adm&&action=search"><img--%>
<%--				src="icons/application_view_list.png" /> Students reports</a></li>--%>
<%--		<li><a--%>
<%--			href="listcourses.php?page=reportcourses&&user_role=adm&&action=search"><img--%>
<%--				src="icons/application_view_list.png" /> Courses reports </a></li>--%>
<%--		<li><a--%>
<%--			href="listmarks.php?page=markssearch&&user_role=adm&&action=search"><img--%>
<%--				src="icons/application_view_list.png" /> Marks Report</a></li>--%>
<%--		<li><a--%>
<%--			href="instructorspdf.php?"><img--%>
<%--				src="icons/page_white_acrobat.png" /> All Instructors PDF</a></li>--%>
<%--		<li><a--%>
<%--			href="Studentspdf.php?"><img--%>
<%--				src="icons/page_white_acrobat.png" /> All Students PDF</a></li>--%>
<%--	--%>
<%--	</ul></li>--%>
<%--	starting my custom css using jstl--%>
<div class="nav">
	<div class="nleft">
		<img src="../images/logo2.png" alt="logo_img">
	</div>

	<div class="nmiddle">
		<ul>
           <%--user related here--%>
			    <li>
					<a class="idTabs" href="#admin"><img src="icons/application_side_expand.png" /> User</a>
					  <div class="sub-nav"><ul>
						 <li><a href="adduser.php?page=adduser"><img
								src="icons/user_add.png" /> Create User</a></li>

						 <li><a href="listuser.php?page=users&&action=list"><img
								src="icons/application_view_list.png" /> List of users</a></li>

						 <li><a href="listcourses.php?page=listcourse"><img
								src="icons/application_view_list.png" />List of courses</a></li>
				      </ul>
	               </div>
				</li>
			<li><a href="#">Student</a></li>
			<li><a href="#">Courses</a></li>
			<li><a href="#">Reports</a></li>
		</ul>
	</div>


		<c:if test="${authenticatedUser !=null}">
	      <div class="nright">
			<img src="../images/new.jpg" alt="user photo" />
<%--				<a href="listuser.php?page=profile&&id=${authenticatedUser.id}"><button>Profile</button></a>--%>
				<div class="ndetail">
					<p class="np">${authenticatedUser.fullName}</p>
					<p class="nsmall">${authenticatedUser.userRole}</p>
				</div>
				| <a href="login.php?logout=logout"><p class="nout">Logout</p></a>
		  </div>
		</c:if>

</div>