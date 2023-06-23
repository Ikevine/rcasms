<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 21/06/2023
  Time: 07:52
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="upperlink.jsp"%>
<title>View courses</title>
<div class="container2">
    <%--    left side--%>
    <div class="dleft">
        <%@ include file="sidebar.jsp" %>
    </div>
    <%--    right--%>
    <div class="dright">
        <div class="upper_desc">
            <h1>Student view</h1>
            <p>Here is the list of all students and the operation on them</p>
        </div>

        <div class="dright">
            <div class="container3">
                <div class="ldetail">
                    <div class="dh1">
                        <h3>Personal details</h3>
                    </div>

                    <div class="dbody">
                        <div class="detail">
                            <h3>ID</h3>
                            <p>123</p>
                        </div>
                        <div class="detail">
                            <h3>Name</h3>
                            <p>Ishimwe kevine</p>
                        </div>
                        <div class="detail">
                            <h3>Address</h3>
                            <p>Kigali , Rwanda , Nyarugenge</p>
                        </div>
                    </div>
                </div>
                <div class="rdetail">
                    <div class="dlink">
                        <a href="#">1 Semester</a>
                        <a href="#">2 Semester</a>
                        <a href="#">3 Semester</a>
                    </div>
                    <div class="tbody">
                        <table>
                            <tr>
                                <th>Subject</th>
                                <th>Cat</th>
                                <th>Exam</th>
                                <th>Final</th>
                            </tr>
                            <tr>
                                <td>math</td>
                                <td>34</td>
                                <td>78</td>
                                <td>45%</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
<%@ include file="downlink.jsp"%>
