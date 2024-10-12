/*!

=========================================================
* Argon Dashboard 2 Pro Tailwind - v1.0.0
=========================================================

* Product Page: https://www.creative-tim.com/product/argon-dashboard-pro-tailwind
* Copyright 2022 Creative Tim (https://www.creative-tim.com)


* Coded by www.creative-tim.com

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

*/
var page_path = window.location.pathname.split("/"), current_page = page_path.pop(), parent_page = page_path.pop(),
    root_page = page_path.pop(), root = page_path.pop();
if ("documentation.html" == current_page) var to_build = "../"; else if ("index.html" == current_page || "" == current_page) var to_build = "./"; else if ("pages" == root) var to_build = "../../../"; else var to_build = "../../";

function loadStylesheet(b) {
    let a = document.createElement("link");
    a.setAttribute("href", b), a.setAttribute("type", "text/css"), a.setAttribute("rel", "stylesheet"), document.head.appendChild(a)
}

function loadJS(b, c) {
    let a = document.createElement("script");
    a.setAttribute("src", b), a.setAttribute("type", "text/javascript"), a.setAttribute("async", c), document.head.appendChild(a)
}

loadStylesheet(to_build + "assets-dash/css/perfect-scrollbar.css"), loadJS(to_build + "assets-dash/js/perfect-scrollbar.js", !0), document.querySelector("[slider]") && loadJS(to_build + "assets-dash/js/carousel.js", !0), document.querySelector("canvas") && loadJS(to_build + "assets-dash/js/charts.js", !1), document.querySelector('[data-toggle="widget-calendar"]') && (loadStylesheet(to_build + "assets-dash/css/full-calendar.css"), loadJS(to_build + "assets-dash/js/full-calendar.js", !1)), document.querySelector('[data-toggle="calendar"]') && (loadStylesheet(to_build + "assets-dash/css/full-calendar.css"), loadJS(to_build + "assets-dash/js/full-calendar.js", !1)), document.querySelector("[data-target='tooltip_trigger']") && (loadJS(to_build + "assets-dash/js/tooltips.js", !0), loadStylesheet(to_build + "assets-dash/css/tooltips.css")), document.querySelector("#sliderRegular") && (loadStylesheet(to_build + "assets-dash/css/noui-slider.css"), loadJS(to_build + "assets-dash/js/slider.js", !0)), document.querySelector("[choice]") && (loadStylesheet(to_build + "assets-dash/css/choices.css"), loadJS(to_build + "assets-dash/js/choices.js", !0)), document.querySelector("#mapid.leaflet") && (loadStylesheet(to_build + "assets-dash/css/leaflet.css"), loadJS(to_build + "assets-dash/js/map.js", !0)), document.querySelector("[countTo]") && loadJS(to_build + "assets-dash/js/count-to.js", !0), document.querySelector("[nav-pills]") && (document.querySelector("[nav-pills][aria-controls='camera-gallery']") && loadJS(to_build + "assets-dash/js/pills-gallery.js", !0), document.querySelector("[nav-pills][aria-controls='pricing-plans']") && loadJS(to_build + "assets-dash/js/pills-pricing.js", !0), loadJS(to_build + "assets-dash/js/nav-pills.js", !0)), document.querySelector("[fixed-plugin]") && loadJS(to_build + "assets-dash/js/fixed-plugin.js", !0), document.querySelector("aside") && (loadJS(to_build + "assets-dash/js/sidenav.js", !0), "landing.html" != current_page && loadJS(to_build + "assets-dash/js/sidenav-burger.js", !0)), document.querySelector("[dropdown-trigger]") && loadJS(to_build + "assets-dash/js/dropdown.js", !0), document.querySelector("[navbar-main]") && loadJS(to_build + "assets-dash/js/navbar-sticky.js", !0), document.querySelector(".github-button") && loadJS("https://buttons.github.io/buttons.js", !0), document.querySelector("[multisteps-form]") && loadJS(to_build + "assets-dash/js/multisteps-form.js", !0), document.querySelector("[profile-visibility-toggle]") && loadJS(to_build + "assets-dash/js/toggle.js", !0), document.querySelector("[editor-quill]") && (loadStylesheet(to_build + "assets-dash/css/editor-quill.css"), loadJS(to_build + "assets-dash/js/editor-quill.js", !0)), document.querySelector("[datetimepicker]") && (loadStylesheet(to_build + "assets-dash/css/flatpickr.css"), loadJS(to_build + "assets-dash/js/flatpickr.js", !0)), document.querySelector("[dropzone]") && (loadStylesheet(to_build + "assets-dash/css/dropzone.css"), loadJS(to_build + "assets-dash/js/dropzone.js", !0)), document.querySelector("[notification]") && loadJS(to_build + "assets-dash/js/notify.js", !0), document.querySelector("[alert]") && loadJS(to_build + "assets-dash/js/alert.js", !0), document.querySelector("[toast]") && loadJS(to_build + "assets-dash/js/toast.js", !0), document.querySelector("[accordion]") && loadJS(to_build + "assets-dash/js/accordion.js", !0), document.querySelector("[nav-nested-menu]") && loadJS(to_build + "assets-dash/js/navbar-dropdown.js", !0), document.querySelector("[nav-collapse-trigger]") && loadJS(to_build + "assets-dash/js/navbar-collapse.js", !0), document.querySelector("#myKanban") && (loadJS(to_build + "assets-dash/js/kanban.js", !0), loadStylesheet(to_build + "assets-dash/css/kanban.css")), document.querySelector("[checkbox-color-label]") && loadJS(to_build + "assets-dash/js/label-color.js", !0), document.querySelector("[data-toggle='modal']") && loadJS(to_build + "assets-dash/js/modal.js", !0), document.querySelector("[datatable]") && (loadStylesheet(to_build + "assets-dash/css/datatable.css"), loadJS(to_build + "assets-dash/js/datatable.js", !0)), document.querySelector("[onclick^='soft.showSwal']") && (loadJS(to_build + "assets-dash/js/sweet-alerts.js", !0), loadStylesheet(to_build + "assets-dash/css/sweet-alerts.css")), document.querySelector("[photo-swipe-gallery]") && (loadJS(to_build + "assets-dash/js/photo-swipe.js", !0), loadStylesheet(to_build + "assets-dash/css/photo-swipe.css"))