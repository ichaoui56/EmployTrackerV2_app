package org.example.employeetrackerv2.model.entity;

import org.example.employeetrackerv2.model.enums.Role;

import javax.persistence.*;
import java.util.List;

@Entity
public class Recruiter extends User {

    @OneToMany(mappedBy = "recruiter")
    private List<Offer> offers;

    public Recruiter() {}

    public Recruiter(String name, String email, String password, Role role) {
        super(name, email, password, role);
    }

    public List<Offer> getOffers() {
        return offers;
    }

    public void setOffers(List<Offer> offers) {
        this.offers = offers;
    }
}

