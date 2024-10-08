package org.example.employeetrackerv2.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.employeetrackerv2.dao.IUserDao;
import org.example.employeetrackerv2.dao.impl.UserDaoImpl;
import org.example.employeetrackerv2.model.entity.Employee;
import org.example.employeetrackerv2.model.enums.Role;
import org.example.employeetrackerv2.service.IUserService;
import org.example.employeetrackerv2.service.impl.UserServiceImpl;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/employee")
public class EmployeeServlet extends HttpServlet {

    private IUserDao userDao;
    private IUserService userService;

    @Override
    public void init() throws ServletException {
        super.init();
        userDao = new UserDaoImpl();
        userService = new UserServiceImpl(userDao);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        switch (action) {
            case "addForm":
                addForm(req, resp);
                break;
            default:
                resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid action");
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        switch (action) {
            case "insert":
                insertEmployee(req, resp);
                break;
            default:
                resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid action");
                break;
        }
    }

    private void addForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("addEmployeeForm.jsp").forward(req, resp);
    }

    private void insertEmployee(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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

            Employee employee = new Employee(
                    name, email, password, role, birthDate, socialNumber, startDate, salary, childNumber, department, poste, leaveBalance
            );

            userService.insert(employee);

            resp.sendRedirect("employeeList.jsp");
        } catch (ParseException e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid date format");
        } catch (NumberFormatException e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid number format");
        }
    }
}
