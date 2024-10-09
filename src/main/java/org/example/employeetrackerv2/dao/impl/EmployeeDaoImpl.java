package org.example.employeetrackerv2.dao.impl;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import org.example.employeetrackerv2.config.JpaConfig;
import org.example.employeetrackerv2.dao.IEmployeeDao;
import org.example.employeetrackerv2.model.entity.Employee;
import org.example.employeetrackerv2.model.entity.EmployeeHistory;
import org.example.employeetrackerv2.model.entity.User;

import java.util.List;

public class EmployeeDaoImpl implements IEmployeeDao {

    @Override
    public Employee findEmployeeById(int id) {
        EntityManager entityManager = JpaConfig.getEntityManagerFactory().createEntityManager();
        Employee employee = null;

        try {
            employee = entityManager.find(Employee.class, id);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            entityManager.close();
        }

        return employee;
    }


    @Override
    public void insert(User user) {
        EntityManager entityManager = JpaConfig.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = null;

        try {
            transaction = entityManager.getTransaction();
            transaction.begin();

            entityManager.persist(user);

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null && transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            entityManager.close();
        }
    }

    @Override
    public List<Employee> findAllEmployees() {
        EntityManager entityManager = JpaConfig.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = null;
        List<Employee> employees = null;

        try {
            transaction = entityManager.getTransaction();
            transaction.begin();

            var query = entityManager.createQuery("SELECT e FROM Employee e", Employee.class);
            employees = query.getResultList();

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null && transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            entityManager.close();
        }

        return employees;
    }

    @Override
    public void deleteEmployee(int employeeId) {
        EntityManager entityManager = JpaConfig.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = null;

        try {
            transaction = entityManager.getTransaction();
            transaction.begin();

            Employee employee = entityManager.find(Employee.class, employeeId);
            if (employee != null) {
                entityManager.remove(employee);
            }

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null && transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            entityManager.close();
        }
    }

    @Override
    public void updateEmployee(Employee employee) {
        EntityManager entityManager = JpaConfig.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = null;

        try {
            transaction = entityManager.getTransaction();
            transaction.begin();
            entityManager.merge(employee);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null && transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            entityManager.close();
        }
    }

    @Override
    public void insertEmployeeHistory(EmployeeHistory history) {
        EntityManager entityManager = JpaConfig.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = null;

        try {
            transaction = entityManager.getTransaction();
            transaction.begin();

            entityManager.persist(history);

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null && transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            entityManager.close();
        }
    }

}
