<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.kce.employees.entity.Employee" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Details</title>
</head>

<body>

<h2>Employee Details</h2>

<%
    Employee emp = (Employee) request.getAttribute("employee");

    if(emp != null) {
%>

<table border="1">

    <tr>
        <td>Employee ID</td>
        <td><%= emp.getEmpid() %></td>
    </tr>

    <tr>
        <td>Name</td>
        <td><%= emp.getName() %></td>
    </tr>

    <tr>
        <td>Department</td>
        <td><%= emp.getDept() %></td>
    </tr>

    <tr>
        <td>Designation</td>
        <td><%= emp.getDesignation() %></td>
    </tr>

    <tr>
        <td>Salary</td>
        <td><%= emp.getSalary() %></td>
    </tr>

</table>

<%
    } else {
%>

<h3>Employee Not Found</h3>

<%
    }
%>

<br>

<a href="index.jsp">Back to Home</a>

</body>
</html>
