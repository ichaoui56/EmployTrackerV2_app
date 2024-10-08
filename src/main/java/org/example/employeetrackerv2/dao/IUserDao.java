package org.example.employeetrackerv2.dao;

import org.example.employeetrackerv2.model.entity.Employee;
import org.example.employeetrackerv2.model.entity.User;

import java.util.List;

public interface IUserDao {
    User findByEmail(String email);
    Employee findEmployeeById(int id);
    void insert(User user);
    List<Employee> findAllEmployees();
    void deleteEmployee(int employeeId);
    void updateEmployee(Employee employee);
}
