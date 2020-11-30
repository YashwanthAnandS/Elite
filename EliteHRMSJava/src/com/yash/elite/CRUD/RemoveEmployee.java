package com.yash.elite.CRUD;
import com.yash.elite.User.EmployeeDao;
import com.yash.elite.User.UserBean;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RemoveEmployee extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String empId;

        empId = request.getParameter("empId");
        UserBean employee = new UserBean();
        employee.setEmpId(empId);

        EmployeeDao empDao = new EmployeeDao();
        String result= empDao.removeEmployee(employee);

        request.setAttribute("result",result);
        request.getRequestDispatcher("/removeEmployee.jsp").forward(request, response);
    }
}
