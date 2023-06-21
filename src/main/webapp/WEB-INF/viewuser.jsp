<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 21/06/2023
  Time: 07:52
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="upperlink.jsp"%>

<div class="container2">
<%--    right side--%>
    <div class="dleft">
        <%@ include file="sidebar.jsp" %>
    </div>
<%--    left side--%>
    <div class="dright">
        <div class="tbody">
            <table>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th class="haction">action</th>
                </tr>

                <c:forEach items="${users}" var="usr" varStatus="usrstatus">
                <tr>
                    <td>${usr.id}</td>
                    <td>${usr.fullName}</td>
                    <td>${usr.email}</td>
                    <td>${usr.userRole.getRoleDescription()}</td>
                    <td><input type="checkbox" name="usrIds"
                               value="${usr.id}" /></td>
                    <td>
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