package org.example.employeetrackerv2.service;

import org.example.employeetrackerv2.dao.IEmployeeDao;
import org.example.employeetrackerv2.model.entity.Employee;
import org.example.employeetrackerv2.model.entity.EmployeeHistory;
import org.example.employeetrackerv2.model.entity.User;
import org.example.employeetrackerv2.service.impl.EmployeeServiceImpl;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class EmployeeServiceImplTest {

    @Mock
    private IEmployeeDao employeeDao;

    @InjectMocks
    private EmployeeServiceImpl employeeService;

    @Test
    void testFindEmployeeById() {
        Employee employee = new Employee();
        employee.setId(1);
        when(employeeDao.findEmployeeById(1)).thenReturn(employee);

        Employee result = employeeService.findEmployeeById(1);

        assertNotNull(result);
        assertEquals(1, result.getId());
    }

    @Test
    void testInsert() {
        User user = new User();
        user.setId(1);
        user.setName("ilyas ch");
        user.setEmail("ilyas@gmail.com");

        employeeService.insert(user);

        verify(employeeDao, times(1)).insert(user);
    }

    @Test
    void testGetAllEmployees() {
        List<Employee> employees = new ArrayList<>();
        employees.add(new Employee());
        when(employeeDao.findAllEmployees()).thenReturn(employees);

        List<Employee> result = employeeService.getAllEmployees();

        assertEquals(1, result.size());
    }

    @Test
    void testDelete() {
        employeeService.delete(1);

        verify(employeeDao, times(1)).deleteEmployee(1);
    }

    @Test
    void testUpdate() {
        Employee employee = new Employee();
        employee.setId(1);
        employee.setName("ilyas ch");

        employeeService.update(employee);

        verify(employeeDao, times(1)).updateEmployee(employee);
    }

    @Test
    void testAddEmployeeHistory() {
        EmployeeHistory history = new EmployeeHistory();
        history.setEmployee(new Employee());
        history.setModificationDetails("Added new employee");

        employeeService.addEmployeeHistory(history);

        verify(employeeDao, times(1)).insertEmployeeHistory(history);
    }

    @Test
    void testCalculateFamilyAllowance() {
        double result = employeeService.calculateFamilyAllowance(4, 5000);

        assertEquals(1050.0, result);
    }
}
