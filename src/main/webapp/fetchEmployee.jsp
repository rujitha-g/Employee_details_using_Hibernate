<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fetch Employee</title>
</head>

<body>

<h2>Fetch Employee By ID</h2>

<form action="EmployeeServlet" method="post">

    <input type="hidden" name="empId" value="fetchById">

    <table>

        <tr>
            <td>Employee ID :</td>
            <td>
                <input type="number" name="empId" required>
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <input type="submit" value="Fetch Employee">
            </td>
        </tr>

    </table>

</form>

<br>

<a href="index.jsp">Back to Home</a>

</body>
</html>
