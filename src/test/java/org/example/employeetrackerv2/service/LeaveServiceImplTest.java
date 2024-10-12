package org.example.employeetrackerv2.service;

import org.example.employeetrackerv2.dao.ILeaveDao;
import org.example.employeetrackerv2.model.entity.Employee;
import org.example.employeetrackerv2.model.entity.Leave;
import org.example.employeetrackerv2.model.entity.LeaveHistory;
import org.example.employeetrackerv2.model.enums.Status;
import org.example.employeetrackerv2.service.impl.LeaveServiceImpl;
import org.example.employeetrackerv2.smtp.NotificationService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
public class LeaveServiceImplTest {

    @Mock
    private ILeaveDao leaveDao;

    @Mock
    private NotificationService notificationService;

    @InjectMocks
    private LeaveServiceImpl leaveService;

    @BeforeEach
    public void setUp() {
        leaveService.setNotificationService(notificationService);
    }

    @Test
    public void testAddLeave() {
        Employee employee = new Employee();
        employee.setName("ilyas ch");
        employee.setEmail("ilyas@gmail.com");

        Leave leave = new Leave();
        leave.setId(1);
        leave.setLeaveReason("Sick Leave");
        leave.setPeriode(5);
        leave.setLeaveDate(new Date());
        leave.setEmployee(employee);
        leave.setDocumentPath("upload/doc.pdf");

        leaveService.addLeave(leave);

        verify(leaveDao).insert(leave);

        ArgumentCaptor<String> toCaptor = ArgumentCaptor.forClass(String.class);
        ArgumentCaptor<String> subjectCaptor = ArgumentCaptor.forClass(String.class);
        ArgumentCaptor<String> messageCaptor = ArgumentCaptor.forClass(String.class);

        verify(notificationService).sendEmail(toCaptor.capture(), subjectCaptor.capture(), messageCaptor.capture());

        assertEquals("ilyaschaoui73@gmail.com", toCaptor.getValue());
        assertEquals("New Leave Request Created", subjectCaptor.getValue());
        assertTrue(messageCaptor.getValue().contains("A new leave request has been created:"));
        assertTrue(messageCaptor.getValue().contains("Leave Reason: Sick Leave"));
    }

    @Test
    public void testGetAllLeaves() {
        List<Leave> expectedLeaves = new ArrayList<>();
        expectedLeaves.add(new Leave());
        when(leaveDao.getAllLeaves()).thenReturn(expectedLeaves);

        List<Leave> actualLeaves = leaveService.getAllLeaves();

        assertEquals(expectedLeaves, actualLeaves);
    }

    @Test
    public void testUpdateLeaveStatus() {
        Employee employee = new Employee();
        employee.setEmail("ilyas@gmail.com");
        employee.setName("ilyas ch");

        Leave leave = new Leave();
        leave.setId(1);
        leave.setEmployee(employee);
        leave.setLeaveDate(new Date());
        leave.setStatus(Status.received);

        when(leaveDao.updateLeaveStatus(1, Status.accepted)).thenReturn(leave);

        leaveService.updateLeaveStatus(1, Status.accepted);

        verify(leaveDao).updateLeaveStatus(1, Status.accepted);
        verify(notificationService).sendEmail(eq("ilyas@gmail.com"), anyString(), anyString());
    }

    @Test
    public void testFindLeaveById() {
        Leave expectedLeave = new Leave();
        when(leaveDao.findLeaveById(1)).thenReturn(expectedLeave);

        Leave actualLeave = leaveService.findLeaveById(1);

        assertEquals(expectedLeave, actualLeave);
    }

    @Test
    public void testAddLeaveHistory() {
        LeaveHistory leaveHistory = new LeaveHistory();

        leaveService.addLeaveHistory(leaveHistory);

        verify(leaveDao).insertLeaveHistory(leaveHistory);
    }
}
