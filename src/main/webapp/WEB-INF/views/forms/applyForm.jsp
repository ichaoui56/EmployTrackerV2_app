<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<layout:homeLayout title="EmployeeTracker | Apply Form">
    <!-- Hero Start -->
    <section class="bg-half-170 d-table w-100" style="background: url('assets/images/hero/bg.jpg');">
        <div class="bg-overlay bg-gradient-overlay"></div>
        <div class="container">
            <div class="row mt-5 justify-content-center">
                <div class="col-12">
                    <div class="title-heading text-center">
                        <img src="assets/images/company/lenovo-logo.png"
                             class="avatar avatar-small rounded-pill p-2 bg-white" alt="">
                        <h5 class="heading fw-semibold mb-0 sub-heading text-white title-dark mt-3">Back-End
                            Developer</h5>
                    </div>
                </div><!--end col-->
            </div><!--end row-->

            <div class="position-middle-bottom">
                <nav aria-label="breadcrumb" class="d-block">
                    <ul class="breadcrumb breadcrumb-muted mb-0 p-0">
                        <li class="breadcrumb-item"><a href="index.html">Jobnova</a></li>
                        <li class="breadcrumb-item"><a href="job-grid-one.html">Job</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Job Apply</li>
                    </ul>
                </nav>
            </div>
        </div><!--end container-->
    </section>
    <!--end section-->
    <div class="position-relative">
        <div class="shape overflow-hidden text-white">
            <svg viewBox="0 0 2880 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M0 48H1437.5H2880V0H2160C1442.5 52 720 0 720 0H0V48Z" fill="currentColor"></path>
            </svg>
        </div>
    </div>
    <!-- Hero End -->

    <!-- Job apply form Start -->
    <section class="section bg-light">

        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-4 col-md-6 col-12">
                    <div class="card bg-white rounded shadow sticky-bar">
                        <div class="p-4">
                            <h5 class="mb-0">Job Information</h5>
                        </div>

                        <div class="card-body p-4 border-top">
                            <div class="d-flex widget align-items-center">
                                <i data-feather="layout" class="fea icon-ex-md me-3"></i>
                                <div class="flex-1">
                                    <h6 class="widget-title mb-0">Company Name:</h6>
                                    <small class="text-primary mb-0">${offer.companyName}</small>
                                </div>
                            </div>

                            <div class="d-flex widget align-items-center mt-3">
                                <i data-feather="map-pin" class="fea icon-ex-md me-3"></i>
                                <div class="flex-1">
                                    <h6 class="widget-title mb-0">Location:</h6>
                                    <small class="text-primary mb-0">${offer.location}, Morocco</small>
                                </div>
                            </div>

                            <div class="d-flex widget align-items-center mt-3">
                                <i data-feather="monitor" class="fea icon-ex-md me-3"></i>
                                <div class="flex-1">
                                    <h6 class="widget-title mb-0">Job Type:</h6>
                                    <small class="text-primary mb-0">${offer.jobType}</small>
                                </div>
                            </div>

                            <div class="d-flex widget align-items-center mt-3">
                                <i data-feather="briefcase" class="fea icon-ex-md me-3"></i>
                                <div class="flex-1">
                                    <h6 class="widget-title mb-0">Experience:</h6>
                                    <small class="text-primary mb-0">+${offer.experience} Year</small>
                                </div>
                            </div>

                            <div class="d-flex widget align-items-center mt-3">
                                <i data-feather="book" class="fea icon-ex-md me-3"></i>
                                <div class="flex-1">
                                    <h6 class="widget-title mb-0">Qualifications:</h6>
                                    <small class="text-primary mb-0">${offer.qualifications}</small>
                                </div>
                            </div>

                            <div class="d-flex widget align-items-center mt-3">
                                <i data-feather="dollar-sign" class="fea icon-ex-md me-3"></i>
                                <div class="flex-1">
                                    <h6 class="widget-title mb-0">Salary:</h6>
                                    <small class="text-primary mb-0">+${offer.salary}$</small>
                                </div>
                            </div>

                            <div class="d-flex widget align-items-center mt-3">
                                <i data-feather="clock" class="fea icon-ex-md me-3"></i>
                                <div class="flex-1">
                                    <h6 class="widget-title mb-0">Date posted:</h6>
                                    <small class="text-primary mb-0 mb-0">${offer.datePosted}</small>
                                </div>
                            </div>
                            <div class="d-flex widget align-items-center mt-3">
                                <i data-feather="clock" class="fea icon-ex-md me-3"></i>
                                <div class="flex-1">
                                    <h6 class="widget-title mb-0">Date finished:</h6>
                                    <small class="text-primary mb-0 mb-0">${offer.dateFinished}</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7 col-md-7">
                    <div class="card border-0">
                        <form action="application?action=applyOffer" method="post" class="rounded shadow p-4">
                            <input type="hidden" name="offerId" value="${offer.id}"/>
                            <div class="row">
                                <div class="col-12">
                                    <div class="mb-3">
                                        <label class="form-label fw-semibold">Your Name :<span
                                                class="text-danger">*</span></label>
                                        <input name="name" id="name2" type="text" class="form-control"
                                               placeholder="Name :">
                                    </div>
                                </div><!--end col-->
                                <div class="col-12">
                                    <div class="mb-3">
                                        <label class="form-label fw-semibold">Your Email :<span
                                                class="text-danger">*</span></label>
                                        <input name="email" id="email2" type="email" class="form-control"
                                               placeholder="Your email :">
                                    </div>
                                </div><!--end col-->
                                <div class="col-12">
                                    <div class="mb-3">
                                        <label class="form-label fw-semibold">Your Phone no. :<span class="text-danger">*</span></label>
                                        <input name="phoneNo" id="number2" type="number" class="form-control"
                                               placeholder="Your phone no. :">
                                    </div>
                                </div><!--end col-->
                                <div class="col-12">
                                    <div class="mb-3">
                                        <label class="form-label fw-semibold">Job Title :</label>
                                        <input name="subject" id="subject2" class="form-control" placeholder="Title :">
                                    </div>
                                </div><!--end col-->
                            </div><!--end col-->
                            <div class="col-12">
                                <div class="mb-3">
                                    <label class="form-label fw-semibold">Description :</label>
                                    <textarea name="comments" id="comments2" rows="4" class="form-control"
                                              placeholder="Describe the job :"></textarea>
                                </div>
                            </div><!--end col-->
                            <div class="row">
                                <div class="col-12">
                                    <input type="submit" id="submit2" name="send" class="submitBnt btn btn-primary"
                                           value="Apply Now">
                                </div><!--end col-->
                            </div><!--end row-->
                        </form><!--end form-->
                    </div><!--end custom-form-->
                </div>
            </div>
        </div><!--end container-->
    </section>
    <!--end section-->
    <!-- Job apply form End -->
</layout:homeLayout>


<%--<html>--%>
<%--<head>--%>
<%--  <title>Apply for Offer</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h2>Apply for Offer</h2>--%>

<%--<c:if test="${not empty offer}">--%>
<%--  <h3>Offer Details</h3>--%>
<%--  <p>Company Name: ${offer.companyName}</p>--%>
<%--  <p>Location: ${offer.location}</p>--%>
<%--  <p>Job Type: ${offer.jobType}</p>--%>
<%--  <p>Experience: ${offer.experience}</p>--%>
<%--  <p>Qualifications: ${offer.qualifications}</p>--%>
<%--  <p>Salary: ${offer.salary}</p>--%>
<%--  <p>Date Finished: ${offer.dateFinished}</p>--%>

<%--  <h3>Application Form</h3>--%>
<%--  <form action="application?action=applyOffer" method="post">--%>
<%--    <input type="hidden" name="offerId" value="${offer.id}"/>--%>

<%--    <label for="name">Name:</label>--%>
<%--    <input type="text" id="name" name="name" required/><br/>--%>

<%--    <label for="email">Email:</label>--%>
<%--    <input type="email" id="email" name="email" required/><br/>--%>

<%--    <label for="phoneNo">Phone Number:</label>--%>
<%--    <input type="text" id="phoneNo" name="phoneNo" required/><br/>--%>

<%--    <label for="jobTypes">Job Title:</label>--%>
<%--    <input type="text" id="jobTypes" name="jobTitle" required/><br/>--%>

<%--    <label for="description">Description:</label><br/>--%>
<%--    <textarea id="description" name="description" rows="4" cols="50" required></textarea><br/>--%>

<%--    <input type="submit" value="Submit Application"/>--%>
<%--  </form>--%>
<%--</c:if>--%>
<%--<c:if test="${empty offer}">--%>
<%--  <p>Offer not found.</p>--%>
<%--</c:if>--%>
<%--</body>--%>
<%--</html>--%>
