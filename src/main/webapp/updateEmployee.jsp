
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>
</head>

<body>

<h2>Update Employee</h2>

<form action="EmployeeServlet" method="post">

    <input type="hidden" name="action" value="update">

    <table>

        <tr>
            <td>Employee ID :</td>
            <td><input type="number" name="empId" required></td>
        </tr>

        <tr>
            <td>Name :</td>
            <td><input type="text" name="name" required></td>
        </tr>

        <tr>
            <td>Department :</td>
            <td><input type="text" name="dept" required></td>
        </tr>

        <tr>
            <td>Designation :</td>
            <td><input type="text" name="designation" required></td>
        </tr>

        <tr>
            <td>Salary :</td>
            <td><input type="number" step="0.01" name="salary" required></td>
        </tr>

        <tr>
            <td colspan="2">
                <input type="submit" value="Update Employee">
            </td>
        </tr>

    </table>

</form>

<br>

<a href="index.jsp">Back to Home</a>

</body>
</html>

