package org.example.employeetrackerv2.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.employeetrackerv2.dao.IEmployeeDao;
import org.example.employeetrackerv2.dao.IRecruiterDao;
import org.example.employeetrackerv2.dao.impl.EmployeeDaoImpl;
import org.example.employeetrackerv2.dao.impl.RecruiterDaoImpl;
import org.example.employeetrackerv2.model.entity.Employee;
import org.example.employeetrackerv2.model.entity.EmployeeHistory;
import org.example.employeetrackerv2.model.entity.Recruiter;
import org.example.employeetrackerv2.model.enums.Role;
import org.example.employeetrackerv2.service.IEmployeeService;
import org.example.employeetrackerv2.service.IRecruiterService;
import org.example.employeetrackerv2.service.impl.EmployeeServiceImpl;
import org.example.employeetrackerv2.service.impl.RecruiterServiceImpl;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet("/employee")
public class EmployeeServlet extends HttpServlet {

    private IEmployeeDao employeeDao;
    private IEmployeeService employeeService;
    private IRecruiterDao recruiterDao;
    private IRecruiterService recruiterService;

    @Override
    public void init() throws ServletException {
        super.init();
        employeeDao = new EmployeeDaoImpl();
        employeeService = new EmployeeServiceImpl(employeeDao);
        recruiterDao = new RecruiterDaoImpl();
        recruiterService = new RecruiterServiceImpl(recruiterDao);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        switch (action) {
            case "addForm":
                addForm(req, resp);
                break;
            case "employeeList":
                employeeList(req, resp);
                break;
            case "delete":
                deleteEmployee(req, resp);
                break;
            case "updateForm":
                showUpdateForm(req, resp);
                break;
            default:
                employeeList(req, resp);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        switch (action) {
            case "insert":
                insertUser(req, resp);
                break;
            case "update":
                updateEmployee(req, resp);
                break;
            default:
                resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid action");
                break;
        }
    }

    private void addForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("addEmployeeForm.jsp").forward(req, resp);
    }

    private void employeeList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Employee> employees = employeeService.getAllEmployees();
        req.setAttribute("employees", employees);
        req.getRequestDispatcher("employeeList.jsp").forward(req, resp);
    }

    private void showUpdateForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int employeeId = Integer.parseInt(req.getParameter("id"));
        Employee employee = employeeService.findEmployeeById(employeeId);
        req.setAttribute("employee", employee);
        req.getRequestDispatcher("updateEmployeeForm.jsp").forward(req, resp);
    }

    private void insertUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String name = req.getParameter("name");
            String email = req.getParameter("email");
            String password = req.getParameter("password");
            Role role = Role.valueOf(req.getParameter("role"));
            String socialNumber = req.getParameter("socialNumber");
            String department = req.getParameter("department");
            String poste = req.getParameter("poste");
            long salary = Long.parseLong(req.getParameter("salary"));
            int childNumber = Integer.parseInt(req.getParameter("childNumber"));
            int leaveBalance = Integer.parseInt(req.getParameter("leaveBalance"));
            Date birthDate = new SimpleDateFormat("yyyy-MM-dd").parse(req.getParameter("birthDate"));
            Date startDate = new SimpleDateFormat("yyyy-MM-dd").parse(req.getParameter("startDate"));

           if (role == Role.EMPLOYEE){
               Employee employee = new Employee(
                       name, email, password, role, birthDate, socialNumber, startDate, salary, childNumber, department, poste, leaveBalance
               );
               employeeService.insert(employee);

               String modificationDetails = "Added new employee with name: " + employee.getName();
               EmployeeHistory history = new EmployeeHistory(employee, modificationDetails, "admin");
               employeeService.addEmployeeHistory(history);
           } else if (role == Role.RECRUITER){
               Recruiter recruiter = new Recruiter(
                       name, email, password, role
               );
               recruiterService.insertUser(recruiter);
           }

            resp.sendRedirect("employee?action=employeeList");
        } catch (ParseException e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid date format");
        } catch (NumberFormatException e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid number format");
        }
    }

    private void deleteEmployee(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int employeeId = Integer.parseInt(req.getParameter("id"));
            employeeService.delete(employeeId);

            resp.sendRedirect("employee?action=employeeList");
        } catch (NumberFormatException e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid employee ID");
        }
    }

    private void updateEmployee(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            String name = req.getParameter("name");
            String email = req.getParameter("email");
            String password = req.getParameter("password");
            String socialNumber = req.getParameter("socialNumber");
            String department = req.getParameter("department");
            String poste = req.getParameter("poste");
            long salary = Long.parseLong(req.getParameter("salary"));
            int childNumber = Integer.parseInt(req.getParameter("childNumber"));
            int leaveBalance = Integer.parseInt(req.getParameter("leaveBalance"));
            Date birthDate = new SimpleDateFormat("yyyy-MM-dd").parse(req.getParameter("birthDate"));
            Date startDate = new SimpleDateFormat("yyyy-MM-dd").parse(req.getParameter("startDate"));

            Employee employee = employeeService.findEmployeeById(id);
            employee.setName(name);
            employee.setEmail(email);
            employee.setPassword(password);
            employee.setSocialNumber(socialNumber);
            employee.setDepartment(department);
            employee.setPoste(poste);
            employee.setSalary(salary);
            employee.setChildNumber(childNumber);
            employee.setLeaveBalance(leaveBalance);
            employee.setBirthDate(birthDate);
            employee.setStartDate(startDate);

            employeeService.update(employee);
            String modificationDetails = "Updated employee with name: " + employee.getName();
            EmployeeHistory history = new EmployeeHistory(employee, modificationDetails, "admin");
            employeeService.addEmployeeHistory(history);

            resp.sendRedirect("employee?action=employeeList");
        } catch (ParseException e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid date format");
        } catch (NumberFormatException e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid number format");
        }
    }
}
