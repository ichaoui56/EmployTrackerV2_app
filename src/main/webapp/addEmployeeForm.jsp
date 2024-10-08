<form action="employee" method="POST">
    <input type="hidden" name="action" value="update">
    <input type="hidden" name="id" value="${employee.id}">

    Name: <input type="text" name="name" value="${employee.name}" required><br>
    Email: <input type="email" name="email" value="${employee.email}" required><br>
    Password: <input type="password" name="password" value="${employee.password}" required><br>

    Role:
    <select name="role" required>
        <option value="" disabled>Select role</option>
        <option value="ADMIN" ${employee.role == 'ADMIN' ? 'selected' : ''}>Admin</option>
        <option value="EMPLOYEE" ${employee.role == 'EMPLOYEE' ? 'selected' : ''}>Employee</option>
        <option value="RECRUITER" ${employee.role == 'RECRUITER' ? 'selected' : ''}>Recruiter</option>
    </select><br>

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
