package org.example.employeetrackerv2.model.entity;

import jakarta.persistence.*;
import java.util.Date;

@Entity
public class EmployeeHistory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "employee_id", nullable = false)
    private Employee employee;

    @Column(name = "modified_at", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date modifiedAt;

    @Column(name = "modification_details", nullable = false, length = 1000)
    private String modificationDetails;

    @Column(name = "modified_by", nullable = false, length = 100)
    private String modifiedBy;

    // Default constructor
    public EmployeeHistory() {}

    // Full constructor with all fields
    public EmployeeHistory(Employee employee, String modificationDetails, String modifiedBy) {
        this.employee = employee;
        this.modifiedAt = new Date(); // Automatically sets the current timestamp when the history is created
        this.modificationDetails = modificationDetails;
        this.modifiedBy = modifiedBy;
    }

    // Getters and Setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public Date getModifiedAt() {
        return modifiedAt;
    }

    public void setModifiedAt(Date modifiedAt) {
        this.modifiedAt = modifiedAt;
    }

    public String getModificationDetails() {
        return modificationDetails;
    }

    public void setModificationDetails(String modificationDetails) {
        this.modificationDetails = modificationDetails;
    }

    public String getModifiedBy() {
        return modifiedBy;
    }

    public void setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }
}
