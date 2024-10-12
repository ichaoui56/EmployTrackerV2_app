package org.example.employeetrackerv2.servlet;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.example.employeetrackerv2.model.entity.User;
import org.example.employeetrackerv2.model.enums.Role;

import java.io.IOException;

@WebFilter("/*")
public class AccessFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        HttpSession session = httpRequest.getSession(false);

        String requestURI = httpRequest.getRequestURI();
        String contextPath = httpRequest.getContextPath();

        boolean isLoggedIn = (session != null && session.getAttribute("user") != null);
        boolean isAdmin = isLoggedIn && ((User) session.getAttribute("user")).getRole() == Role.ADMIN;

        if (requestURI.endsWith(".jsp") || requestURI.endsWith(".css") || requestURI.endsWith(".jpg") ||
                requestURI.endsWith(".png") || requestURI.endsWith(".js")) {
            chain.doFilter(request, response);
            return;
        }
        if (!isLoggedIn) {
            if (requestURI.equals(contextPath + "/") ||
                    requestURI.equals(contextPath + "/auth") ||
                    requestURI.equals(contextPath + "/offer") ||
                    (requestURI.equals(contextPath + "/application") &&
                            "applyOfferForm".equals(httpRequest.getParameter("action"))) ||
                    (requestURI.equals(contextPath + "/application") &&
                            "applyOffer".equals(httpRequest.getParameter("action")))) { // Added condition here
                chain.doFilter(request, response);
                return;
            } else {
                httpResponse.sendRedirect(contextPath + "/auth?action=login");
                return;
            }
        }


        if (isLoggedIn) {
            if (requestURI.equals(contextPath + "/auth") && "logout".equals(httpRequest.getParameter("action"))) {
                chain.doFilter(request, response);
                return;
            }

            if (requestURI.equals(contextPath + "/auth")) {
                if (isAdmin) {
                    httpResponse.sendRedirect(contextPath + "/dashboard.jsp");
                } else {
                    httpResponse.sendRedirect(contextPath + "/");
                }
                return;
            }

            if (requestURI.equals(contextPath + "/dashboard.jsp") || requestURI.equals(contextPath + "/employee")) {
                if (!isAdmin) {
                    httpResponse.sendRedirect(contextPath + "/auth?action=login");
                    return;
                }
            }

            chain.doFilter(request, response);
            return;
        }



        httpResponse.sendRedirect(contextPath + "/404.jsp");
    }
}
