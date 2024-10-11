package org.example.employeetrackerv2.model.entity;

import jakarta.persistence.*;
import java.util.Date;

@Entity
public class LeaveHistory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "leave_id", nullable = false)
    private Leave leave;

    @Column(name = "modified_at", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date modifiedAt;

    @Column(name = "modification_details", nullable = false, length = 1000)
    private String modificationDetails;

    public LeaveHistory() {}

    public LeaveHistory(Leave leave, String modificationDetails) {
        this.leave = leave;
        this.modifiedAt = new Date();
        this.modificationDetails = modificationDetails;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Leave getLeave() {
        return leave;
    }

    public void setLeave(Leave leave) {
        this.leave = leave;
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

}
