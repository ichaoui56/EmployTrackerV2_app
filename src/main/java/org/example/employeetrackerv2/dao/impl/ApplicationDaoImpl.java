package org.example.employeetrackerv2.dao.impl;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import org.example.employeetrackerv2.config.JpaConfig;
import org.example.employeetrackerv2.dao.IApplicationDao;
import org.example.employeetrackerv2.model.entity.Application;
import org.example.employeetrackerv2.model.entity.Offer;
import org.example.employeetrackerv2.model.enums.Status;
import org.example.employeetrackerv2.smtp.NotificationService;

import java.util.List;

public class ApplicationDaoImpl implements IApplicationDao {

    @Override
    public void addApplicaion(Application application){
        EntityManager entityManager = JpaConfig.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = null;

        try{
            transaction = entityManager.getTransaction();
            transaction.begin();

            entityManager.persist(application);

            transaction.commit();
        } catch (Exception e){
            if (transaction != null){
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            entityManager.close();
        }
    }

    @Override
    public List<Application> getAllApplications(){
        EntityManager entityManager = JpaConfig.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = null;
        List<Application> applications = null;

        try {
            transaction = entityManager.getTransaction();
            transaction.begin();

            var query = entityManager.createQuery("SELECT e FROM Application e", Application.class);
            applications = query.getResultList();

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null && transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            entityManager.close();
        }

        return applications;
    }

    @Override
    public List<Application> getFilteredApplicationsByStatus(Status status) {
        EntityManager entityManager = JpaConfig.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = null;
        List<Application> applications = null;

        try {
            transaction = entityManager.getTransaction();
            transaction.begin();

            String queryString = "SELECT a FROM Application a WHERE 1=1";

            if (status != null) {
                queryString += " AND a.status = :status";
            }

            TypedQuery<Application> query = entityManager.createQuery(queryString, Application.class);

            if (status != null) {
                query.setParameter("status", status);
            }

            applications = query.getResultList();

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null && transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            entityManager.close();
        }

        return applications;
    }

    @Override
    public void updateApplicationStatus(int applicationId, Status newStatus) {
        EntityManager entityManager = JpaConfig.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = null;
        NotificationService notificationService = new NotificationService();

        try {
            transaction = entityManager.getTransaction();
            transaction.begin();

            Application application = entityManager.find(Application.class, applicationId);
            System.out.println(application.getEmail());
            if (application != null) {
                application.setStatus(newStatus);
                entityManager.merge(application);
                transaction.commit();

                String subject = "Application Status Update";
                String messageContent = "Dear Candidate,\n\nYour application status has been updated to: " + newStatus + "\n\nBest regards,\nRecruitment Team";
                notificationService.sendEmail(application.getEmail(), subject, messageContent);
                System.out.println(application.getEmail());
            }
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
    public Application getAppById(int id){
        EntityManager entityManager = JpaConfig.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = null;
        Application application = null;

        try {
            transaction = entityManager.getTransaction();
            transaction.begin();

            application = entityManager.find(Application.class, id);

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            entityManager.close();
        }
        return application;
    }
}
