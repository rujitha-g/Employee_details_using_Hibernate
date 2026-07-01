<%@ page language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Employee Management</title>
</head>
<body>

<h2>Employee Management System</h2>

<a href="addEmployee.jsp">Add Employee</a><br><br>

<a href="updateEmployee.jsp">Update Employee</a><br><br>

<a href="deleteEmployee.jsp">Delete Employee</a><br><br>

<a href="fetchEmployee.jsp">Fetch Employee By ID</a><br><br>

<form action="EmployeeServlet" method="post">
    <input type="hidden" name="action" value="fetchAll">
    <input type="submit" value="Fetch All Employees">
</form>
</body>
</html>