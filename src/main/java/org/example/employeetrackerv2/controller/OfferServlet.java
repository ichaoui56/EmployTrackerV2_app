package org.example.employeetrackerv2.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.example.employeetrackerv2.dao.IApplicationDao;
import org.example.employeetrackerv2.dao.IOfferDao;
import org.example.employeetrackerv2.dao.impl.ApplicationDaoImpl;
import org.example.employeetrackerv2.dao.impl.OfferDaoImpl;
import org.example.employeetrackerv2.model.entity.Application;
import org.example.employeetrackerv2.model.entity.Offer;
import org.example.employeetrackerv2.model.entity.Recruiter;
import org.example.employeetrackerv2.model.entity.User;
import org.example.employeetrackerv2.model.enums.Role;
import org.example.employeetrackerv2.service.IApplicationService;
import org.example.employeetrackerv2.service.IOfferService;
import org.example.employeetrackerv2.service.impl.ApplicationServiceImpl;
import org.example.employeetrackerv2.service.impl.OfferServiceImpl;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet("/offer")
public class OfferServlet extends HttpServlet {

    private IOfferDao offerDao;
    private IOfferService offerService;
    private IApplicationDao applicationDao;
    private IApplicationService applicationService;

    @Override
    public void init() throws ServletException {
        super.init();
        offerDao = new OfferDaoImpl();
        offerService = new OfferServiceImpl(offerDao);
        applicationDao = new ApplicationDaoImpl();
        applicationService = new ApplicationServiceImpl(applicationDao);
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        switch (action){
            case "addOfferForm":
                showOfferForm(request, response);
                break;
            case "listOffers":
                listOffers(request, response);
                break;
            case "applyOfferForm":
                offerApplyForm(request, response);
                break;
            default:
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        switch (action) {
            case "addOffer":
                try {
                    addOffer(request, response);
                } catch (ParseException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "applyOffer":
                applyOffer(request, response);
                break;
            default:
                response.sendRedirect("offer?action=list");
                break;
        }
    }

    protected void showOfferForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("addOfferForm.jsp").forward(request,response);
    }

    protected void offerApplyForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("offerId"));
        Offer offer = offerService.getOfferById(id);

        if (offer != null) {
            request.setAttribute("offer", offer);
            request.getRequestDispatcher("applyForm.jsp").forward(request, response);
        } else {
            response.sendRedirect("error.jsp");
        }
    }

    protected void listOffers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        offerService.updateOfferStatus();
        List<Offer> offers = offerService.getAllOffers();
        request.setAttribute("offers", offers);
        request.getRequestDispatcher("offerList.jsp").forward(request, response);
    }

    protected void addOffer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ParseException {
        HttpSession session = request.getSession();
        User loggedUser = (User) session.getAttribute("user");

        if (loggedUser != null && loggedUser.getRole() == Role.RECRUITER) {
            Recruiter recruiter = (Recruiter) loggedUser;

            String companyName = request.getParameter("companyName");
            String employeeType = request.getParameter("employeeType");
            String location = request.getParameter("location");
            String jobType = request.getParameter("jobType");
            String experience = request.getParameter("experience");
            String qualifications = request.getParameter("qualifications");
            String salary = request.getParameter("salary");
            Date datePosted = new Date();
            String dateFinishedStr = request.getParameter("dateFinished");

            Date dateFinished = null;
            if (dateFinishedStr != null && !dateFinishedStr.isEmpty()) {
                dateFinished = new SimpleDateFormat("yyyy-MM-dd").parse(dateFinishedStr);
            } else {
                response.sendRedirect("error.jsp");
                return;
            }

            Offer offer = new Offer(companyName, employeeType, location, jobType, experience, qualifications, salary,dateFinished, datePosted, recruiter);

            offerService.addOffer(offer);

            response.sendRedirect("offer?action=list");
        } else {
            response.sendRedirect("error.jsp");
        }
    }

    protected void applyOffer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phoneNo = request.getParameter("phoneNo");
        String jobTitle = request.getParameter("jobTitle");
        String jobTypes = request.getParameter("jobTypes");
        String description = request.getParameter("description");
        int offerId = Integer.parseInt(request.getParameter("offerId"));

        Offer offer = offerService.getOfferById(offerId);

        if (offer != null) {
            Application application = new Application(
                    name, email, phoneNo, jobTitle, jobTypes, description, offer
            );

            applicationService.applyForOffer(application);

            response.sendRedirect("offer?action=listOffers");
        } else {
            response.sendRedirect("error.jsp");
        }
    }

}
