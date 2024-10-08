package org.example.employeetrackerv2;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import org.example.employeetrackerv2.model.entity.Recruiter;
import org.example.employeetrackerv2.model.enums.Role;


import java.util.Date;
public class Main {


    public static void main(String[] args) {

        EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmployTrackerPU");
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();

        Recruiter recruiter = new Recruiter("mohammed", "mohammed1@test.com", "password", Role.RECRUITER);
        em.persist(recruiter);

        em.getTransaction().commit();
        em.close();
        emf.close();
    }
}