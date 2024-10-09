package org.example.employeetrackerv2.dao.impl;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import org.example.employeetrackerv2.config.JpaConfig;
import org.example.employeetrackerv2.dao.IOfferDao;
import org.example.employeetrackerv2.model.entity.Offer;
import org.example.employeetrackerv2.model.enums.OfferStatus;

import java.util.Date;
import java.util.List;

public class OfferDaoImpl implements IOfferDao {


    @Override
    public void addOffer(Offer offer) {
        EntityManager entityManager = JpaConfig.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = null;

        try{
            transaction = entityManager.getTransaction();
            transaction.begin();

            entityManager.persist(offer);

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
    public void updateOfferStatus() {
        EntityManager entityManager = JpaConfig.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = null;

        try {
            transaction = entityManager.getTransaction();
            transaction.begin();

            List<Offer> offers = entityManager.createQuery("SELECT o FROM Offer o", Offer.class).getResultList();
            Date currentDate = new Date();

            for (Offer offer : offers) {
                long difference = currentDate.getTime() - offer.getDatePosted().getTime();
                long daysDifference = difference / (1000 * 60 * 60 * 24);

                if (daysDifference > 30 && offer.getStatus() != OfferStatus.EXPIRED) {
                    offer.setStatus(OfferStatus.EXPIRED);
                    entityManager.merge(offer);
                }
            }

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            entityManager.close();
        }
    }
    }
