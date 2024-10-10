package org.example.employeetrackerv2.service.impl;

import org.example.employeetrackerv2.dao.ILeaveDao;
import org.example.employeetrackerv2.model.entity.Leave;
import org.example.employeetrackerv2.service.ILeaveService;

public class LeaveServiceImpl implements ILeaveService {
    private final ILeaveDao leaveDao;

    public LeaveServiceImpl(ILeaveDao leaveDao){
        this.leaveDao = leaveDao;
    }

    @Override
    public void addLeave(Leave leave){
        leaveDao.insert(leave);
    }
}
