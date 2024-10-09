package org.example.employeetrackerv2.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.employeetrackerv2.dao.IOfferDao;
import org.example.employeetrackerv2.dao.impl.OfferDaoImpl;
import org.example.employeetrackerv2.model.entity.Offer;
import org.example.employeetrackerv2.service.IOfferService;
import org.example.employeetrackerv2.service.impl.OfferServiceImpl;

import java.io.IOException;
import java.util.Date;

@WebServlet("/offer")
public class OfferServlet extends HttpServlet {

    private IOfferDao offerDao;
    private IOfferService offerService;

    @Override
    public void init() throws ServletException {
        super.init();
        offerDao = new OfferDaoImpl();
        offerService = new OfferServiceImpl(offerDao);
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        switch (action){
            case "addOffer":
                showOfferForm(request, response);
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
                addOffer(request, response);
                break;
            default:
                response.sendError(HttpServletResponse.SC_NOT_FOUND); // Handle unknown actions
                break;
        }
    }

    protected void showOfferForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("addOfferForm.jsp").forward(request,response);
    }

    protected void addOffer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String companyName = request.getParameter("companyName");
        String employeeType = request.getParameter("employeeType");
        String location = request.getParameter("location");
        String jobType = request.getParameter("jobType");
        String experience = request.getParameter("experience");
        String qualifications = request.getParameter("qualifications");
        String salary = request.getParameter("salary");
        Date datePosted = new Date();

//        Offer offer = new Offer(companyName, employeeType, location, jobType, experience, qualifications, salary, datePosted, /* recruiter */);
//
//        offerService.addOffer(offer);

        response.sendRedirect("offer?action=list");
    }

}
