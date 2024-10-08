package org.example.employeetrackerv2.service;

import org.example.employeetrackerv2.model.entity.Employee;
import org.example.employeetrackerv2.model.entity.User;

import java.util.List;

public interface IUserService {
    User authenticate(String email, String password);
    Employee findEmployeeById(int id);
    void insert(User user);
    List<Employee> getAllEmployees();
    void delete(int id);

    void update(Employee employee);
}
