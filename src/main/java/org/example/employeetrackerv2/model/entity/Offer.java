package org.example.employeetrackerv2.model.entity;

import jakarta.persistence.*;
import org.example.employeetrackerv2.model.enums.JobType;
import org.example.employeetrackerv2.model.enums.OfferStatus;

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

    @Column(name = "location", nullable = false, length = 255)
    private String location;

    @Enumerated(EnumType.STRING)
    @Column(name = "job_type", nullable = false, length = 255)
    private JobType jobType;

    @Column(name = "experience", nullable = false, length = 255)
    private String experience;

    @Column(name = "qualifications", nullable = false, length = 255)
    private String qualifications;

    @Column(name = "salary", nullable = false, length = 50)
    private String salary;

    @Column(name = "date_posted", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date datePosted;

    @Column(name = "date_finished", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date dateFinished;

    @Enumerated(EnumType.STRING)
    @Column(name = "status", nullable = false)
    private OfferStatus status;

    @ManyToOne
    @JoinColumn(name = "recruiter_id", nullable = false)
    private Recruiter recruiter;

    @OneToMany(mappedBy = "offer", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Application> applications;

    public Offer() {}

    public Offer(String companyName,  String location, JobType jobType, String experience,
                 String qualifications, String salary,Date dateFinished, Date datePosted, Recruiter recruiter) {
        this.companyName = companyName;
        this.location = location;
        this.jobType = jobType;
        this.experience = experience;
        this.qualifications = qualifications;
        this.salary = salary;
        this.dateFinished = dateFinished;
        this.datePosted = datePosted;
        this.recruiter = recruiter;
        this.status = OfferStatus.ACTIVE;
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

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public JobType getJobType() {
        return jobType;
    }

    public void setJobType(JobType jobType) {
        this.jobType = jobType;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public OfferStatus getStatus() {
        return status;
    }

    public void setStatus(OfferStatus status) {
        this.status = status;
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

    public Date getDateFinished() {
        return dateFinished;
    }

    public void setDateFinished(Date dateFinished) {
        this.dateFinished = dateFinished;
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
