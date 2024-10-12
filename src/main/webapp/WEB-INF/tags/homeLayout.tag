<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ attribute name="title" required="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${title}</title>
    <meta name="description" content="Job Listing Bootstrap 5 Template"/>
    <meta name="keywords"
          content="Onepage, creative, modern, bootstrap 5, multipurpose, clean, Job Listing, Job Board, Job, Job Portal"/>
    <meta name="author" content="Shreethemes"/>
    <meta name="website" content="https://shreethemes.in/"/>
    <meta name="email" content="support@shreethemes.in"/>
    <meta name="version" content="1.0.0"/>
    <!-- favicon -->
    <link href="assets/images/favicon.ico" rel="shortcut icon">
    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <link href="assets/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <link href="assets/css/button.css" type="text/css" rel="stylesheet"/>
    <link href="assets/css/tiny-slider.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/tobii.min.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/choices.min.css" rel="stylesheet"/>
    <link href="assets/css/materialdesignicons.min.css" rel="stylesheet" type="text/css"/>
    <!-- Custom  Css -->
    <link href="assets/css/style.min.css" rel="stylesheet" type="text/css" id="theme-opt"/>
</head>

<body>
<!-- Navbar STart -->
<header id="topnav" class="defaultscroll sticky">
    <div class="container">
        <a class="logo" href="index.html">
                    <span class="logo-light-mode">
                        <img src="assets/images/logo-black.png"  width="200" class="l-dark" alt="">
                        <img src="assets/images/logo-white1.png" width="200" class="l-light" alt="">
                    </span>
            <img src="assets/images/logo-light.png" class="logo-dark-mode" alt="">
        </a>

        <div class="menu-extras">
            <div class="menu-item">
                <a class="navbar-toggle" id="isToggle" onclick="toggleMenu()">
                    <div class="lines">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </a>
            </div>
        </div>

        <ul class="buy-button list-inline mb-0">
            <li class="list-inline-item ps-1 mb-0">
                <div class="dropdown">
                    <button type="button" class="dropdown-toggle btn btn-sm btn-icon btn-pills btn-primary"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i data-feather="search" class="icons"></i>
                    </button>
                    <div class="dropdown-menu dd-menu dropdown-menu-end bg-white rounded border-0 mt-3 p-0"
                         style="width: 240px;">
                        <div class="search-bar">
                            <div id="itemSearch" class="menu-search mb-0">
                                <form role="search" method="get" id="searchItemform" class="searchform">
                                    <input type="text" class="form-control rounded border" name="s" id="searchItem"
                                           placeholder="Search...">
                                    <input type="submit" id="searchItemsubmit" value="Search">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </li>

            <li class="list-inline-item ps-1 mb-0">
                <div class="dropdown dropdown-primary">
                    <c:choose>
                        <c:when test="${not empty sessionScope.user}">
                            <button type="button" class="dropdown-toggle btn btn-sm btn-icon btn-pills btn-primary"
                                    data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <div class="user-initial">
                                    <span class="initial">${user.firstLetter}</span>
                                </div>
                            </button>
                        </c:when>

                        <c:otherwise>
                            <a href="auth?action=login">
                                <button class="authBtn btn-primary">
                                    <span class="span-mother">
                                        <span>S</span><span>E</span><span>C</span><span>O</span><span>N</span>
                                        <span>N</span><span>E</span><span>C</span><span>T</span><span>E</span><span>R</span>
                                    </span>
                                                        <span class="span-mother2">
                                        <span>S</span><span>E</span><span>C</span><span>O</span><span>N</span>
                                        <span>N</span><span>E</span><span>C</span><span>T</span><span>E</span><span>R</span>
                                    </span>
                                </button>
                            </a>
                        </c:otherwise>
                    </c:choose>

                    <div class="dropdown-menu dd-menu dropdown-menu-end bg-white rounded shadow border-0 mt-3">
                        <a href="candidate-profile.html" class="dropdown-item fw-medium fs-6"><i data-feather="user"
                                                                                                 class="fea icon-sm me-2 align-middle"></i>Profile</a>
                        <a href="candidate-profile-setting.html" class="dropdown-item fw-medium fs-6"><i
                                data-feather="settings" class="fea icon-sm me-2 align-middle"></i>Settings</a>
                        <div class="dropdown-divider border-top"></div>
                        <a href="lock-screen.html" class="dropdown-item fw-medium fs-6"><i data-feather="lock"
                                                                                           class="fea icon-sm me-2 align-middle"></i>Lockscreen</a>
                        <a href="auth?action=logout" class="dropdown-item fw-medium fs-6"><i data-feather="log-out"
                                                                                     class="fea icon-sm me-2 align-middle"></i>Logout</a>
                    </div>
                </div>
            </li>
        </ul>

        <div id="navigation">
            <!-- Navigation Menu-->
            <ul class="navigation-menu nav-right nav-light">
                <li><a href="/EmployeeTrackerV2_war_exploded" class="sub-menu-item">Home</a></li>

                <li><a href="offer?action=listOffers" class="sub-menu-item">Jobs</a></li>
                <li><a href="application?action=displayAllApplications" class="sub-menu-item">Applications</a></li>
                <li><a href="leave?action=listLeaves" class="sub-menu-item">Leaves</a></li>


                <li><a href="EmployeeTrackerV2_war_exploded/" class="sub-menu-item">Contact Us</a></li>
            </ul><!--end navigation menu-->
        </div><!--end navigation-->
    </div>
</header>

<div id="main-content">
    <jsp:doBody/>
</div>


<!-- Footer Start -->
<footer class="bg-footer">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="py-5">
                    <div class="row align-items-center">
                        <div class="col-sm-3">
                            <div class="text-center text-sm-start">
                                <img src="assets/images/logo-white1.png" width="200" class="l-light" alt="">
                            </div>
                        </div>

                        <div class="col-sm-9 mt-4 mt-sm-0">
                            <ul class="list-unstyled footer-list terms-service text-center text-sm-end mb-0">
                                <li class="list-inline-item my-2"><a href="index.html"
                                                                     class="text-foot fs-6 fw-medium me-2"><i
                                        class="mdi mdi-circle-small"></i> Home</a></li>
                                <li class="list-inline-item my-2"><a href="services.html"
                                                                     class="text-foot fs-6 fw-medium me-2"><i
                                        class="mdi mdi-circle-small"></i> How it works</a></li>
                                <li class="list-inline-item my-2"><a href="job-post.html"
                                                                     class="text-foot fs-6 fw-medium me-2"><i
                                        class="mdi mdi-circle-small"></i> Create a job</a></li>
                                <li class="list-inline-item my-2"><a href="aboutus.html"
                                                                     class="text-foot fs-6 fw-medium me-2"><i
                                        class="mdi mdi-circle-small"></i> About us</a></li>
                                <li class="list-inline-item my-2"><a href="pricing.html"
                                                                     class="text-foot fs-6 fw-medium"><i
                                        class="mdi mdi-circle-small"></i> Plans</a></li>
                            </ul>
                        </div><!--end col-->
                    </div><!--end row-->
                </div>
            </div><!--end col-->
        </div><!--end row-->
    </div><!--end container-->
</footer><!--end footer-->
<!-- Footer End -->

<!-- Back to top -->
<a href="#" onclick="topFunction()" id="back-to-top" class="back-to-top rounded fs-5"><i data-feather="arrow-up"
                                                                                         class="fea icon-sm align-middle"></i></a>
<!-- Back to top -->

<!-- JAVASCRIPTS -->
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/tiny-slider.js"></script>
<script src="assets/js/tobii.min.js"></script>
<script src="assets/js/choices.min.js"></script>
<script src="assets/js/feather.min.js"></script>
<!-- Custom -->
<script src="assets/js/plugins.init.js"></script>
<script src="assets/js/app.js"></script>
</body>

</html>
``
