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
            <div class="row g-4">
                <c:forEach var="leave" items="${leaves}">
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="job-post job-type-three rounded shadow bg-white p-4">
                            <div class="d-flex justify-content-between">
                                <div>

                                    <a href="employer-profile.html"
                                       class="h4 company text-dark d-block mt-2">${leave.employee.name}</a>
                                </div>
                                <form action="leave" method="post" id="statusForm">
                                    <input type="hidden" name="action" value="updateLeaveStatus">
                                    <input type="hidden" name="leaveId" value="${leave.id}">
                                    <select name="status" class="custom-select" onchange="this.form.submit()">
                                        <c:forEach var="status" items="${status}">
                                            <option value="${status}">${status}</option>
                                        </c:forEach>
                                    </select><br><br>
                                </form>
                            </div>

                            <div>
                                <p class="text-muted mt-2">${leave.periode}</p>

                                <ul class="list-unstyled mb-0">
                                    <li class="d-inline-block me-1"><a href="#" class="badge bg-primary">${leave.leaveDate}</a>
                                    </li>
                                    <li class="d-inline-block me-1"><a href="#" class="badge bg-primary">${leave.leaveReason}</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--end col-->
                </c:forEach>
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
    </section>
    <!--end section-->
    <!-- End -->

</layout:homeLayout>