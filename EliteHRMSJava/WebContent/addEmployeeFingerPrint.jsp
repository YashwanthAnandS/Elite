<%@ page import="com.yash.elite.User.UserBean" %><%--
  Created in Eclipse IDE
  User: Yashwanth Anand S
  Month: November 2020
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.yash.elite.User.UserBean" %>
<%@ page import="com.yash.elite.User.EmployeeDao" %>
<%@ page import="com.yash.elite.DBconnection.DBconn" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>Human Resource Management System</title>
    <link rel="stylesheet" href="style/mainStyle.css">
    <link rel="stylesheet" href="style/addFingerPrint.css">
</head>
<body>

<div class="content">
    <div class="heading">
        <h3>Add Employee FingerPrint</h3>
    </div>

        <%
            String result= (String) request.getAttribute("result");
            if(result != null){
            if(result=="Successful"){%>

        <h4 class="response" style="color: #4bbe19;">
            Registration Successful , Add Your FingerPrint Now!
        </h4><%
        }
            request.setAttribute("result",null);
    }
            request.setAttribute("result",null);
        %>
    <div class="main">
        <br>
        <table>
            <tr>
                <td>
                    <label class="label">EMP ID</label>
                </td>
                <%
                    ResultSet rs = null;
                    try {
                        Connection con = DBconn.getConnection();
                        Statement statement = con.createStatement();
                        rs = statement.executeQuery("SELECT empId FROM user ORDER BY empId DESC LIMIT 1");

                        while (rs.next()) {%>
                <th>
                    <input class="input" type="text" name="empid" value="<%=rs.getInt("empId")%>" readonly>
                </th>
            </tr>


            <tr>
                <td>
                    <label class="label">FingerPrint ID</label>
                </td>
                <th>
                    <input class="input" type="text" name="empid" value="<%=rs.getInt("empId")-10000 %>" readonly>
                </th>
            </tr>
            <%}} catch (SQLException e) {
                e.printStackTrace();
                System.out.println("Error");
                System.out.println(e);
            }%>
        </table>
        <table>
            <tr>
                <td></td>
                <th>
                    <a href="addEmployee.jsp" class="scan">Register</a>

                </th>
            </tr>
        </table>
    </div>
</div>
<%@include file="mainDashboard.jsp" %>
</body>

</html>
