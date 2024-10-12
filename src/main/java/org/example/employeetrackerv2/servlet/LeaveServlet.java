package org.example.employeetrackerv2.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.example.employeetrackerv2.dao.ILeaveDao;
import org.example.employeetrackerv2.dao.impl.LeaveDaoImpl;
import org.example.employeetrackerv2.model.entity.*;
import org.example.employeetrackerv2.model.enums.JobType;
import org.example.employeetrackerv2.model.enums.Role;
import org.example.employeetrackerv2.model.enums.Status;
import org.example.employeetrackerv2.service.ILeaveService;
import org.example.employeetrackerv2.service.impl.LeaveServiceImpl;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet("/leave")
public class LeaveServlet extends HttpServlet {

    private ILeaveDao leaveDao;
    private ILeaveService leaveService;

    @Override
    public void init() throws ServletException {
        super.init();
        leaveDao = new LeaveDaoImpl();
        leaveService = new LeaveServiceImpl(leaveDao);
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
            default:
                response.sendRedirect("offer?action=list");
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
                response.sendRedirect("offer?action=listLeaves");
                break;
        }
    }

    protected void addLeaveForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/views/forms/addLeaveForm.jsp").forward(request, response);
    }

    private void listLeaves(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Leave> leaves = leaveService.getAllLeaves();
        request.setAttribute("leaves", leaves);
        request.setAttribute("status", Status.values());
        request.getRequestDispatcher("WEB-INF/views/lists/listLeaves.jsp").forward(request, response);
    }

    private void handleAddLeave(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        User loggedUser = (User) session.getAttribute("user");

        if (loggedUser != null && loggedUser.getRole() == Role.EMPLOYEE) {
            Employee employee = (Employee) loggedUser;

            String leaveReason = request.getParameter("leaveReason");
            String periode = request.getParameter("periode");
            String leaveDateStr = request.getParameter("leaveDate");
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date leaveDate = null;
            try {
                leaveDate = dateFormat.parse(leaveDateStr);
            } catch (ParseException e) {
                e.printStackTrace();
            }

            Leave leave = new Leave(leaveReason, leaveDate, periode, employee);

            leaveService.addLeave(leave);

            String modificationDetails = "Added new leave by " + employee.getName();
            LeaveHistory history = new LeaveHistory(leave, modificationDetails);
            leaveService.addLeaveHistory(history);
            response.sendRedirect("offer?action=list");
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
                leaveService.updateLeaveStatus(leaveId, newStatus);
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
            }
        }

        response.sendRedirect("leave?action=listLeaves");
    }
}
