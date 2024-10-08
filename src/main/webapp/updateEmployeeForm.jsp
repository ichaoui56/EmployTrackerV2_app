<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Employee</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<h1>Update Employee</h1>

<form action="employee" method="POST">
    <input type="hidden" name="action" value="update">
    <input type="hidden" name="id" value="${employee.id}">

    Name: <input type="text" name="name" value="${employee.name}" required><br>
    Email: <input type="email" name="email" value="${employee.email}" required><br>
    Password: <input type="password" name="password" value="${employee.password}" required><br>
    Department: <input type="text" name="department" value="${employee.department}" required><br>
    Poste: <input type="text" name="poste" value="${employee.poste}" required><br>
    Salary: <input type="number" name="salary" value="${employee.salary}" required><br>
    Social Number: <input type="text" name="socialNumber" value="${employee.socialNumber}" required><br>
    Number of Children: <input type="number" name="childNumber" value="${employee.childNumber}" required><br>
    Leave Balance: <input type="number" name="leaveBalance" value="${employee.leaveBalance}" required><br>
    Birth Date: <input type="date" name="birthDate" value="${employee.birthDate}" required><br>
    Start Date: <input type="date" name="startDate" value="${employee.startDate}" required><br>

    <input type="submit" value="Update Employee">
</form>

<a href="employee?action=employeeList">Cancel</a>
</body>
</html>
