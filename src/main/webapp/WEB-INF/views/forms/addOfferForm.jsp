<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<layout:homeLayout title="EmployeeTracker | Add Offer Form">
    <!-- Hero Start -->
    <section class="bg-half-170 d-table w-100" style="background: url('assets/images/hero/bg.jpg');">
        <div class="bg-overlay bg-gradient-overlay"></div>
        <div class="container">
            <div class="row mt-5 justify-content-center">
                <div class="col-12">
                    <div class="title-heading text-center">
                        <h5 class="heading fw-semibold mb-0 sub-heading text-white title-dark">Create a Job Post</h5>
                    </div>
                </div><!--end col-->
            </div><!--end row-->

            <div class="position-middle-bottom">
                <nav aria-label="breadcrumb" class="d-block">
                    <ul class="breadcrumb breadcrumb-muted mb-0 p-0">
                        <li class="breadcrumb-item"><a href="index.html">Jobnova</a></li>
                        <li class="breadcrumb-item"><a href="job-grid-one.html">Job</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Job Post</li>
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
                <div class="col-xl-7 col-lg-8">
                    <div class="card border-0">
                        <form class="rounded shadow p-4" action="offer?action=addOffer" method="post">
                            <div class="row">
                                <h5 class="mb-3">Job Details:</h5>
                                <div class="col-6">
                                    <div class="mb-3">
                                        <label class="form-label fw-semibold">Company Name :</label>
                                        <input name="companyName" id="subject2" class="form-control" placeholder="Title :">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label fw-semibold">Location :</label>
                                        <input name="location" id="subject2" class="form-control" placeholder="Location :">
                                    </div>
                                </div><!--end col-->

                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label fw-semibold">Salary:</label>
                                        <input name="salary" id="subject2" class="form-control" placeholder="Salary :">
                                    </div>
                                </div><!--end col-->

                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label fw-semibold">Job Type:</label>
                                        <select name="jobType" class="form-control form-select" id="Type">
                                            <c:forEach var="type" items="${jobTypes}">
                                                <option value="${type}">${type}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div><!--end col-->
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label fw-semibold">Qualifications:</label>
                                        <input name="qualifications" id="Qualifications" type="text" class="form-control"
                                               placeholder="Qualifications">
                                    </div>
                                </div><!--end col-->
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label fw-semibold">Experience:</label>
                                        <input name="experience" id="Experience" type="text" class="form-control" placeholder="Experience">
                                    </div>
                                </div><!--end col-->
                            </div>

                            <!-- Date Finished Input -->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label fw-semibold">Date Finished:</label>
                                        <input name="dateFinished" id="dateFinished" type="date" class="form-control">
                                    </div>
                                </div><!--end col-->
                            </div>

                            <div class="row">
                                <div class="col-12">
                                    <input type="submit" id="submit2" name="send" class="submitBnt btn btn-primary" value="Post Now">
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

