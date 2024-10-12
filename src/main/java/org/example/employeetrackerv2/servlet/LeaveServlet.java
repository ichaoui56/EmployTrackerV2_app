package org.example.employeetrackerv2.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import org.example.employeetrackerv2.dao.IEmployeeDao;
import org.example.employeetrackerv2.dao.ILeaveDao;
import org.example.employeetrackerv2.dao.impl.EmployeeDaoImpl;
import org.example.employeetrackerv2.dao.impl.LeaveDaoImpl;
import org.example.employeetrackerv2.model.entity.*;
import org.example.employeetrackerv2.model.enums.Role;
import org.example.employeetrackerv2.model.enums.Status;
import org.example.employeetrackerv2.service.IEmployeeService;
import org.example.employeetrackerv2.service.ILeaveService;
import org.example.employeetrackerv2.service.impl.EmployeeServiceImpl;
import org.example.employeetrackerv2.service.impl.LeaveServiceImpl;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet("/leave")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50
)
public class LeaveServlet extends HttpServlet {

    private ILeaveDao leaveDao;
    private ILeaveService leaveService;
    private IEmployeeDao employeeDao;
    private IEmployeeService employeeService;

    @Override
    public void init() throws ServletException {
        super.init();
        leaveDao = new LeaveDaoImpl();
        leaveService = new LeaveServiceImpl(leaveDao);
        employeeDao = new EmployeeDaoImpl();
        employeeService = new EmployeeServiceImpl(employeeDao);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        switch (action) {
            case "addLeaveForm":
                addLeaveForm(request, response);
                break;
            case "listLeaves":
                listLeaves(request, response);
                break;
            case "listDashLeaves":
                listDashLeaves(request, response);
                break;
            default:
                response.sendRedirect("leave?action=listLeaves");
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        switch (action) {
            case "addLeave":
                handleAddLeave(request, response);
                break;
            case "updateLeaveStatus":
                handleUpdateLeaveStatus(request, response);
                break;
            default:
                response.sendRedirect("leave?action=listLeaves");
                break;
        }
    }

    protected void addLeaveForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User loggedUser = (User) session.getAttribute("user");

        request.setAttribute("loggedUser", loggedUser);

        if (loggedUser instanceof Employee) {
            Employee employee = (Employee) loggedUser;
            request.setAttribute("employee", employee);
        }

        request.getRequestDispatcher("WEB-INF/views/forms/addLeaveForm.jsp").forward(request, response);
    }

    private void listLeaves(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Leave> leaves = leaveService.getAllLeaves();
        request.setAttribute("leaves", leaves);
        request.setAttribute("status", Status.values());
        request.getRequestDispatcher("WEB-INF/views/lists/listLeaves.jsp").forward(request, response);
    }

    private void listDashLeaves(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Leave> leaves = leaveService.getAllLeaves();
        request.setAttribute("leaves", leaves);
        request.setAttribute("status", Status.values());
        request.getRequestDispatcher("WEB-INF/views/lists/listDashLeaves.jsp").forward(request, response);
    }

    private void handleAddLeave(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User loggedUser = (User) session.getAttribute("user");

        if (loggedUser != null && loggedUser.getRole() == Role.EMPLOYEE) {
            Employee employee = (Employee) loggedUser;

            String leaveReason = request.getParameter("leaveReason");
            int periode = Integer.parseInt(request.getParameter("periode"));
            String leaveDateStr = request.getParameter("leaveDate");

            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date leaveDate = null;
            try {
                leaveDate = dateFormat.parse(leaveDateStr);
            } catch (ParseException e) {
                log("Date parsing failed: " + e.getMessage());
                request.setAttribute("errorMessage", "Invalid date format.");
                request.getRequestDispatcher("WEB-INF/views/errors/error.jsp").forward(request, response);
                return;
            }

            if (employee.getLeaveBalance() < periode) {
                log("Insufficient leave balance for employee: " + employee.getName());
                request.setAttribute("errorMessage", "You cannot apply for leave as your balance is insufficient.");
                request.getRequestDispatcher("WEB-INF/views/forms/addLeaveForm.jsp").forward(request, response);
                return;
            }

            Part filePart = request.getPart("document");
            if (filePart == null || filePart.getSize() == 0) {
                log("File upload failed: No file selected.");
                request.setAttribute("errorMessage", "Please upload a document.");
                request.getRequestDispatcher("WEB-INF/views/errors/error.jsp").forward(request, response);
                return;
            }

            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
            String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) uploadDir.mkdirs();

            String filePath = uploadPath + File.separator + System.currentTimeMillis() + "_" + fileName;
            try (InputStream input = filePart.getInputStream()) {
                Files.copy(input, Paths.get(filePath), StandardCopyOption.REPLACE_EXISTING);
            } catch (IOException e) {
                log("File upload failed: " + e.getMessage());
                request.setAttribute("errorMessage", "File upload failed.");
                request.getRequestDispatcher("WEB-INF/views/errors/error.jsp").forward(request, response);
                return;
            }

            String relativePath = "uploads/" + new File(filePath).getName();

            Leave leave = new Leave(periode, leaveDate,leaveReason, relativePath, employee);

            try {
                leaveService.addLeave(leave);
            } catch (Exception e) {
                log("Failed to process leave request: " + e.getMessage());
                request.setAttribute("errorMessage", "Failed to add leave request.");
                request.getRequestDispatcher("WEB-INF/views/errors/error.jsp").forward(request, response);
                return;
            }

            response.sendRedirect("leave?action=listLeaves");
        } else {
            response.sendRedirect("WEB-INF/views/errors/error.jsp");
        }
    }

    private void handleUpdateLeaveStatus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String leaveIdStr = request.getParameter("leaveId");
        String newStatusStr = request.getParameter("status");

        if (leaveIdStr != null && newStatusStr != null) {
            try {
                int leaveId = Integer.parseInt(leaveIdStr);
                Status newStatus = Status.valueOf(newStatusStr);
                System.out.println("leave3 is id " + leaveIdStr);
                System.out.println("leave3 is status " + newStatusStr);
                Leave leave = leaveService.findLeaveById(leaveId);
                if (leave != null) {
                    Employee employee = leave.getEmployee();

                    leaveService.updateLeaveStatus(leaveId, newStatus);

                    if (newStatus == Status.accepted) {
                        int leaveDays = leave.getPeriode();
                        System.out.println("hdchi ra tupdata1");
                        employee.setLeaveBalance(employee.getLeaveBalance() - leaveDays);
                        System.out.println("hdchi ra tupdata2");
                        employeeService.update(employee);
                    }
                }
            } catch (IllegalArgumentException e) {
                log("Invalid leave ID or status: " + e.getMessage());
            } catch (Exception e) {
                log("Failed to update leave status: " + e.getMessage());
            }
        }

        response.sendRedirect("leave?action=listDashLeaves");
    }
}
