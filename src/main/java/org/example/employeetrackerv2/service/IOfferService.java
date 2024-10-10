package org.example.employeetrackerv2.service;

import org.example.employeetrackerv2.model.entity.Offer;

import java.util.List;

public interface IOfferService {
    void addOffer(Offer offer);
    void updateOfferStatus();
    List<Offer> getAllOffers();
}
