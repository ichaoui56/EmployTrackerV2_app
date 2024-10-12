package org.example.employeetrackerv2.service.impl;

import org.example.employeetrackerv2.dao.IApplicationDao;
import org.example.employeetrackerv2.model.entity.Application;
import org.example.employeetrackerv2.model.entity.Leave;
import org.example.employeetrackerv2.model.enums.Status;
import org.example.employeetrackerv2.service.IApplicationService;
import org.example.employeetrackerv2.smtp.NotificationService;

import java.util.List;

public class ApplicationServiceImpl implements IApplicationService {
    private IApplicationDao applicationDao;
    private NotificationService notificationService;


    public ApplicationServiceImpl(IApplicationDao applicationDao){
        this.applicationDao = applicationDao;
        this.notificationService = new NotificationService();
    }

    public void setNotificationService(NotificationService notificationService) {
        this.notificationService = notificationService;
    }

    @Override
    public void applyForOffer(Application application){
        applicationDao.addApplicaion(application);
    }

    @Override
    public List<Application> getAllApplications(){
        return applicationDao.getAllApplications();
    }

    @Override
    public List<Application> getFiltredApplications(Status applicationStatus){
        return applicationDao.getFilteredApplicationsByStatus( applicationStatus);
    }

    @Override
    public void updateStatus(int leaveId, Status newStatus) {
        Application application = applicationDao.updateApplicationStatus(leaveId, newStatus);
        if (application != null) {
            String to = application.getEmail();
            String subject = "Application Status Update";
            String message = "Dear " + application.getName() + ",\n\n" +
                    "Your application has been updated to: " + newStatus + ".\n\n" +
                    "Best regards,\nHR Team";
            notificationService.sendEmail(to, subject, message);
        }
    }
    @Override
    public Application getApplicationById(int id){
        return applicationDao.getAppById(id);
    }

}
