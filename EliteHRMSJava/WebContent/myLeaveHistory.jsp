<%--
  Created in Eclipse IDE
  User: Yashwanth Anand S
  Month: November 2020
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.yash.elite.DBconnection.DBconn" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="com.yash.elite.Leave.LeaveBean" %>
<%@ page import="com.yash.elite.Leave.LeaveDao" %>
<html>
<head>
    <title>Human Resource Management System</title>
    <link rel="stylesheet" href="style/mainStyle.css">
    <link rel="stylesheet" href="style/myLeaveHistory.css">

</head>
<body>

<div class="content">
    <div class="heading">
        <h3> My Leave History </h3>
    </div>
    <br>
    <form action="searchMyLeaves" method="POST">
        <input class="input" type="number" name="empId" value="<%=session.getAttribute("empId")%>" hidden>
    <div class="selection">
        <table>
            <tr>
                <td>
                    <label class="label">From</label>
                </td>
                <th>
                    <input class="input" type="date" id="fromDate" name="fromDate">
                </th>
            </tr>
            <tr>
                <td>
                    <label class="label">To</label>
                </td>
                <th>
                    <input class="input" type="date" id="toDate" name="toDate">
                </th>
            </tr>
            <tr>
                <td>

                </td>
                <th>
                    <input class="show" type="submit" value="Show"/>
                </th>
            </tr>
        </table>
    </div>

    <%
        String empId= (String) session.getAttribute("empId");
        String toDate= request.getParameter("toDate");
        String fromDate= request.getParameter("fromDate");

        LeaveDao empDao = new LeaveDao();
        List<LeaveBean> leaveListDefault = empDao.myLeaves(empId,toDate,fromDate);
    %>

    <div class="result">
        <table id="table">
            <tr>
                <th>
                    Leave
                </th>
                <th>
                    Applied Date
                </th>
                <th>
                    From Date
                </th>
                <th>
                    To Date
                </th>
                <th>
                    Reason
                </th>
                <th>
                    Status
                </th>
                <th>
                    Authorized
                </th>
            </tr>
            <%
                String toDateSearch= request.getParameter("toDate");
                String fromDateSearch= request.getParameter("fromDate");

                if (toDateSearch != null) {

                    List<LeaveBean> leavesBySearch = (List<LeaveBean>) request.getAttribute("leaves");

            %>
            <tr>

                <h4 class="serchResult">
                    Your Leaves From:- <%=fromDateSearch%> To:-<%=toDateSearch %>
                </h4>
            </tr>

            <%
                    for(LeaveBean leave:leavesBySearch){
                        if(session.getAttribute("empId").equals(leave.getEmpId())){}
                        else{
            %>


            <tr>

                <td class="leaveId"><%=leave.getLeaveId()%></td>
                <td class="appDate"><%=leave.getappDate()%></td>
                <td class="fromDate"><%=leave.getfromDate()%></td>
                <td class="toDate"><%=leave.gettoDate()%></td>

                <td class="reason"><%=leave.getReason()%></td>
                <td class="status" <%
                        if(leave.getstatus().equals("Rejected")){
                            %>style="color: crimson" style="font-weight: 500"<%
                }else if(leave.getstatus().equals("Pending")){%>
                    style="color:dodgerblue"
                    <%
                        }else if(leave.getstatus().equals("Approved")){
                              %>style="color:forestgreen" style="font-weight: 500"
                        <%
                            }%>


                ><%=leave.getstatus()%></td>
                <td class="empNIC"><%=leave.getAuthorizedPersonId()%><%}}}%></td>

            </tr>

            <%

                String toDate1= request.getParameter("toDate");

                if (toDate1== null) {
                for(LeaveBean leave:leaveListDefault){
                    if(session.getAttribute("empId").equals(leave.getEmpId())){}
                    else{
            %>


            <tr>

                <td class="leaveId"><%=leave.getLeaveId()%></td>
                <td class="appDate"><%=leave.getappDate()%></td>
                <td class="fromDate"><%=leave.getfromDate()%></td>
                <td class="toDate"><%=leave.gettoDate()%></td>
                <td class="reason"><%=leave.getReason()%></td>
                <td class="status" <%
                        if(leave.getstatus().equals("Rejected")){
                            %>style="color: #dc143c" style="font-weight: 500"<%
                }else if(leave.getstatus().equals("Pending")){%>
                    style="color:dodgerblue"
                    <%
                        }else if(leave.getstatus().equals("Approved")){
                              %>style="color:forestgreen" style="font-weight: 500"
                        <%
                            }%>


                ><%=leave.getstatus()%></td>
                <td class="empNIC"><%=leave.getAuthorizedPersonId()%><%}}}%></td>

            </tr>


        </table>
    </div>

    </form>
</div>
</div>
<%@include file="mainDashboard.jsp" %>

</body>
</html>
