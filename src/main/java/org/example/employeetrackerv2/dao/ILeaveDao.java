package org.example.employeetrackerv2.dao;

import org.example.employeetrackerv2.model.entity.Employee;
import org.example.employeetrackerv2.model.entity.Leave;
import org.example.employeetrackerv2.model.entity.LeaveHistory;
import org.example.employeetrackerv2.model.entity.User;
import org.example.employeetrackerv2.model.enums.Status;

import java.util.List;

public interface ILeaveDao {
    void insert(Leave leave);

    Leave findLeaveById(int id);

    List<Leave> getAllLeaves();
    Leave updateLeaveStatus(int leaveId, Status newStatus);
    void insertLeaveHistory(LeaveHistory leave);
}
