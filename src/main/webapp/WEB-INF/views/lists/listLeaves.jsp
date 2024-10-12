<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<layout:homeLayout title="EmployeeTracker | Applications">
    <!-- Hero Start -->
    <!-- Hero Start -->
    <section class="bg-half-170 d-table w-100" style="background: url('assets/images/hero/bg.jpg');">
        <div class="bg-overlay bg-gradient-overlay"></div>
        <div class="container">
            <div class="row mt-5 justify-content-center">
                <div class="col-12">
                    <div class="title-heading text-center">
                        <h5 class="heading fw-semibold mb-0 sub-heading text-white title-dark">Job Leaves</h5>
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
        <div class="container mt-60">
            <div class="row justify-content-center">

                <div class="col-12 mt-4">
                    <div class="features-absolute">
                        <div class="d-md-flex justify-content-between align-items-center bg-white shadow rounded p-4">
                            <form class="card-body text-start">
                                <div class="registration-form text-dark text-start">
                                    <div style="display: flex;justify-content: center; align-items: center">
                                        <div class="col-lg-3 col-md-6 col-12">
                                            <a type="submit" href="leave?action=addLeaveForm"
                                               style="height: 60px; padding-top: 17px;"
                                               class="btn btn-primary searchbtn w-100">
                                                Add Leave
                                            </a>
                                        </div>
                                    </div>
                                </div><!--end row-->
                            </form><!--end form-->
                        </div>
                    </div>
                </div>
                <!--end col-->

            </div><!--end row-->
            <div class="row g-4">
                <c:if test="${user != null}">
                    <c:choose>
                        <c:when test="${user.role == 'ADMIN' || user.role == 'RECRUITER'}">
                            <c:forEach var="leave" items="${leaves}">
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="job-post job-type-three rounded shadow bg-white p-4">
                                        <div class="d-flex justify-content-between">
                                            <div>
                                                <a href="employer-profile.html" class="h4 company text-dark d-block mt-2">${leave.employee.name}</a>
                                            </div>

                                        </div>
                                        <div>
                                            <p class="text-muted mt-2">${leave.periode}</p>
                                            <ul class="list-unstyled mb-0">
                                                <li class="d-inline-block me-1"><a href="#" class="badge bg-primary">${leave.leaveDate}</a></li>
                                                <li class="d-inline-block me-1"><a href="#" class="badge bg-primary">${leave.leaveReason}</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:when>
                        <c:when test="${user.role == 'EMPLOYEE'}">
                            <c:forEach var="leave" items="${leaves}">
                                <c:if test="${leave.employee.id == user.id}">
                                    <div class="col-lg-4 col-md-6 col-12">
                                        <div class="job-post job-type-three rounded shadow bg-white p-4">
                                            <div class="d-flex justify-content-between">
                                                <div>
                                                    <a href="employer-profile.html" class="h4 company text-dark d-block mt-2">${leave.employee.name}</a>
                                                </div>

                                            </div>
                                            <div>
                                                <p class="text-muted mt-2">${leave.periode}</p>
                                                <ul class="list-unstyled mb-0">
                                                    <li class="d-inline-block me-1"><a href="#" class="badge bg-primary">${leave.leaveDate}</a></li>
                                                    <li class="d-inline-block me-1"><a href="#" class="badge bg-primary">${leave.leaveReason}</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </c:when>
                    </c:choose>
                </c:if>
            </div><!--end row-->
        </div><!--end container-->
    </section>
    <!--end section-->
    <!-- End -->

</layout:homeLayout>