package org.example.employeetrackerv2.dao;

import org.example.employeetrackerv2.model.entity.Employee;
import org.example.employeetrackerv2.model.entity.Recruiter;
import org.example.employeetrackerv2.model.entity.User;

import java.util.List;

public interface IRecruiterDao {
    Recruiter findRecruiterById(int id);
    void insert(User user);

    List<Recruiter> findAllRecruiters();

    void deleteRecruiter(int recruiterId);
    void updateRecruiter(Recruiter recruiter);
}
