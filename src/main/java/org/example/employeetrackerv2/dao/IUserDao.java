package org.example.employeetrackerv2.dao;

import org.example.employeetrackerv2.model.entity.Employee;
import org.example.employeetrackerv2.model.entity.User;

import java.util.List;

public interface IUserDao {
    User findByEmail(String email);
    void insert(User user);
    List<Employee> findAllEmployees();
}
