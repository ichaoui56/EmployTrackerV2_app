package org.example.employeetrackerv2.service.impl;

import org.example.employeetrackerv2.dao.IApplicationDao;
import org.example.employeetrackerv2.model.entity.Application;
import org.example.employeetrackerv2.model.enums.JobType;
import org.example.employeetrackerv2.model.enums.Status;
import org.example.employeetrackerv2.service.IApplicationService;

import java.util.List;

public class ApplicationServiceImpl implements IApplicationService {
    private IApplicationDao applicationDao;

    public ApplicationServiceImpl(IApplicationDao applicationDao){
        this.applicationDao = applicationDao;
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

}
