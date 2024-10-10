<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>All Applications</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
            text-align: left;
        }
        tr:hover {background-color: #f5f5f5;}
        form {
            margin-bottom: 0; /* Adjusted to remove extra margin */
        }
        label {
            margin-right: 10px;
        }
        select {
            margin-right: 20px;
        }
    </style>
</head>
<body>
<h1>All Applications</h1>

<!-- Filter Form -->
<form action="application" method="get">
    <input type="hidden" name="action" value="filterApplications"/>

    <label for="status">Status:</label>
    <select name="status" id="status">
        <option value="">All</option>
        <c:forEach var="status" items="${statuses}">
            <option value="${status}" <c:if test="${param.status == status}">selected</c:if>>${status}</option>
        </c:forEach>
    </select>

    <button type="submit">Filter</button>
</form>

<!-- Display Applications Table -->
<c:if test="${empty applications}">
    <p>No applications found.</p>
</c:if>

<c:if test="${not empty applications}">
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Job Title</th>
            <th>Description</th>
            <th>Status</th>
            <th>Offer's Company</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="application" items="${applications}">
            <tr>
                <td>${application.id}</td>
                <td>${application.name}</td>
                <td>${application.email}</td>
                <td>${application.phoneNo}</td>
                <td>${application.jobTitle}</td>
                <td>${application.description}</td>
                <td>${application.status}</td>
                <td>${application.offer.companyName}</td>
                <td>
                    <form action="application" method="post">
                        <input type="hidden" name="action" value="updateApplicationStatus">
                        <input type="hidden" name="applicationId" value="${application.id}">
                        <select name="status">
                            <c:forEach var="status" items="${statuses}">
                                <option value="${status}" <c:if test="${status == application.status}">selected</c:if>>${status}</option>
                            </c:forEach>
                        </select>
                        <input type="submit" value="Update">
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>

<br/>
<a href="dashboard.jsp">Back to Dashboard</a>
</body>
</html>
