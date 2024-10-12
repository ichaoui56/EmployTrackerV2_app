<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<layout:homeLayout title="EmployeeTracker | Jobs">
    <!-- Hero Start -->
    <section class="bg-half-170 d-table w-100" style="background: url('assets/images/hero/bg.jpg');">
        <div class="bg-overlay bg-gradient-overlay"></div>
        <div class="container">
            <div class="row mt-5 justify-content-center">
                <div class="col-12">
                    <div class="title-heading text-center">
                        <h5 class="heading fw-semibold mb-0 sub-heading text-white title-dark">All Offers</h5>
                    </div>
                </div><!--end col-->
            </div><!--end row-->
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

    <!-- Start -->
    <section class="section">
        <div class="container">
            <div class="row justify-content-center">
                <c:if test="${user != null && user.role == 'RECRUITER'}">

                    <div class="col-12 mt-4">
                        <div class="features-absolute">
                            <div class="d-md-flex justify-content-between align-items-center bg-white shadow rounded p-4">
                                <form class="card-body text-start">
                                    <div class="registration-form text-dark text-start">
                                        <div style="display: flex;justify-content: center; align-items: center">
                                            <div class="col-lg-3 col-md-6 col-12">
                                                <a type="submit" href="addOfferForm.jsp"
                                                   style="height: 60px; padding-top: 17px;"
                                                   class="btn btn-primary searchbtn w-100">
                                                    Add Offer
                                                </a>
                                            </div>
                                        </div>
                                    </div><!--end row-->
                                </form><!--end form-->
                            </div>
                        </div>
                    </div>
                    <!--end col-->
                </c:if>

            </div><!--end row-->
        </div><!--end container-->

        <div class="container mt-60">
            <div class="row g-4">
                <c:forEach var="offer" items="${offers}">
                    <div class="col-12">
                        <div class="job-post job-post-list rounded shadow p-4 d-md-flex align-items-center justify-content-between position-relative">
                            <div class="d-flex align-items-center w-310px">
                                <div class="ms-3">
                                    <a href="job-detail-one.html" class="h5 title text-dark">${offer.companyName}</a>
                                </div>
                            </div>

                            <div class="d-flex align-items-center justify-content-between d-md-block mt-3 mt-md-0 w-100px">
                                <span class="badge bg-soft-primary rounded-pill">${offer.jobType}</span>
                                <span class="text-muted d-flex align-items-center fw-medium mt-md-2"><i
                                        data-feather="clock"
                                        class="fea icon-sm me-1 align-middle"></i>${offer.datePosted}</span>
                            </div>

                            <div class="d-flex align-items-center justify-content-between d-md-block mt-2 mt-md-0 w-130px">
                                <span class="text-muted d-flex align-items-center"><i data-feather="map-pin"
                                                                                      class="fea icon-sm me-1 align-middle"></i>${offer.location}</span>
                                <span class="d-flex fw-medium mt-md-2">$${offer.salary}/mo</span>
                            </div>

                            <div class="mt-3 mt-md-0">
                                <a href="#" class="btn btn-sm btn-icon btn-pills btn-soft-primary bookmark"><i
                                        data-feather="bookmark" class="icons"></i></a>
                                <a href="application?action=applyOfferForm&offerId=${offer.id}"
                                   class="btn btn-sm btn-primary w-full ms-md-1">Apply Now</a>
                            </div>
                        </div>
                    </div>
                    <!--end col-->
                </c:forEach>
                <c:if test="${empty offers}">
                    <tr>
                        <td colspan="12" style="text-align: center;">No job offers available.</td>
                    </tr>
                </c:if>
            </div><!--end row-->

            <div class="row">
                <div class="col-12 mt-4 pt-2">
                    <ul class="pagination justify-content-center mb-0">
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true"><i class="mdi mdi-chevron-left fs-6"></i></span>
                            </a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item active"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true"><i class="mdi mdi-chevron-right fs-6"></i></span>
                            </a>
                        </li>
                    </ul>
                </div><!--end col-->
            </div><!--end row-->
        </div><!--end container-->

        <div class="container mt-100 mt-60">
            <div class="row justify-content-center mb-4 pb-2">
                <div class="col-12">
                    <div class="section-title text-center">
                        <h4 class="title mb-3">Here's why you'll love it Jobnova</h4>
                        <p class="text-muted para-desc mx-auto mb-0">Search all the open positions on the web. Get your
                            own personalized salary estimate. Read reviews on over 30000+ companies worldwide.</p>
                    </div>
                </div><!--end col-->
            </div><!--end row-->

            <div class="row">
                <div class="col-lg-3 col-md-4 col-sm-6 col-12 mt-4 pt-2">
                    <div class="position-relative features text-center p-4 rounded shadow bg-white">
                        <div class="feature-icon bg-soft-primary rounded shadow mx-auto position-relative overflow-hidden d-flex justify-content-center align-items-center">
                            <i data-feather="phone" class="fea icon-ex-md"></i>
                        </div>

                        <div class="mt-4">
                            <a href="#" class="title h5 text-dark">24/7 Support</a>
                            <p class="text-muted mt-3 mb-0">Many desktop publishing now use and a search for job.</p>
                            <div class="mt-3">
                                <a href="#" class="btn btn-link primary text-dark">Read More <i
                                        class="mdi mdi-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div><!--end col-->

                <div class="col-lg-3 col-md-4 col-sm-6 col-12 mt-4 pt-2">
                    <div class="position-relative features text-center p-4 rounded shadow bg-white">
                        <div class="feature-icon bg-soft-primary rounded shadow mx-auto position-relative overflow-hidden d-flex justify-content-center align-items-center">
                            <i data-feather="cpu" class="fea icon-ex-md"></i>
                        </div>

                        <div class="mt-4">
                            <a href="#" class="title h5 text-dark">Tech & Startup Jobs</a>
                            <p class="text-muted mt-3 mb-0">Many desktop publishing now use and a search for job.</p>
                            <div class="mt-3">
                                <a href="#" class="btn btn-link primary text-dark">Read More <i
                                        class="mdi mdi-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div><!--end col-->

                <div class="col-lg-3 col-md-4 col-sm-6 col-12 mt-4 pt-2">
                    <div class="position-relative features text-center p-4 rounded shadow bg-white">
                        <div class="feature-icon bg-soft-primary rounded shadow mx-auto position-relative overflow-hidden d-flex justify-content-center align-items-center">
                            <i data-feather="activity" class="fea icon-ex-md"></i>
                        </div>

                        <div class="mt-4">
                            <a href="#" class="title h5 text-dark">Quick & Easy</a>
                            <p class="text-muted mt-3 mb-0">Many desktop publishing now use and a search for job.</p>
                            <div class="mt-3">
                                <a href="#" class="btn btn-link primary text-dark">Read More <i
                                        class="mdi mdi-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div><!--end col-->

                <div class="col-lg-3 col-md-4 col-sm-6 col-12 mt-4 pt-2">
                    <div class="position-relative features text-center p-4 rounded shadow bg-white">
                        <div class="feature-icon bg-soft-primary rounded shadow mx-auto position-relative overflow-hidden d-flex justify-content-center align-items-center">
                            <i data-feather="clock" class="fea icon-ex-md"></i>
                        </div>

                        <div class="mt-4">
                            <a href="#" class="title h5 text-dark">Save Time</a>
                            <p class="text-muted mt-3 mb-0">Many desktop publishing now use and a search for job.</p>
                            <div class="mt-3">
                                <a href="#" class="btn btn-link primary text-dark">Read More <i
                                        class="mdi mdi-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div><!--end col-->
            </div><!--end row-->
        </div><!--end container-->
    </section>
    <!--end section-->
    <!-- End -->
</layout:homeLayout>
<%--<html>--%>
<%--<head>--%>
<%--    <title>List of Job Offers</title>--%>
<%--    <style>--%>
<%--        body {--%>
<%--            font-family: Arial, sans-serif;--%>
<%--            margin: 20px;--%>
<%--        }--%>
<%--        h1 {--%>
<%--            color: #333;--%>
<%--        }--%>
<%--        table {--%>
<%--            width: 100%;--%>
<%--            border-collapse: collapse;--%>
<%--            margin-top: 20px;--%>
<%--        }--%>
<%--        th, td {--%>
<%--            border: 1px solid #ddd;--%>
<%--            padding: 8px;--%>
<%--            text-align: left;--%>
<%--        }--%>
<%--        th {--%>
<%--            background-color: #f2f2f2;--%>
<%--        }--%>
<%--        tr:hover {--%>
<%--            background-color: #f1f1f1;--%>
<%--        }--%>
<%--        .apply-button {--%>
<%--            background-color: #4CAF50; /* Green */--%>
<%--            color: white;--%>
<%--            border: none;--%>
<%--            padding: 10px 15px;--%>
<%--            text-align: center;--%>
<%--            text-decoration: none;--%>
<%--            display: inline-block;--%>
<%--            font-size: 16px;--%>
<%--            margin: 4px 2px;--%>
<%--            cursor: pointer;--%>
<%--            border-radius: 5px;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Job Offers</h1>--%>
<%--<table>--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--        <th>ID</th>--%>
<%--        <th>Company Name</th>--%>
<%--        <th>Location</th>--%>
<%--        <th>Job Type</th>--%>
<%--        <th>Experience</th>--%>
<%--        <th>Qualifications</th>--%>
<%--        <th>Salary</th>--%>
<%--        <th>Date Posted</th>--%>
<%--        <th>Date Finished</th>--%>
<%--        <th>Status</th>--%>
<%--        <th>Action</th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    <c:forEach var="offer" items="${offers}">--%>
<%--        <tr>--%>
<%--            <td>${offer.id}</td>--%>
<%--            <td>${offer.companyName}</td>--%>
<%--            <td>${offer.location}</td>--%>
<%--            <td>${offer.jobType}</td>--%>
<%--            <td>${offer.experience}</td>--%>
<%--            <td>${offer.qualifications}</td>--%>
<%--            <td>${offer.salary}</td>--%>
<%--            <td>${offer.datePosted}</td>--%>
<%--            <td>${offer.dateFinished}</td>--%>
<%--            <td>${offer.status}</td>--%>
<%--            <td>--%>
<%--                <a class="apply-button" href="application?action=applyOfferForm&offerId=${offer.id}">Apply</a>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--    <c:if test="${empty offers}">--%>
<%--        <tr>--%>
<%--            <td colspan="12" style="text-align: center;">No job offers available.</td>--%>
<%--        </tr>--%>
<%--    </c:if>--%>
<%--    </tbody>--%>
<%--</table>--%>
<%--<br>--%>
<%--<a href="offer?action=addOfferForm">Add New Offer</a> <!-- Link to add new offers -->--%>
<%--</body>--%>
<%--</html>--%>
