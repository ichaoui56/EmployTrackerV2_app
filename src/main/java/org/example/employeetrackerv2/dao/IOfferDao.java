package org.example.employeetrackerv2.dao;

import org.example.employeetrackerv2.model.entity.Offer;

import java.util.List;

public interface IOfferDao {
    void addOffer(Offer offer);
    void updateOfferStatuses();
    List<Offer> getAllOffers();
}
