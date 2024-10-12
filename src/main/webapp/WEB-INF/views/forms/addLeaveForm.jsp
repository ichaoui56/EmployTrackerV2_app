<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<layout:homeLayout title="EmployeeTracker | Add Leave Form">
    <!-- Hero Start -->
    <section class="bg-half-170 d-table w-100" style="background: url('assets/images/hero/bg.jpg');">
        <div class="bg-overlay bg-gradient-overlay"></div>
        <div class="container">
            <div class="row mt-5 justify-content-center">
                <div class="col-12">
                    <div class="title-heading text-center">
                        <!-- Updated Heading -->
                        <h5 class="heading fw-semibold mb-0 sub-heading text-white title-dark">Apply for Leave</h5>
                    </div>
                </div><!--end col-->
            </div><!--end row-->

            <div class="position-middle-bottom">
                <nav aria-label="breadcrumb" class="d-block">
                    <ul class="breadcrumb breadcrumb-muted mb-0 p-0">
                        <li class="breadcrumb-item"><a href="index.html">EmployeeTracker</a></li>
                        <li class="breadcrumb-item"><a href="leave?action=listLeaves">Leaves</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Apply for Leave</li>
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

    <!-- Leave apply form Start -->
    <section class="section bg-light">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-7 col-lg-8">
                    <div class="card border-0">
                        <!-- Updated form tag with enctype -->
                        <form class="rounded shadow p-4" action="leave" method="post" enctype="multipart/form-data">
                            <input type="hidden" name="action" value="addLeave">
                            <div class="row">
                                <h5 class="mb-3">Leave Details:</h5>
                                <div class="col-12">
                                    <div class="mb-3">
                                        <label class="form-label fw-semibold">Leave Reason :</label>
                                        <input name="leaveReason" id="subject2" class="form-control"
                                               placeholder="Leave Reason :" required>
                                    </div>
                                    <!-- Date and Period Inputs -->
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label fw-semibold">Leave Date :</label>
                                                <input name="leaveDate" id="dateFinished" type="date" class="form-control" required>
                                            </div>
                                        </div><!--end col-->
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label fw-semibold">Period:</label>
                                                <input name="periode" id="Experience" type="number" class="form-control"
                                                       placeholder="Period :" required>
                                            </div>
                                        </div><!--end col-->
                                    </div>
                                    <!-- Document Upload Field -->
                                    <div class="mb-3">
                                        <label class="form-label fw-semibold">Upload Document:</label>
                                        <input name="document" type="file" class="form-control"
                                               accept=".pdf,.doc,.docx,image/*" required>
                                    </div>
                                </div><!--end col-->
                            </div>

                            <div class="row">
                                <div class="col-12">
                                    <input type="submit" id="submit2" name="send" class="submitBtn btn btn-primary"
                                           value="Submit Leave Request">
                                </div><!--end col-->
                            </div><!--end row-->
                            <c:if test="${not empty errorMessage}">
                                <div style="margin-top: 10px" class=" alert alert-danger">
                                        ${errorMessage}
                                </div>
                            </c:if>
                        </form><!--end form-->
                    </div><!--end custom-form-->
                </div>
            </div>
        </div><!--end container-->
    </section>
    <!--end section-->
    <!-- Leave apply form End -->
</layout:homeLayout>
