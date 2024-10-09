package org.example.employeetrackerv2.service;

import org.example.employeetrackerv2.model.entity.Recruiter;
import org.example.employeetrackerv2.model.entity.User;

import java.util.List;

public interface IRecruiterService {
    Recruiter findRecruiterById(int id);
    void insertUser(User user);
    List<Recruiter> findAllRecruiters();
    void deleteRecruiter(int recruiterId);
    void updateRecruiter(Recruiter recruiter);
}