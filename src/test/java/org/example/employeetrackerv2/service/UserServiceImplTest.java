package org.example.employeetrackerv2.service;

import org.example.employeetrackerv2.dao.IUserDao;
import org.example.employeetrackerv2.model.entity.User;
import org.example.employeetrackerv2.model.enums.Role;
import org.example.employeetrackerv2.service.impl.UserServiceImpl;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
public class UserServiceImplTest {

    @Mock
    private IUserDao userDao;

    @InjectMocks
    private UserServiceImpl userService;

    private User user;

    @BeforeEach
    public void setUp() {
        user = new User("ilyas ch", "ilyas@gmail.com", "ilyas@gmail.com", Role.RECRUITER);
        user.setId(1);
    }

    @Test
    public void testAuthenticate_Success() {
        String email = "ilyas@gmail.com";
        String password = "ilyas@gmail.com";
        when(userDao.findByEmail(email)).thenReturn(user);

        User authenticatedUser = userService.authenticate(email, password);

        assertEquals(user, authenticatedUser);
        verify(userDao).findByEmail(email);
    }

    @Test
    public void testAuthenticate_Failure_UserNotFound() {
        String email = "ilyasssss@gmail.com";
        String password = "ilyas@gmail.com";
        when(userDao.findByEmail(email)).thenReturn(null);

        User authenticatedUser = userService.authenticate(email, password);

        assertNull(authenticatedUser);
        verify(userDao).findByEmail(email);
    }

    @Test
    public void testAuthenticate_Failure_IncorrectPassword() {
        String email = "ilyas@gmail.com";
        String incorrectPassword = "wrongPassword";
        when(userDao.findByEmail(email)).thenReturn(user);

        User authenticatedUser = userService.authenticate(email, incorrectPassword);

        assertNull(authenticatedUser);
        verify(userDao).findByEmail(email);
    }
}
