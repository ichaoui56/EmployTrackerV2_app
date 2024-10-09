package org.example.employeetrackerv2.service.impl;

import org.example.employeetrackerv2.dao.IOfferDao;
import org.example.employeetrackerv2.model.entity.Offer;
import org.example.employeetrackerv2.service.IOfferService;

public class OfferServiceImpl implements IOfferService {
    private final IOfferDao offerDao;

    public OfferServiceImpl(IOfferDao offerDao) {
        this.offerDao = offerDao;
    }

    @Override
    public void addOffer(Offer offer){
        offerDao.addOffer(offer);
    }
}
