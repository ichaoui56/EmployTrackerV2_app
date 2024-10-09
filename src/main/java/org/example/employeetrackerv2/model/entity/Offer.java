package org.example.employeetrackerv2.model.entity;

import jakarta.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
public class Offer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;

    @Column(name = "company_name", nullable = false, length = 255)
    private String companyName;

    @Column(name = "employee_type", nullable = false, length = 50)
    private String employeeType;

    @Column(name = "location", nullable = false, length = 255)
    private String location;

    @Column(name = "job_type", nullable = false, length = 255)
    private String jobType;

    @Column(name = "experience", nullable = false)
    private String experience;

    @Column(name = "qualifications", nullable = false, length = 255)
    private String qualifications;

    @Column(name = "salary", nullable = false, length = 50)
    private String salary;

    @Column(name = "date_posted", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date datePosted;

    @ManyToOne
    @JoinColumn(name = "recruiter_id", nullable = false)
    private Recruiter recruiter;

    @OneToMany(mappedBy = "offer", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Application> applications;

    public Offer() {}

    public Offer(String companyName, String employeeType, String location, String jobType, String experience, String qualifications, String salary, Date datePosted, Recruiter recruiter) {
        this.companyName = companyName;
        this.employeeType = employeeType;
        this.location = location;
        this.jobType = jobType;
        this.experience = experience;
        this.qualifications = qualifications;
        this.salary = salary;
        this.datePosted = datePosted;
        this.recruiter = recruiter;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getEmployeeType() {
        return employeeType;
    }

    public void setEmployeeType(String employeeType) {
        this.employeeType = employeeType;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getJobType() {
        return jobType;
    }

    public void setJobType(String jobType) {
        this.jobType = jobType;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getQualifications() {
        return qualifications;
    }

    public void setQualifications(String qualifications) {
        this.qualifications = qualifications;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public Date getDatePosted() {
        return datePosted;
    }

    public void setDatePosted(Date datePosted) {
        this.datePosted = datePosted;
    }

    public Recruiter getRecruiter() {
        return recruiter;
    }

    public void setRecruiter(Recruiter recruiter) {
        this.recruiter = recruiter;
    }

    public List<Application> getApplications() {
        return applications;
    }

    public void setApplications(List<Application> applications) {
        this.applications = applications;
    }
}
