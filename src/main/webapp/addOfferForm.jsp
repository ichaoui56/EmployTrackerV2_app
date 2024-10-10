<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Add Offer</title>
  <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file -->
</head>
<body>
<h2>Add Job Offer</h2>

<form action="offer?action=addOffer" method="post">
  <label for="companyName">Company Name:</label><br>
  <input type="text" id="companyName" name="companyName" required><br><br>

  <label for="location">Location:</label><br>
  <input type="text" id="location" name="location" required><br><br>

  <label for="jobType">Job Type:</label><br>
  <select id="jobType" name="jobType" required>
    <c:forEach var="type" items="${jobTypes}">
      <option value="${type}">${type}</option>
    </c:forEach>
  </select><br><br>

  <label for="experience">Experience Required:</label><br>
  <input type="text" id="experience" name="experience" required><br><br>

  <label for="qualifications">Qualifications:</label><br>
  <input type="text" id="qualifications" name="qualifications" required><br><br>

  <label for="salary">Salary:</label><br>
  <input type="text" id="salary" name="salary" required><br><br>

  <label for="dateFinished">Date Finished (YYYY-MM-DD):</label><br>
  <input type="date" id="dateFinished" name="dateFinished" required><br><br>

  <input type="submit" value="Add Offer">
</form>

<br>
<a href="offer?action=list">Back to Offer List</a>
</body>
</html>
