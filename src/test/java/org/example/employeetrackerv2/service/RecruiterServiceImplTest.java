package org.example.employeetrackerv2.service;

import org.example.employeetrackerv2.dao.IRecruiterDao;
import org.example.employeetrackerv2.model.entity.Recruiter;
import org.example.employeetrackerv2.model.entity.User;
import org.example.employeetrackerv2.model.enums.Role;
import org.example.employeetrackerv2.service.impl.RecruiterServiceImpl;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
public class RecruiterServiceImplTest {

    @Mock
    private IRecruiterDao recruiterDao;

    @InjectMocks
    private RecruiterServiceImpl recruiterService;

    private Recruiter recruiter;

    @BeforeEach
    public void setUp() {
        recruiter = new Recruiter("ilyass ch", "ilyass@gmail.com", "ilyass@gmail.com", Role.RECRUITER);
        recruiter.setId(1);
    }

    @Test
    public void testFindRecruiterById() {
        when(recruiterDao.findRecruiterById(1)).thenReturn(recruiter);

        Recruiter actualRecruiter = recruiterService.findRecruiterById(1);

        assertEquals(recruiter, actualRecruiter);
        verify(recruiterDao).findRecruiterById(1);
    }

    @Test
    public void testInsertUser() {
        User user = new User("ilyas ch", "ilyas@gmail.com", "ilyas@gmail.com", Role.RECRUITER);
        recruiterService.insertUser(user);

        verify(recruiterDao).insert(user);
    }

    @Test
    public void testFindAllRecruiters() {
        List<Recruiter> expectedRecruiters = new ArrayList<>();
        expectedRecruiters.add(recruiter);
        when(recruiterDao.findAllRecruiters()).thenReturn(expectedRecruiters);

        List<Recruiter> actualRecruiters = recruiterService.findAllRecruiters();

        assertEquals(expectedRecruiters, actualRecruiters);
    }

    @Test
    public void testDeleteRecruiter() {
        int recruiterId = 1;

        recruiterService.deleteRecruiter(recruiterId);

        verify(recruiterDao).deleteRecruiter(recruiterId);
    }

    @Test
    public void testUpdateRecruiter() {
        recruiter.setEmail("ilyas@gmail.com");

        recruiterService.updateRecruiter(recruiter);

        verify(recruiterDao).updateRecruiter(recruiter);
    }
}
