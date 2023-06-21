<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 21/06/2023
  Time: 07:52
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="upperlink.jsp"%>
<title>View enrol</title>
<div class="container2">
    <%--    left side--%>
    <div class="dleft">
        <%@ include file="sidebar.jsp" %>
    </div>
    <%--    right--%>
    <div class="dright">
        <div class="upper_desc">
            <h1>Enrollment</h1>
            <p>Here is the list of all students and the operation on them</p>
        </div>

        <div class="tbody">
            <button class="btn" id="sidebtn">Hellow</button>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Grade</th>
                    <th>Enrol Date</th>
                    <th>Semester</th>
                    <th>Enrollment Level</th>
                    <th>Academic Year</th>
                    <th class="haction">action</th>
                </tr>

                <c:forEach items="${enrols}" var="std" varStatus="usrstatus">
                    <tr>
                        <td>${std.id}</td>
                        <td>${std.grade}</td>
                        <td>${std.enrollmentDate}</td>
                        <td>${std.semester.id}</td>
                        <td>${std.enrollmentLevel.id}</td>
                        <td>${std.academicYear.id}</td>

                        <td class="action">
                            <a href="/deleteuser.php?id=${usr.id}" class="view">
                                <p>View</p>
                            </a>
                            <a href="/updateuser.php?id=${usr.id}" class="view">
                                <p>Edit</p>
                            </a>
                            <a href="/deleteuser.php?id=${usr.id}" class="view">
                                <p>Delete</p>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
<%@ include file="downlink.jsp"%>