package org.example.employeetrackerv2.model.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Leave {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;

    @Column(name = "motif", nullable = false, length = 255)
    private String motif;

    @Column(name = "leave_date", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date leaveDate;

    @Column(name = "document", length = 255)
    private String document;

    @ManyToOne
    @JoinColumn(name = "employee_id", nullable = false)
    private Employee employee;

    public Leave() {}

    public Leave(String motif, Date leaveDate, String document, Employee employee) {
        this.motif = motif;
        this.leaveDate = leaveDate;
        this.document = document;
        this.employee = employee;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMotif() {
        return motif;
    }

    public void setMotif(String motif) {
        this.motif = motif;
    }

    public Date getLeaveDate() {
        return leaveDate;
    }

    public void setLeaveDate(Date leaveDate) {
        this.leaveDate = leaveDate;
    }

    public String getDocument() {
        return document;
    }

    public void setDocument(String document) {
        this.document = document;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }
}
