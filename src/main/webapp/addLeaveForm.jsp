<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Add Leave</title>
    <link rel="stylesheet" type="text/css" href="styles.css"> <!-- Optional CSS file -->
</head>
<body>
<h2>Add Leave for Employee</h2>
<form action="leave" method="post">
    <input type="hidden" name="action" value="addLeave">

    <label for="leaveReason">Leave Reason:</label>
    <input type="text" id="leaveReason" name="leaveReason" required maxlength="255"><br><br>

    <label for="leaveDate">Leave Date:</label>
    <input type="date" id="leaveDate" name="leaveDate" required><br><br>

    <label for="periode">Period:</label>
    <input type="text" id="periode" name="periode" required maxlength="255"><br><br>

    <input type="submit" value="Add Leave">
</form>

<a href="dashboard.jsp">Back to Dashboard</a> <!-- Link back to your dashboard or main page -->
</body>
</html>
