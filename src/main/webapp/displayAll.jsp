<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.kce.employees.entity.Employee" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Employees</title>
</head>

<body>

<h2>All Employees</h2>

<%
    List<Employee> employees =
        (List<Employee>) request.getAttribute("employees");

    if(employees != null && !employees.isEmpty()) {
%>

<table border="1">

    <tr>
        <th>Emp ID</th>
        <th>Name</th>
        <th>Department</th>
        <th>Designation</th>
        <th>Salary</th>
    </tr>

<%
        for(Employee emp : employees) {
%>

    <tr>
        <td><%= emp.getEmpid() %></td>
        <td><%= emp.getName() %></td>
        <td><%= emp.getDept() %></td>
        <td><%= emp.getDesignation() %></td>
        <td><%= emp.getSalary() %></td>
    </tr>

<%
        }
%>

</table>

<%
    } else {
%>

<h3>No Employees Found</h3>

<%
    }
%>

<br>

<a href="index.jsp">Back to Home</a>

</body>
</html>
