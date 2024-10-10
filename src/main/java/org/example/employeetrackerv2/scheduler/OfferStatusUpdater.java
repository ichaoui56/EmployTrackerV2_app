package org.example.employeetrackerv2.scheduler;

import jakarta.ejb.Schedule;
import jakarta.ejb.Singleton;
import jakarta.ejb.Startup;
import org.example.employeetrackerv2.dao.IOfferDao;
import org.example.employeetrackerv2.dao.impl.OfferDaoImpl;
import org.example.employeetrackerv2.service.IOfferService;
import org.example.employeetrackerv2.service.impl.OfferServiceImpl;

@Startup
@Singleton
public class OfferStatusUpdater {

    private final IOfferDao offerDao;
    private final IOfferService offerService;

    public OfferStatusUpdater() {
        offerDao = new OfferDaoImpl();
        offerService = new OfferServiceImpl(offerDao);
    }

    @Schedule(hour = "*", minute = "0", persistent = false)
    public void updateOfferStatus() {
        offerService.updateOfferStatus();
        System.out.println("Offer statuses updated.");
    }
}
