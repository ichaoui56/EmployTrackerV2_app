package org.example.employeetrackerv2.config;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JpaConfig {
    private static EntityManagerFactory emf;

    static {
        emf = Persistence.createEntityManagerFactory("EmployTrackerPU");
    }

    public static EntityManagerFactory getEntityManagerFactory() {
        return emf;
    }
}
