package org.example.employeetrackerv2.servlet;

import org.example.employeetrackerv2.dao.IUserDao;
import org.example.employeetrackerv2.dao.impl.UserDaoImpl;
import org.example.employeetrackerv2.model.entity.User;
import org.example.employeetrackerv2.model.enums.Role;
import org.example.employeetrackerv2.service.IUserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import org.example.employeetrackerv2.service.impl.UserServiceImpl;

import java.io.IOException;
import java.util.Objects;

@WebServlet("/auth")
public class AuthServlet extends HttpServlet {
    private IUserDao userDao;
    private IUserService userService;

    @Override
    public void init() {
        userDao = new UserDaoImpl();
        userService = new UserServiceImpl(userDao);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        switch (action) {
            case "logout":
                HttpSession session = request.getSession(false);
                if (session != null) {
                    session.invalidate();
                }
                request.getRequestDispatcher("WEB-INF/views/auth/login.jsp").forward(request, response);
                break;
            case "login:":
                showLogin(request, response);
                break;
            default:
                request.getRequestDispatcher("WEB-INF/views/auth/login.jsp").forward(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = userService.authenticate(email, password);
        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            if (user.getRole() == Role.ADMIN) {
                response.sendRedirect("dashboard.jsp");
            } else {
                response.sendRedirect("index.jsp");
            }
        } else {
            request.setAttribute("error", "Invalid email or password");
            request.getRequestDispatcher("WEB-INF/views/auth/login.jsp").forward(request, response);
        }
    }



    protected void showLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/views/auth/login.jsp").forward(request, response);
    }
}
