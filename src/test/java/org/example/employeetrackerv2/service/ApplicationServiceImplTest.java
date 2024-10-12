package org.example.employeetrackerv2.service;

import org.example.employeetrackerv2.dao.IApplicationDao;
import org.example.employeetrackerv2.model.entity.Application;
import org.example.employeetrackerv2.model.enums.Status;
import org.example.employeetrackerv2.service.impl.ApplicationServiceImpl;
import org.example.employeetrackerv2.smtp.NotificationService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.ArgumentCaptor;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

class ApplicationServiceImplTest {

    private IApplicationDao applicationDao;
    private ApplicationServiceImpl applicationService;
    private NotificationService notificationService;

    @BeforeEach
    void setUp() {
        applicationDao = mock(IApplicationDao.class);
        notificationService = mock(NotificationService.class);
        applicationService = new ApplicationServiceImpl(applicationDao);
        applicationService.setNotificationService(notificationService);
    }

    @Test
    void testApplyForOffer() {
        Application application = new Application();
        application.setName("ilyas ch");
        application.setEmail("ilyas@gmail.com");

        applicationService.applyForOffer(application);

        verify(applicationDao, times(1)).addApplicaion(application);
    }

    @Test
    void testGetAllApplications() {
        List<Application> applications = new ArrayList<>();
        applications.add(new Application());
        when(applicationDao.getAllApplications()).thenReturn(applications);

        List<Application> result = applicationService.getAllApplications();

        assertEquals(1, result.size());
    }

    @Test
    void testUpdateStatus() {
        Application application = new Application();
        application.setEmail("ilyas@gmail.com");
        application.setName("ilyas ch");

        when(applicationDao.updateApplicationStatus(anyInt(), any())).thenReturn(application);

        applicationService.updateStatus(1, Status.accepted);

        ArgumentCaptor<String> emailCaptor = ArgumentCaptor.forClass(String.class);
        ArgumentCaptor<String> subjectCaptor = ArgumentCaptor.forClass(String.class);
        ArgumentCaptor<String> messageCaptor = ArgumentCaptor.forClass(String.class);

        verify(notificationService, times(1)).sendEmail(emailCaptor.capture(), subjectCaptor.capture(), messageCaptor.capture());

        assertEquals("ilyas@gmail.com", emailCaptor.getValue());
        assertEquals("Application Status Update", subjectCaptor.getValue());
        assertTrue(messageCaptor.getValue().contains("Your application has been updated to: accepted"));
    }

    @Test
    void testGetApplicationById() {
        Application application = new Application();
        when(applicationDao.getAppById(1)).thenReturn(application);

        Application result = applicationService.getApplicationById(1);

        assertNotNull(result);
    }
}
