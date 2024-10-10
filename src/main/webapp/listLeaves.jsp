<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>List of Leaves</title>
    <link rel="stylesheet" type="text/css" href="styles.css"> <!-- Optional CSS file -->
</head>
<body>
<h2>List of Employee Leaves</h2>
<table border="1" cellpadding="10" cellspacing="0">
    <tr>
        <th>ID</th>
        <th>Employee Name</th>
        <th>Leave Reason</th>
        <th>Leave Date</th>
        <th>Period</th>
        <th>Status</th>
        <th>Action</th>
    </tr>
    <c:forEach var="leave" items="${leaves}">
        <tr>
            <td>${leave.id}</td>
            <td>${leave.employee.name}</td>
            <td>${leave.leaveReason}</td>
            <td>${leave.leaveDate}</td>
            <td>${leave.periode}</td>
            <td>${leave.status}</td>
            <td>
                <form action="leave" method="post">
                    <input type="hidden" name="action" value="updateLeaveStatus">
                    <input type="hidden" name="leaveId" value="${leave.id}">
                    <select id="status" name="status" required>
                        <c:forEach var="status" items="${status}">
                            <option value="${status}">${status}</option>
                        </c:forEach>
                    </select><br><br>
                    <input type="submit" value="Update">
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<a href="dashboard.jsp">Back to Dashboard</a>
</body>
</html>
