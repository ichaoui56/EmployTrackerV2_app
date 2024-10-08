<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Employee</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        form {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f9f9f9;
        }
        label {
            display: block;
            margin-bottom: 10px;
        }
        input, select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #28a745;
            color: white;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<h2>Add New Employee</h2>

<form action="employee" method="post">
    <input type="hidden" name="action" value="insert" />

    <!-- Name -->
    <label for="name">Name</label>
    <input type="text" id="name" name="name" placeholder="Enter employee's name" required />

    <!-- Email -->
    <label for="email">Email</label>
    <input type="email" id="email" name="email" placeholder="Enter employee's email" required />

    <!-- Password -->
    <label for="password">Password</label>
    <input type="password" id="password" name="password" placeholder="Enter employee's password" required />

    <!-- Role -->
    <label for="role">Role</label>
    <select id="role" name="role" required>
        <option value="ADMIN">Admin</option>
        <option value="EMPLOYEE">Employee</option>
        <option value="RECRUITER">Recruiter</option>
    </select>

    <!-- Social Number -->
    <label for="socialNumber">Social Number</label>
    <input type="text" id="socialNumber" name="socialNumber" placeholder="Enter social security number" required />

    <!-- Department -->
    <label for="department">Department</label>
    <input type="text" id="department" name="department" placeholder="Enter department" required />

    <!-- Poste -->
    <label for="poste">Poste</label>
    <input type="text" id="poste" name="poste" placeholder="Enter poste" required />

    <!-- Salary -->
    <label for="salary">Salary</label>
    <input type="number" id="salary" name="salary" placeholder="Enter salary" required />

    <!-- Child Number -->
    <label for="childNumber">Number of Children</label>
    <input type="number" id="childNumber" name="childNumber" placeholder="Enter number of children" required />

    <!-- Leave Balance -->
    <label for="leaveBalance">Leave Balance</label>
    <input type="number" id="leaveBalance" name="leaveBalance" placeholder="Enter leave balance" required />

    <!-- Birth Date -->
    <label for="birthDate">Birth Date</label>
    <input type="date" id="birthDate" name="birthDate" required />

    <!-- Start Date -->
    <label for="startDate">Start Date</label>
    <input type="date" id="startDate" name="startDate" required />

    <!-- Submit Button -->
    <input type="submit" value="Add Employee" />

</form>

</body>
</html>
