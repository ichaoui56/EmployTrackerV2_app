package org.example.employeetrackerv2.service;

import org.example.employeetrackerv2.model.entity.Application;
import org.example.employeetrackerv2.model.enums.JobType;
import org.example.employeetrackerv2.model.enums.Status;

import java.util.List;

public interface IApplicationService {
    void applyForOffer(Application application);
    List<Application> getAllApplications();
    List<Application> getFiltredApplications(Status applicationStatus);
}
