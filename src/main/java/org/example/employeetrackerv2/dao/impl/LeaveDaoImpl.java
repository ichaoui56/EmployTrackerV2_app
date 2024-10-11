package org.example.employeetrackerv2.dao.impl;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import org.example.employeetrackerv2.config.JpaConfig;
import org.example.employeetrackerv2.dao.ILeaveDao;
import org.example.employeetrackerv2.model.entity.Leave;
import org.example.employeetrackerv2.model.entity.LeaveHistory;
import org.example.employeetrackerv2.model.enums.Status;

import java.util.List;

public class LeaveDaoImpl implements ILeaveDao {

    @Override
    public void insert(Leave leave) {
        EntityManager entityManager = JpaConfig.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = null;

        try {
            transaction = entityManager.getTransaction();
            transaction.begin();

            entityManager.persist(leave);

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
    public List<Leave> getAllLeaves(){
        EntityManager entityManager = JpaConfig.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = null;
        List<Leave> leaves = null;

        try {
            transaction = entityManager.getTransaction();
            transaction.begin();

            var query = entityManager.createQuery("SELECT l FROM Leave l", Leave.class);
            leaves = query.getResultList();

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null && transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            entityManager.close();
        }

        return leaves;
    }

    @Override
    public Leave updateLeaveStatus(int leaveId, Status newStatus) {
        EntityManager entityManager = JpaConfig.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = null;
        Leave leave = null;

        try {
            transaction = entityManager.getTransaction();
            transaction.begin();

            leave = entityManager.find(Leave.class, leaveId);
            if (leave != null) {
                leave.setStatus(newStatus);
                entityManager.merge(leave);
            }

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null && transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
            leave = null;
        } finally {
            entityManager.close();
        }

        return leave;
    }
    @Override
    public void insertLeaveHistory(LeaveHistory leave) {
        EntityManager entityManager = JpaConfig.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = null;

        try {
            transaction = entityManager.getTransaction();
            transaction.begin();

            entityManager.persist(leave);

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
