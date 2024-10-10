<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Update Application Status</title>
</head>
<body>
<h1>Update Application Status</h1>

<form action="application" method="post">
    <input type="hidden" name="action" value="updateApplicationStatus">
    <input type="hidden" name="applicationId" value="${application.id}">

    <label for="status">Select New Status:</label>
    <select name="status" id="status">
        <c:forEach var="status" items="${statuses}">
            <option value="${status}">${status}</option>
        </c:forEach>
    </select>

    <br><br>
    <input type="submit" value="Update Status">
</form>

<br>
<a href="application?action=displayAllApplications">Back to Applications</a>
</body>
</html>
