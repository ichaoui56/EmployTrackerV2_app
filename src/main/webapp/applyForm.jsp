<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Apply for Offer</title>
</head>
<body>
<h2>Apply for Offer</h2>

<c:if test="${not empty offer}">
  <h3>Offer Details</h3>
  <p>Company Name: ${offer.companyName}</p>
  <p>Employee Type: ${offer.employeeType}</p>
  <p>Location: ${offer.location}</p>
  <p>Job Type: ${offer.jobType}</p>
  <p>Experience: ${offer.experience}</p>
  <p>Qualifications: ${offer.qualifications}</p>
  <p>Salary: ${offer.salary}</p>
  <p>Date Finished: ${offer.dateFinished}</p>

  <h3>Application Form</h3>
  <form action="offer?action=applyOffer" method="post">
    <input type="hidden" name="offerId" value="${offer.id}"/>

    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required/><br/>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required/><br/>

    <label for="phoneNo">Phone Number:</label>
    <input type="text" id="phoneNo" name="phoneNo" required/><br/>

    <label for="jobTitle">Job Title:</label>
    <input type="text" id="jobTitle" name="jobTitle" value="${offer.jobType}" readonly/><br/>

    <label for="jobTypes">Job Types:</label>
    <input type="text" id="jobTypes" name="jobTypes" required/><br/>

    <label for="description">Description:</label><br/>
    <textarea id="description" name="description" rows="4" cols="50" required></textarea><br/>

    <input type="submit" value="Submit Application"/>
  </form>
</c:if>
<c:if test="${empty offer}">
  <p>Offer not found.</p>
</c:if>
</body>
</html>
