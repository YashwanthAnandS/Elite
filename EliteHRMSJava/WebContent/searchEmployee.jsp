<%@ page import="com.yash.elite.User.UserBean" %>


<%--
  Created in Eclipse IDE
  User: Yashwanth Anand S
  Month: November 2020
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.yash.elite.User.UserBean" %>
<%@ page import="com.yash.elite.User.EmployeeDao" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>Human Resource Management System</title>
    <link rel="stylesheet" href="style/mainStyle.css">
    <link rel="stylesheet" href="style/searchEmployee.css">
</head>
<body>

<div class="content">
    <div class="heading">
        <h3>Update Employee</h3>
    </div>
    <form action="searchemployee" method="POST">
        <%
            String result= (String) request.getAttribute("result");
            if(result != null){
                if(result=="ErrPass"){%>
        <h4 class="response" style="color: #DC143C;">
            Unable To Update Employee!,Please Check The Details And Try Again.
        </h4>
        <%}
            request.setAttribute("result",null);

            if(result=="ErrLength"){%>
        <h4 class="response" style="color: #DC143C;">
            Unable To Update Employee!,Please Check The Details And Try Again.
        </h4><%

        }
        request.setAttribute("result",null);
        if(result=="Successful"){%>

        <h4 class="response" style="color: #4bbe19;">
            Employee Updated Successfully!
        </h4>
        <%}
            request.setAttribute("result",null);
            if(result == "Unsuccessful"){%>
        <h4 class="response" style="color: #DC143C;">
            Unable To Update Employee!,Please Check The Details And Try Again.
        </h4>
        <%} request.setAttribute("result",null);}
            request.setAttribute("result",null);
        %>
        <%
            EmployeeDao empDao = new EmployeeDao();
            List<UserBean> empList = empDao.searchAllEmployees();
        %>
        <div class="search">
            <table class="tblSearch">
                <br>
                <tr>
                    <td></td><td></td>
                    <td>
                        <input class="input" type="text" name="empId" placeholder="Select Employee To Update" id="empId" readonly>
                    </td>
                    <td></td><td></td>
                </tr>
                <tr><td></td><td></td>
                    <td>
                        <input type="submit" class="submit" value="Search">
                    </td>
                    <td></td>
                </tr>
            </table>
        </div>
            <div class="result">
                <br>
                <table id="tableResult">
                <tr>
                    <th>
                        Employee Id
                    </th>
                    <th align="left">
                           Name
                    </th>
                    <th align="left">
                           NIC
                    </th>
                </tr>
                <%
                for(UserBean employee:empList){
                    if(session.getAttribute("empId").equals(employee.getEmpId())){}
                    else{
                %>
                <tr>
                    <td class="empIdd"><%=employee.getEmpId()%></td>
                    <td class="empName"><%=employee.getFName()%> <%=employee.getLName()%></td>
                    <td class="empNIC"><%=employee.getNIC()%><%}}%></td>
                </tr>
            </table>
            </div>
    </form>
</div>
</div>
<%@include file="mainDashboard.jsp" %>
<script type="text/javascript" src="js/loadDataToTable.js"></script>
</body>
</html>
