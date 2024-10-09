package org.example.employeetrackerv2.service.impl;

import org.example.employeetrackerv2.dao.IRecruiterDao;
import org.example.employeetrackerv2.model.entity.Recruiter;
import org.example.employeetrackerv2.model.entity.User;
import org.example.employeetrackerv2.service.IRecruiterService;

import java.util.List;

public class RecruiterServiceImpl implements IRecruiterService {

    private final IRecruiterDao recruiterDao;

    public RecruiterServiceImpl(IRecruiterDao recruiterDao) {
        this.recruiterDao = recruiterDao;
    }

    @Override
    public Recruiter findRecruiterById(int id) {
        return recruiterDao.findRecruiterById(id);
    }

    @Override
    public void insertUser(User user) {
        recruiterDao.insert(user);
    }

    @Override
    public List<Recruiter> findAllRecruiters() {
        return recruiterDao.findAllRecruiters();
    }

    @Override
    public void deleteRecruiter(int recruiterId) {
        recruiterDao.deleteRecruiter(recruiterId);
    }

    @Override
    public void updateRecruiter(Recruiter recruiter) {
        recruiterDao.updateRecruiter(recruiter);
    }
}
