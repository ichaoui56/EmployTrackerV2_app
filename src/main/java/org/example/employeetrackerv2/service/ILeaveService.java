package org.example.employeetrackerv2.service;

import org.example.employeetrackerv2.model.entity.Leave;
import org.example.employeetrackerv2.model.enums.Status;

import java.util.List;

public interface ILeaveService {
    void addLeave(Leave leave);
    List<Leave> getAllLeaves();
    void updateLeaveStatus(int leaveId, Status newStatus);
}
