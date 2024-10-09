package org.example.employeetrackerv2.dao;

import org.example.employeetrackerv2.model.entity.Offer;

public interface IOfferDao {
    void addOffer(Offer offer);
    void updateOfferStatus();
}
