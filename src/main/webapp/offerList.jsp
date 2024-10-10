<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>List of Job Offers</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h1 {
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .apply-button {
            background-color: #4CAF50; /* Green */
            color: white;
            border: none;
            padding: 10px 15px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 5px;
        }
    </style>
</head>
<body>
<h1>Job Offers</h1>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Company Name</th>
        <th>Employee Type</th>
        <th>Location</th>
        <th>Job Type</th>
        <th>Experience</th>
        <th>Qualifications</th>
        <th>Salary</th>
        <th>Date Posted</th>
        <th>Date Finished</th>
        <th>Status</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="offer" items="${offers}">
        <tr>
            <td>${offer.id}</td>
            <td>${offer.companyName}</td>
            <td>${offer.employeeType}</td>
            <td>${offer.location}</td>
            <td>${offer.jobType}</td>
            <td>${offer.experience}</td>
            <td>${offer.qualifications}</td>
            <td>${offer.salary}</td>
            <td>${offer.datePosted}</td>
            <td>${offer.dateFinished}</td>
            <td>${offer.status}</td>
            <td>
                <a class="apply-button" href="offer?action=applyOfferForm&offerId=${offer.id}">Apply</a>
            </td>
        </tr>
    </c:forEach>
    <c:if test="${empty offers}">
        <tr>
            <td colspan="12" style="text-align: center;">No job offers available.</td>
        </tr>
    </c:if>
    </tbody>
</table>
<br>
<a href="offer?action=addOfferForm">Add New Offer</a> <!-- Link to add new offers -->
</body>
</html>
