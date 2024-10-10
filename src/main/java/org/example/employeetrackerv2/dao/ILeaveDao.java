package org.example.employeetrackerv2.dao;

import org.example.employeetrackerv2.model.entity.Leave;
import org.example.employeetrackerv2.model.entity.User;
import org.example.employeetrackerv2.model.enums.Status;

import java.util.List;

public interface ILeaveDao {
    void insert(Leave leave);
    List<Leave> getAllLeaves();
    Leave updateLeaveStatus(int leaveId, Status newStatus);
}
