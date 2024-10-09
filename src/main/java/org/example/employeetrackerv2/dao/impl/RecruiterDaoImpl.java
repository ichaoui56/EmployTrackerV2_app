package org.example.employeetrackerv2.dao.impl;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import org.example.employeetrackerv2.config.JpaConfig;
import org.example.employeetrackerv2.dao.IRecruiterDao;
import org.example.employeetrackerv2.model.entity.Recruiter;
import org.example.employeetrackerv2.model.entity.User;

import java.util.List;

public class RecruiterDaoImpl implements IRecruiterDao {


    @Override
    public Recruiter findRecruiterById(int id) {
        EntityManager entityManager = JpaConfig.getEntityManagerFactory().createEntityManager();
        Recruiter recruiter = null;

        try {
            recruiter = entityManager.find(Recruiter.class, id);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            entityManager.close();
        }

        return recruiter;
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
    public List<Recruiter> findAllRecruiters() {
        EntityManager entityManager = JpaConfig.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = null;
        List<Recruiter> recruiters = null;

        try {
            transaction = entityManager.getTransaction();
            transaction.begin();

            var query = entityManager.createQuery("SELECT e FROM Employee e", Recruiter.class);
            recruiters = query.getResultList();

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null && transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            entityManager.close();
        }

        return recruiters;
    }

    @Override
    public void deleteRecruiter(int recruiterId) {
        EntityManager entityManager = JpaConfig.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = null;

        try {
            transaction = entityManager.getTransaction();
            transaction.begin();

            Recruiter recruiter = entityManager.find(Recruiter.class, recruiterId);
            if (recruiter != null) {
                entityManager.remove(recruiter);
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
    public void updateRecruiter(Recruiter recruiter) {
        EntityManager entityManager = JpaConfig.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = null;

        try {
            transaction = entityManager.getTransaction();
            transaction.begin();
            entityManager.merge(recruiter);
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
