package org.example.employeetrackerv2.dao;

import org.example.employeetrackerv2.model.entity.Application;
import org.example.employeetrackerv2.model.enums.JobType;
import org.example.employeetrackerv2.model.enums.Status;

import java.util.List;

public interface IApplicationDao {
    void addApplicaion(Application application);
    List<Application> getAllApplications();
    List<Application> getFilteredApplicationsByStatus(Status status);
    Application updateApplicationStatus(int applicationId, Status newStatus);
    Application getAppById(int id);
}
