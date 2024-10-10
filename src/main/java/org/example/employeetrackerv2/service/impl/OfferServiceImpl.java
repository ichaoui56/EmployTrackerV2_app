package org.example.employeetrackerv2.service.impl;

import org.example.employeetrackerv2.dao.IOfferDao;
import org.example.employeetrackerv2.model.entity.Offer;
import org.example.employeetrackerv2.service.IOfferService;

import java.util.List;

public class OfferServiceImpl implements IOfferService {
    private final IOfferDao offerDao;

    public OfferServiceImpl(IOfferDao offerDao) {
        this.offerDao = offerDao;
    }

    @Override
    public void addOffer(Offer offer){
        offerDao.addOffer(offer);
    }

    @Override
    public void updateOfferStatus() {
        offerDao.updateOfferStatuses();
    }

    @Override
    public List<Offer> getAllOffers() {
        return offerDao.getAllOffers();
    }
}
