package org.example.employeetrackerv2.servlet;

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
import org.example.employeetrackerv2.model.enums.JobType;
import org.example.employeetrackerv2.model.enums.Role;
import org.example.employeetrackerv2.model.enums.Status;
import org.example.employeetrackerv2.service.IApplicationService;
import org.example.employeetrackerv2.service.IOfferService;
import org.example.employeetrackerv2.service.impl.ApplicationServiceImpl;
import org.example.employeetrackerv2.service.impl.OfferServiceImpl;

import java.io.IOException;
import java.util.List;

@WebServlet("/application")
public class ApplicationServlet extends HttpServlet {

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
            case "applyOfferForm":
                offerApplyForm(request, response);
                break;
            case "displayAllApplications":
                displayAllApplications(request, response);
                break;
            case "filterApplications":
                filterApplications(request, response);
                break;
            default:
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        switch (action) {
            case "applyOffer":
                applyOffer(request, response);
                break;
            case "updateApplicationStatus":
                updateApplicationStatus(request, response);
                break;
            default:
                response.sendRedirect("application?action=displayAllApplications");
                break;
        }
    }

    protected void offerApplyForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("offerId"));
        Offer offer = offerService.getOfferById(id);

        if (offer != null) {
            request.setAttribute("offer", offer);
            request.getRequestDispatcher("WEB-INF/views/forms/applyForm.jsp").forward(request, response);
        } else {
            response.sendRedirect("error.jsp");
        }
    }

    protected void displayAllApplications(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Application> applications = applicationService.getAllApplications();
        request.setAttribute("applications", applications);
        request.setAttribute("statuses", Status.values());
        request.getRequestDispatcher("WEB-INF/views/lists/displayApplications.jsp").forward(request, response);
    }

    protected void applyOffer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phoneNo = request.getParameter("phoneNo");
        String jobTitle = request.getParameter("jobTitle");
        String description = request.getParameter("description");
        int offerId = Integer.parseInt(request.getParameter("offerId"));

        Offer offer = offerService.getOfferById(offerId);

        if (offer != null) {
            Application application = new Application(
                    name, email, phoneNo, jobTitle, description, offer
            );

            applicationService.applyForOffer(application);

            response.sendRedirect("offer?action=listOffers");
        } else {
            response.sendRedirect("views/errors/error.jsp");
        }
    }


    protected void filterApplications(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String statusParam = request.getParameter("status");
        Status status = null;

        if (statusParam != null && !statusParam.isEmpty()) {
            status = Status.valueOf(statusParam);
        }

        List<Application> applications = applicationService.getFiltredApplications(status);

        request.setAttribute("applications", applications);
        request.setAttribute("statuses", Status.values());

        request.getRequestDispatcher("WEB-INF/views/lists/displayApplications.jsp").forward(request, response);
    }

    protected void updateApplicationStatus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int applicationId = Integer.parseInt(request.getParameter("applicationId"));
        String statusParam = request.getParameter("status");
        Status newStatus = Status.valueOf(statusParam);

        applicationService.updateStatus(applicationId, newStatus);

        response.sendRedirect("application?action=displayAllApplications");
    }

}
