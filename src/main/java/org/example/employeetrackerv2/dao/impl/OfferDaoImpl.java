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
    public void updateOfferStatuses() {
        EntityManager entityManager = JpaConfig.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = null;

        try {
            transaction = entityManager.getTransaction();
            transaction.begin();

            Date currentDate = new Date();

            List<Offer> offers = entityManager.createQuery("SELECT o FROM Offer o WHERE o.status = :status", Offer.class)
                    .setParameter("status", OfferStatus.ACTIVE)
                    .getResultList();

            for (Offer offer : offers) {
                if (offer.getDateFinished().before(currentDate)) {
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

    @Override
    public List<Offer> getAllOffers() {
        EntityManager entityManager = JpaConfig.getEntityManagerFactory().createEntityManager();
        List<Offer> offers = null;

        try {
            offers = entityManager.createQuery("SELECT o FROM Offer o", Offer.class).getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            entityManager.close();
        }

        return offers;
    }


}
