package org.example.employeetrackerv2.service.impl;

import org.example.employeetrackerv2.dao.ILeaveDao;
import org.example.employeetrackerv2.model.entity.Leave;
import org.example.employeetrackerv2.model.enums.Status;
import org.example.employeetrackerv2.service.ILeaveService;
import org.example.employeetrackerv2.smtp.NotificationService;

import java.util.List;

public class LeaveServiceImpl implements ILeaveService {
    private final ILeaveDao leaveDao;
    private NotificationService notificationService;


    public LeaveServiceImpl(ILeaveDao leaveDao){
        this.leaveDao = leaveDao;
        this.notificationService = new NotificationService();
    }

    @Override
    public void addLeave(Leave leave){
        leaveDao.insert(leave);
    }

    @Override
    public List<Leave> getAllLeaves(){
        return leaveDao.getAllLeaves();
    }

    @Override
    public void updateLeaveStatus(int leaveId, Status newStatus) {
        Leave leave = leaveDao.updateLeaveStatus(leaveId, newStatus);
        if (leave != null) {
            String to = leave.getEmployee().getEmail();
            String subject = "Leave Status Update";
            String message = "Dear " + leave.getEmployee().getName() + ",\n\n" +
                    "Your leave request on " + leave.getLeaveDate() + " has been updated to: " + newStatus + ".\n\n" +
                    "Best regards,\nHR Team";
            notificationService.sendEmail(to, subject, message);
        }
    }
}
