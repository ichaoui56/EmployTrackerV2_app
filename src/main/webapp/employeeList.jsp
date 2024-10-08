<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <title>Employee List</title>
</head>
<body>
<h1>Employee List</h1>

<table border="1">
  <thead>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Birth Date</th>
    <th>Social Number</th>
    <th>Start Date</th>
    <th>Salary</th>
    <th>Child Number</th>
    <th>Department</th>
    <th>Poste</th>
    <th>Leave Balance</th>
    <th>Actions</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="employee" items="${employees}">
    <tr>
      <td>${employee.id}</td>
      <td>${employee.name}</td>
      <td>${employee.email}</td>
      <td>${employee.birthDate}</td>
      <td>${employee.socialNumber}</td>
      <td>${employee.startDate}</td>
      <td>${employee.salary}</td>
      <td>${employee.childNumber}</td>
      <td>${employee.department}</td>
      <td>${employee.poste}</td>
      <td>${employee.leaveBalance}</td>
      <td>
        <form method="post">
          <input type="hidden" name="id" value="${employee.id}">
          <button type="submit">Delete</button>
        </form>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>

<h2>Add Employee</h2>
<form action="addEmployee.jsp" method="get">
  <button type="submit">Add New Employee</button>
</form>
</body>
</html>
