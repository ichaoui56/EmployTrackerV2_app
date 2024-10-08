package org.example.employeetrackerv2.model.entity;

import jakarta.persistence.*;
import java.util.Date;

@Entity
public class EmployeeHistory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;

    @Column(name = "birth_date", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date birthDate;

    @Column(name = "social_number", nullable = false, length = 50)
    private String socialNumber;

    @Column(name = "start_date", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date startDate;

    @Column(name = "salary", nullable = false)
    private long salary;

    @Column(name = "child_number", nullable = false)
    private int childNumber;

    @Column(name = "department", nullable = false, length = 100)
    private String department;

    @Column(name = "poste", nullable = false, length = 100)
    private String poste;

    @Column(name = "leave_balance", nullable = false)
    private int leaveBalance;

    @ManyToOne
    @JoinColumn(name = "employee_id", nullable = false)
    private Employee employee;

    public EmployeeHistory() {}

    public EmployeeHistory(Date birthDate, String socialNumber, Date startDate, long salary, int childNumber, String department, String poste, int leaveBalance, Employee employee) {
        this.birthDate = birthDate;
        this.socialNumber = socialNumber;
        this.startDate = startDate;
        this.salary = salary;
        this.childNumber = childNumber;
        this.department = department;
        this.poste = poste;
        this.leaveBalance = leaveBalance;
        this.employee = employee;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public String getSocialNumber() {
        return socialNumber;
    }

    public void setSocialNumber(String socialNumber) {
        this.socialNumber = socialNumber;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public long getSalary() {
        return salary;
    }

    public void setSalary(long salary) {
        this.salary = salary;
    }

    public int getChildNumber() {
        return childNumber;
    }

    public void setChildNumber(int childNumber) {
        this.childNumber = childNumber;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getPoste() {
        return poste;
    }

    public void setPoste(String poste) {
        this.poste = poste;
    }

    public int getLeaveBalance() {
        return leaveBalance;
    }

    public void setLeaveBalance(int leaveBalance) {
        this.leaveBalance = leaveBalance;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }
}
