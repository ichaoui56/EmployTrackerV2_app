package org.example.employeetrackerv2.service.impl;

import org.example.employeetrackerv2.dao.IEmployeeDao;
import org.example.employeetrackerv2.model.entity.Employee;
import org.example.employeetrackerv2.model.entity.EmployeeHistory;
import org.example.employeetrackerv2.model.entity.User;
import org.example.employeetrackerv2.service.IEmployeeService;

import java.util.List;

public class EmployeeServiceImpl implements IEmployeeService {
    private final IEmployeeDao employeeDao;

    public EmployeeServiceImpl(IEmployeeDao employeeDao){
        this.employeeDao = employeeDao;
    }

    @Override
    public Employee findEmployeeById(int id) {
        return employeeDao.findEmployeeById(id);
    }

    @Override
    public void insert(User user) {
        employeeDao.insert(user);
    }

    @Override
    public List<Employee> getAllEmployees(){
        return employeeDao.findAllEmployees();
    }

    @Override
    public void delete(int id){
        employeeDao.deleteEmployee(id);
    }

    @Override
    public void update(Employee employee) {
        employeeDao.updateEmployee(employee);
    }

    @Override
    public void addEmployeeHistory(EmployeeHistory history) {
        employeeDao.insertEmployeeHistory(history);
    }


}
