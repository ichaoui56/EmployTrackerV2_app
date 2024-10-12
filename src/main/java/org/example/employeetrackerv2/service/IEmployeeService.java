package org.example.employeetrackerv2.service;

import org.example.employeetrackerv2.model.entity.Employee;
import org.example.employeetrackerv2.model.entity.EmployeeHistory;
import org.example.employeetrackerv2.model.entity.User;

import java.util.List;

public interface IEmployeeService {
    Employee findEmployeeById(int id);
    void insert(User user);
    List<Employee> getAllEmployees();
    void delete(int id);
    void update(Employee employee);
    void addEmployeeHistory(EmployeeHistory history);

    double calculateFamilyAllowance(int numberOfChildren, double salary);
}
