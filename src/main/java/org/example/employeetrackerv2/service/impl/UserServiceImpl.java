package org.example.employeetrackerv2.service.impl;

import org.example.employeetrackerv2.dao.IUserDao;
import org.example.employeetrackerv2.model.entity.Employee;
import org.example.employeetrackerv2.model.entity.EmployeeHistory;
import org.example.employeetrackerv2.model.entity.User;
import org.example.employeetrackerv2.service.IUserService;

import java.util.List;

public class UserServiceImpl implements IUserService {
    private final IUserDao userDao;

    public UserServiceImpl(IUserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public User authenticate(String email, String password) {
        User user = userDao.findByEmail(email);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }
}
