<%--
  Created in Eclipse IDE
  User: Yashwanth Anand S
  Month: November 2020
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Human Resource Management System</title>
    <link rel="stylesheet" href="style/mainStyle.css">
    <link rel="stylesheet" href="style/mySalaryOverview.css">
</head>
<body>
<div class="content">
    <div class="heading">
        <h3> My Salary Overveiw </h3>
    </div>
    <br>
    <div class="selection">
        <table>
            <tr>
                <td>
                    <label class="label">From</label>
                </td>
                <th>
                    <div class="year">
                        <input type="number" id="fromYear" name="fromYear" value="2020">
                    </div>

                </th>
                <th>
                    <div class="date">
                        <select name="fromMonth" id="fromMonth">
                            <option>Select Month</option>
                            <option value="01">January</option>
                            <option value="02">February</option>
                            <option value="03">March</option>
                            <option value="04">April</option>
                            <option value="05">May</option>
                            <option value="06">June</option>
                            <option value="07">July</option>
                            <option value="08">Auguest</option>
                            <option value="09">September</option>
                            <option value="10">October</option>
                            <option value="11">November</option>
                            <option value="12">December</option>
                        </select>
                    </div>

                </th>

            </tr>
            <tr>
                <td>
                    <label class="label">To</label>
                </td>
                <th>
                    <div class="year">
                        <input type="number" id="toYear" name="toYear" value="2020">
                    </div>

                </th>
                <th>
                    <div class="date">
                        <select name="toMonth" id="toMonth">
                            <option>Select Month</option>
                            <option value="01">January</option>
                            <option value="02">February</option>
                            <option value="03">March</option>
                            <option value="04">April</option>
                            <option value="05">May</option>
                            <option value="06">June</option>
                            <option value="07">July</option>
                            <option value="08">Auguest</option>
                            <option value="09">September</option>
                            <option value="10">October</option>
                            <option value="11">November</option>
                            <option value="12">December</option>
                        </select>
                    </div>

                </th>

            </tr>
            <tr>
                <td>

                </td>
                <th></th>
                <th>
                    <a href="#" class="show">Show</a>
                </th>
            </tr>
        </table>
    </div>
    <div class="result">
        <br>
        <table id="table">
            <tr>
                <th>
                    Salary ID
                </th>
                <th>
                    From Date
                </th>
                <th>
                    To Date
                </th>
                <th>
                    Basic Salary
                </th>
                <th>
                    OT rate
                </th>
                <th>
                    OT Payment
                </th>
                <th>
                    Total
                </th>
            </tr>
            <tr>
            <tr>
                <td>
                    Sample ID 1
                </td>
                <td>
                    Sample From 1
                </td>
                <td>
                    Sample To 1
                </td>
                <td>
                     Basic 1
                </td>
                <td>
                     OT Rate 1
                </td>
                <td>
                     OT Pay 1
                </td>
                <td>
                    Sample Tot 1
                </td>
            </tr>
            <tr>
                <td>
                    Sample ID 2
                </td>
                <td>
                    Sample From 2
                </td>
                <td>
                    Sample To 2
                </td>
                <td>
                     Basic 2
                </td>
                <td>
                     OT Rate 2
                </td>
                <td>
                     OT Pay 2
                </td>
                <td>
                    Sample Tot 2
                </td>
            </tr>

        </table>
    </div>

</div>
</div>
<%@include file="mainDashboard.jsp" %>
</body>
</html>
