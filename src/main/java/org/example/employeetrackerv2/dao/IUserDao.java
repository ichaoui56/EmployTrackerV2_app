package org.example.employeetrackerv2.dao;

import org.example.employeetrackerv2.model.entity.User;

public interface IUserDao {
    User findByEmail(String email);
    void insert(User user);
}
