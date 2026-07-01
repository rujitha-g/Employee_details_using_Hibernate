package com.kce.employees.servlet;

import java.io.IOException;
import java.util.List;

import com.kce.employees.dao.EmployeeDAO;
import com.kce.employees.entity.Employee;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/EmployeeServlet")
public class EmployeeServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        EmployeeDAO dao = new EmployeeDAO();

        String action = request.getParameter("action");

        switch (action) {

        case "save":

            Employee employee = new Employee();

            employee.setName(request.getParameter("name"));
            employee.setDept(request.getParameter("dept"));
            employee.setDesignation(request.getParameter("designation"));
            employee.setSalary(
                    Double.parseDouble(request.getParameter("salary")));

            dao.saveEmployee(employee);

            response.sendRedirect("success.jsp");
            break;

        case "update":

            int updateId = Integer.parseInt(request.getParameter("empId"));

            Employee emp = dao.getEmployeeById(updateId);

            if (emp != null) {

                emp.setName(request.getParameter("name"));
                emp.setDept(request.getParameter("dept"));
                emp.setDesignation(request.getParameter("designation"));
                emp.setSalary(
                        Double.parseDouble(request.getParameter("salary")));

                dao.updateEmployee(emp);

                response.sendRedirect("success.jsp");
            } else {
                response.getWriter().println("Employee Not Found");
            }

            break;

        case "delete":

            int deleteId = Integer.parseInt(request.getParameter("empId"));

            dao.deleteEmployee(deleteId);

            response.sendRedirect("success.jsp");

            break;

        case "fetchById":

            int id = Integer.parseInt(request.getParameter("empId"));

            Employee employee1 = dao.getEmployeeById(id);

            request.setAttribute("employee", employee1);

            request.getRequestDispatcher("displayEmployee.jsp")
                   .forward(request, response);

            break;

        case "fetchAll":

            List<Employee> employees = dao.fetchAllEmployees();

            request.setAttribute("employees", employees);

            request.getRequestDispatcher("displayAll.jsp")
                   .forward(request, response);

            break;

        default:
            response.getWriter().println("Invalid Action");
        }
    }
}