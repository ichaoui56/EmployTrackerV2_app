package org.example.employeetrackerv2.model.entity;

import org.example.employeetrackerv2.model.enums.Role;

import jakarta.persistence.*;

@Entity
public class Admin extends User {

    public Admin() {}

    public Admin(String name, String email, String password, Role role) {
        super(name, email, password, role);
    }
}
