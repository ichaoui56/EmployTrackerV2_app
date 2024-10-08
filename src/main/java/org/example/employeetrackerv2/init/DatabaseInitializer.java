package org.example.employeetrackerv2.init;

import org.example.employeetrackerv2.config.JpaConfig;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;

public class DatabaseInitializer {

    public static void initialize() {
        EntityManagerFactory emf = JpaConfig.getEntityManagerFactory();
        EntityManager em = null;

        try {
            em = emf.createEntityManager();
            em.getTransaction().begin();
            em.getTransaction().commit();
        } catch (Exception e) {
            if (em != null && em.getTransaction().isActive()) {
                em.getTransaction().rollback();
            }
            e.printStackTrace();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }
}
