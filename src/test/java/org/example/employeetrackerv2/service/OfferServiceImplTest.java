package org.example.employeetrackerv2.service;

import org.example.employeetrackerv2.dao.IOfferDao;
import org.example.employeetrackerv2.model.entity.Offer;
import org.example.employeetrackerv2.model.enums.JobType;
import org.example.employeetrackerv2.model.enums.OfferStatus;
import org.example.employeetrackerv2.model.entity.Recruiter;
import org.example.employeetrackerv2.service.impl.OfferServiceImpl;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
public class OfferServiceImplTest {

    @Mock
    private IOfferDao offerDao;

    @InjectMocks
    private OfferServiceImpl offerService;

    private Recruiter recruiter;

    @BeforeEach
    public void setUp() {
        recruiter = new Recruiter();
        recruiter.setId(1);
    }

    @Test
    public void testAddOffer() {
        Offer offer = new Offer("youcode", "safi", JobType.FULL_TIME, "2 years",
                "java/spring", "50000", new Date(), new Date(), recruiter);

        offerService.addOffer(offer);

        verify(offerDao).addOffer(offer);
    }

    @Test
    public void testUpdateOfferStatus() {
        offerService.updateOfferStatus();

        verify(offerDao).updateOfferStatuses();
    }

    @Test
    public void testGetAllOffers() {
        List<Offer> expectedOffers = new ArrayList<>();
        expectedOffers.add(new Offer("youcode2", "youssofia", JobType.PART_TIME, "1 year",
                "js/react", "60000", new Date(), new Date(), recruiter));

        when(offerDao.getAllOffers()).thenReturn(expectedOffers);

        List<Offer> actualOffers = offerService.getAllOffers();

        assertEquals(expectedOffers, actualOffers);
    }

    @Test
    public void testGetOfferById() {
        Offer expectedOffer = new Offer("youcode3", "nador", JobType.CONTRACT, "3 years",
                "Php/laravel", "70000", new Date(), new Date(), recruiter);
        expectedOffer.setId(1);

        when(offerDao.getOfferById(1)).thenReturn(expectedOffer);

        Offer actualOffer = offerService.getOfferById(1);

        assertEquals(expectedOffer, actualOffer);
    }
}
