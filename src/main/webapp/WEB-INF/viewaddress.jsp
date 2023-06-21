<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 21/06/2023
  Time: 07:52
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="upperlink.jsp"%>
<title>View address</title>
<div class="container2">
    <%--    left side--%>
    <div class="dleft">
        <%@ include file="sidebar.jsp" %>
    </div>
    <%--    right--%>
    <div class="dright">
        <div class="upper_desc">
            <h1>Address</h1>
            <p>Here is the list of all students and the operation on them</p>
        </div>

        <div class="tbody">
            <button class="btn" id="sidebtn">Hellow</button>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Country</th>
                    <th>City</th>
                    <th>Street Addres</th>
                    <th></th>
                    <th class="haction">action</th>
                </tr>

                <c:forEach items="${addresses}" var="add" varStatus="usrstatus">
                    <tr>
                        <td>${add.id}</td>
                        <td>${add.country}</td>
                        <td>${add.city}</td>
                        <td>${add.streetAddress}</td>
                        <td>${add.postalCode}</td>

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
