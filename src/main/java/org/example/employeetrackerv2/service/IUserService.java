package org.example.employeetrackerv2.service;

import org.example.employeetrackerv2.model.entity.User;

public interface IUserService {
    User authenticate(String email, String password);

    void insert(User user);
}
