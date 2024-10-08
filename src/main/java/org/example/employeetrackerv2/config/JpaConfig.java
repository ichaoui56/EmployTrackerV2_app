package org.example.employeetrackerv2.config;

import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class JpaConfig {
    private static EntityManagerFactory emf;

    static {
        emf = Persistence.createEntityManagerFactory("EmployTrackerPU");
    }

    public static EntityManagerFactory getEntityManagerFactory() {
        return emf;
    }
}
