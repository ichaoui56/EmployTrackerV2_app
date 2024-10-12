<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<layout:dashboardLayout title="EmployeeTracker | EMPLOYEE LIST">
    <main
            class="relative h-full max-h-screen transition-all duration-200 ease-in-out xl:ml-68 rounded-xl"
    >
        <nav
                navbar-main
                class="relative flex flex-wrap items-center justify-between px-0 py-2 mx-6 transition-all ease-in shadow-none duration-250 rounded-2xl lg:flex-nowrap lg:justify-start"
                navbar-scroll="false"
        >
            <div
                    class="flex items-center justify-between w-full px-4 py-1 mx-auto flex-wrap-inherit"
            >
                <nav>
                    <ol
                            class="flex flex-wrap pt-1 mr-12 bg-transparent rounded-lg sm:mr-16"
                    >
                        <li class="text-sm leading-normal breadcrumb-item">
                            <a class="text-white" href="javascript:;">
                                <i class="leading-none ni ni-box-2"></i>
                            </a>
                        </li>
                        <li
                                class="text-sm pl-2 leading-normal before:float-left before:pr-2 before:text-white before:content-['/']"
                        >
                            <a class="text-white opacity-50" href="javascript:;">Dashboard</a>
                        </li>
                        <li
                                class="text-sm pl-2 capitalize leading-normal text-white before:float-left before:pr-2 before:text-white before:content-['/']"
                                aria-current="page"
                        >
                            Employees List
                        </li>
                    </ol>
                    <h6 class="mb-0 font-bold text-white capitalize">Employees List</h6>
                </nav>
                <div class="flex items-center">
                    <a
                            mini-sidenav-burger
                            href="javascript:;"
                            class="hidden p-0 text-sm text-white transition-all ease-nav-brand xl:block"
                            aria-expanded="false"
                    >
                        <div class="w-4.5 overflow-hidden">
                            <i
                                    class="ease mb-0.75 relative block h-0.5 translate-x-[5px] rounded-sm bg-white transition-all"
                            ></i>
                            <i
                                    class="ease mb-0.75 relative block h-0.5 rounded-sm bg-white transition-all"
                            ></i>
                            <i
                                    class="ease relative block h-0.5 translate-x-[5px] rounded-sm bg-white transition-all"
                            ></i>
                        </div>
                    </a>
                </div>
                <div
                        class="flex items-center mt-2 grow sm:mt-0 sm:mr-6 md:mr-0 lg:flex lg:basis-auto"
                        id="navbar"
                >
                    <div class="flex items-center md:ml-auto md:pr-4">
                        <div
                                class="relative flex flex-wrap items-stretch w-full transition-all rounded-lg ease"
                        >
                <span
                        class="text-sm ease leading-5.6 absolute z-50 -ml-px flex h-full items-center whitespace-nowrap rounded-lg rounded-tr-none rounded-br-none border border-r-0 border-transparent bg-transparent py-2 px-2.5 text-center font-normal text-slate-500 transition-all"
                >
                  <i class="fas fa-search" aria-hidden="true"></i>
                </span>
                            <input
                                    type="text"
                                    class="pl-9 text-sm focus:shadow-primary-outline dark:bg-slate-850 dark:placeholder:text-white/80 dark:text-white/80 ease w-1/100 leading-5.6 relative -ml-px block min-w-0 flex-auto rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding py-2 pr-3 text-gray-700 transition-all placeholder:text-gray-500 focus:border-blue-500 focus:outline-none focus:transition-shadow"
                                    placeholder="Type here..."
                            />
                        </div>
                    </div>
                    <ul
                            class="flex flex-row justify-end pl-0 mb-0 list-none md-max:w-full"
                    >
                        <li class="flex items-center">
                            <a
                                    href="auth?action=logout"
                                    class="block px-0 py-2 text-sm font-semibold text-white transition-all ease-nav-brand"
                            >
                                <i class="fa fa-user sm:mr-1" aria-hidden="true"></i>
                                <span class="hidden sm:inline">Log Out</span>
                            </a>
                        </li>
                        <li class="flex items-center pl-4 xl:hidden">
                            <a
                                    sidenav-trigger
                                    class="block p-0 text-sm text-white transition-all ease-nav-brand"
                                    href="javascript:;"
                                    aria-expanded="false"
                            >
                                <div class="w-4.5 overflow-hidden">
                                    <i
                                            class="ease mb-0.75 relative block h-0.5 rounded-sm bg-white transition-all"
                                    ></i>
                                    <i
                                            class="ease mb-0.75 relative block h-0.5 rounded-sm bg-white transition-all"
                                    ></i>
                                    <i
                                            class="ease relative block h-0.5 rounded-sm bg-white transition-all"
                                    ></i>
                                </div>
                            </a>
                        </li>
                        <li class="flex items-center px-4">
                            <a
                                    href="javascript:;"
                                    class="p-0 text-sm text-white transition-all ease-nav-brand"
                            >
                                <i
                                        fixed-plugin-button-nav
                                        class="cursor-pointer fa fa-cog"
                                        aria-hidden="true"
                                ></i>
                            </a>
                        </li>

                        <li class="relative flex items-center pr-2">
                            <p class="hidden transform-dropdown-show"></p>
                            <a
                                    dropdown-trigger
                                    href="javascript:;"
                                    class="block p-0 text-sm text-white transition-all ease-nav-brand"
                                    aria-expanded="false"
                            >
                                <i class="cursor-pointer fa fa-bell" aria-hidden="true"></i>
                            </a>
                            <ul
                                    dropdown-menu
                                    class="text-sm transform-dropdown before:font-awesome before:leading-default before:duration-350 before:ease lg:shadow-3xl duration-250 min-w-44 before:sm:right-7 before:text-5.5 dark:bg-slate-850 pointer-events-none absolute right-0 top-0 z-50 origin-top list-none rounded-lg border-0 border-solid border-transparent bg-white bg-clip-padding px-2 py-4 text-left text-slate-500 opacity-0 transition-all before:absolute before:right-2 before:left-auto before:top-0 before:z-50 before:inline-block before:font-normal before:text-white before:antialiased before:transition-all before:content-['\f0d8'] sm:-mr-6 lg:absolute lg:right-0 lg:left-auto lg:mt-2 lg:block lg:cursor-pointer"
                            >
                                <li class="relative mb-2">
                                    <a
                                            class="group ease py-1.2 clear-both block w-full whitespace-nowrap rounded-lg bg-transparent px-4 duration-300 hover:bg-gray-200 hover:text-slate-700 dark:hover:bg-gray-200/80 lg:transition-colors"
                                            href="javascript:;"
                                    >
                                        <div class="flex py-1">
                                            <div class="my-auto">
                                                <img
                                                        src="../../../assets/img/team-2.jpg"
                                                        class="inline-flex items-center justify-center mr-4 text-sm text-white h-9 w-9 max-w-none rounded-xl"
                                                />
                                            </div>
                                            <div class="flex flex-col justify-center">
                                                <h6
                                                        class="mb-1 text-sm font-normal leading-normal group-hover:text-slate-700 dark:text-white"
                                                >
                                                    <span class="font-semibold">New message</span> from
                                                    Laur
                                                </h6>
                                                <p
                                                        class="mb-0 text-xs leading-tight text-slate-400 group-hover:text-slate-700 dark:text-white dark:opacity-80"
                                                >
                                                    <i class="mr-1 fa fa-clock" aria-hidden="true"></i>
                                                    13 minutes ago
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="relative mb-2">
                                    <a
                                            class="group ease py-1.2 clear-both block w-full whitespace-nowrap rounded-lg px-4 transition-colors duration-300 hover:bg-gray-200 hover:text-slate-700 dark:hover:bg-gray-200/80"
                                            href="javascript:;"
                                    >
                                        <div class="flex py-1">
                                            <div class="my-auto">
                                                <img
                                                        src="../../../assets/img/small-logos/logo-spotify.svg"
                                                        class="inline-flex items-center justify-center mr-4 text-sm text-white bg-gradient-to-tl from-zinc-800 to-zinc-700 dark:bg-gradient-to-tl dark:from-slate-750 dark:to-gray-850 h-9 w-9 max-w-none rounded-xl"
                                                />
                                            </div>
                                            <div class="flex flex-col justify-center">
                                                <h6
                                                        class="mb-1 text-sm font-normal leading-normal group-hover:text-slate-700 dark:text-white"
                                                >
                                                    <span class="font-semibold">New album</span> by
                                                    Travis Scott
                                                </h6>
                                                <p
                                                        class="mb-0 text-xs leading-tight text-slate-400 group-hover:text-slate-700 dark:text-white dark:opacity-80"
                                                >
                                                    <i class="mr-1 fa fa-clock" aria-hidden="true"></i>
                                                    1 day
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="relative">
                                    <a
                                            class="group ease py-1.2 clear-both block w-full whitespace-nowrap rounded-lg px-4 transition-colors duration-300 hover:bg-gray-200 hover:text-slate-700 dark:hover:bg-gray-200/80"
                                            href="javascript:;"
                                    >
                                        <div class="flex py-1">
                                            <div
                                                    class="inline-flex items-center justify-center my-auto mr-4 text-sm text-white transition-all duration-200 ease-nav-brand bg-gradient-to-tl from-slate-600 to-slate-300 h-9 w-9 rounded-xl"
                                            >
                                                <svg
                                                        width="12px"
                                                        height="12px"
                                                        viewBox="0 0 43 36"
                                                        version="1.1"
                                                        xmlns="http://www.w3.org/2000/svg"
                                                        xmlns:xlink="http://www.w3.org/1999/xlink"
                                                >
                                                    <title>credit-card</title>
                                                    <g
                                                            stroke="none"
                                                            stroke-width="1"
                                                            fill="none"
                                                            fill-rule="evenodd"
                                                    >
                                                        <g
                                                                transform="translate(-2169.000000, -745.000000)"
                                                                fill="#FFFFFF"
                                                                fill-rule="nonzero"
                                                        >
                                                            <g
                                                                    transform="translate(1716.000000, 291.000000)"
                                                            >
                                                                <g
                                                                        transform="translate(453.000000, 454.000000)"
                                                                >
                                                                    <path
                                                                            class="color-background"
                                                                            d="M43,10.7482083 L43,3.58333333 C43,1.60354167 41.3964583,0 39.4166667,0 L3.58333333,0 C1.60354167,0 0,1.60354167 0,3.58333333 L0,10.7482083 L43,10.7482083 Z"
                                                                            opacity="0.593633743"
                                                                    ></path>
                                                                    <path
                                                                            class="color-background"
                                                                            d="M0,16.125 L0,32.25 C0,34.2297917 1.60354167,35.8333333 3.58333333,35.8333333 L39.4166667,35.8333333 C41.3964583,35.8333333 43,34.2297917 43,32.25 L43,16.125 L0,16.125 Z M19.7083333,26.875 L7.16666667,26.875 L7.16666667,23.2916667 L19.7083333,23.2916667 L19.7083333,26.875 Z M35.8333333,26.875 L28.6666667,26.875 L28.6666667,23.2916667 L35.8333333,23.2916667 L35.8333333,26.875 Z"
                                                                    ></path>
                                                                </g>
                                                            </g>
                                                        </g>
                                                    </g>
                                                </svg>
                                            </div>
                                            <div class="flex flex-col justify-center">
                                                <h6
                                                        class="mb-1 text-sm font-normal leading-normal group-hover:text-slate-700 dark:text-white"
                                                >
                                                    Payment successfully completed
                                                </h6>
                                                <p
                                                        class="mb-0 text-xs leading-tight text-slate-400 group-hover:text-slate-700 dark:text-white dark:opacity-80"
                                                >
                                                    <i class="mr-1 fa fa-clock" aria-hidden="true"></i>
                                                    2 days
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="w-full p-6 mx-auto">
            <div class="flex flex-wrap -mx-3">
                <div class="w-full max-w-full px-3 flex-0">
                    <div class="relative flex flex-col min-w-0 break-words bg-white dark:bg-slate-850 border border-gray-200 dark:border-slate-700 shadow-xl rounded-2xl">
                        <!-- Header -->
                        <div class="p-6 pb-0 border-b border-gray-200 dark:border-slate-700 rounded-t-2xl">
                            <div class="lg:flex lg:items-center lg:justify-between">
                                <div>
                                    <h5 class="mb-2 text-xl font-semibold text-gray-700 dark:text-white">All Employees</h5>

                                </div>
                                <div class="flex mt-4 lg:mt-0 space-x-2">
                                    <a href="employee?action=addForm">
                                        <button
                                                type="button"
                                                class="px-6 mb-7 py-2 text-sm font-medium text-white bg-gradient-to-r from-blue-500 to-violet-500 rounded-lg shadow hover:from-blue-600 hover:to-violet-600 transition duration-300"
                                        >
                                            + New Employee
                                        </button>
                                    </a>

                                </div>
                            </div>
                        </div>

                        <!-- Table -->
                        <div class="p-6">
                            <div class="overflow-x-auto">
                                <table class="min-w-full bg-white dark:bg-slate-850">
                                    <thead>
                                    <tr class="bg-gray-100 dark:bg-slate-700">
                                        <th class="px-6 py-3 text-left text-xs text-black font-medium text-gray-500 uppercase tracking-wider">ID</th>
                                        <th class="px-6 py-3 text-left text-xs text-black font-medium text-gray-500 uppercase tracking-wider">Name</th>
                                        <th class="px-6 py-3 text-left text-xs text-black font-medium text-gray-500 uppercase tracking-wider">Email</th>
                                        <th class="px-6 py-3 text-left text-xs text-black font-medium text-gray-500 uppercase tracking-wider">Birth Date</th>
                                        <th class="px-6 py-3 text-left text-xs text-black font-medium text-gray-500 uppercase tracking-wider">Social Number</th>
                                        <th class="px-6 py-3 text-left text-xs text-black font-medium text-gray-500 uppercase tracking-wider">Start Date</th>
                                        <th class="px-6 py-3 text-left text-xs text-black font-medium text-gray-500 uppercase tracking-wider">Salary</th>
                                        <th class="px-6 py-3 text-left text-xs text-black font-medium text-gray-500 uppercase tracking-wider">Child Number</th>
                                        <th class="px-6 py-3 text-left text-xs text-black font-medium text-gray-500 uppercase tracking-wider">Allocation Familial</th>
                                        <th class="px-6 py-3 text-left text-xs text-black font-medium text-gray-500 uppercase tracking-wider">Department</th>
                                        <th class="px-6 py-3 text-left text-xs text-black font-medium text-gray-500 uppercase tracking-wider">Poste</th>
                                        <th class="px-6 py-3 text-left text-xs text-black font-medium text-gray-500 uppercase tracking-wider">Actions</th>
                                    </tr>
                                    </thead>
                                    <tbody class="divide-y divide-gray-200 dark:divide-slate-700">
                                    <c:forEach var="employee" items="${employees}">
                                        <tr class="hover:bg-gray-50 dark:hover:bg-slate-800">
                                            <td class="px-6 py-4 text-sm text-gray-500 dark:text-gray-300 whitespace-nowrap">${employee.id}</td>
                                            <td class="px-6 py-4 text-sm text-gray-500 dark:text-gray-300 whitespace-nowrap">${employee.name}</td>
                                            <td class="px-6 py-4 text-sm text-gray-500 dark:text-gray-300 whitespace-nowrap">${employee.email}</td>
                                            <td class="px-6 py-4 text-sm text-gray-500 dark:text-gray-300 whitespace-nowrap">${employee.birthDate}</td>
                                            <td class="px-6 py-4 text-sm text-gray-500 dark:text-gray-300 whitespace-nowrap">${employee.socialNumber}</td>
                                            <td class="px-6 py-4 text-sm text-gray-500 dark:text-gray-300 whitespace-nowrap">${employee.startDate}</td>
                                            <td class="px-6 py-4 text-sm text-gray-500 dark:text-gray-300 whitespace-nowrap">${employee.salary}</td>
                                            <td class="px-6 py-4 text-sm text-gray-500 dark:text-gray-300 whitespace-nowrap">${employee.childNumber}</td>
                                            <td class="px-6 py-4 text-sm text-gray-500 dark:text-gray-300 whitespace-nowrap">${employee.allocationFamilial}</td>
                                            <td class="px-6 py-4 text-sm text-gray-500 dark:text-gray-300 whitespace-nowrap">${employee.department}</td>
                                            <td class="px-6 py-4 text-sm text-gray-500 dark:text-gray-300 whitespace-nowrap">${employee.poste}</td>
                                            <td class="px-6 py-4 text-sm text-gray-500 dark:text-gray-300 whitespace-nowrap">
                                                <div class="flex space-x-3">
                                                    <a href="employee?action=updateForm&id=${employee.id}" class="text-yellow-500 hover:text-yellow-700" title="Edit">
                                                        <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="30" height="30" viewBox="0 0 64 64">
                                                            <path fill="#ed7899" d="M46.2,7.92h9.63a4,4,0,0,1,4,4V17.1a0,0,0,0,1,0,0H42.2a0,0,0,0,1,0,0V11.92a4,4,0,0,1,4-4Z" transform="rotate(45 51.017 12.512)"></path><path fill="#c2cde7" d="M32.5 15.51H55.129999999999995V24.869999999999997H32.5z" transform="rotate(45 43.817 20.19)"></path><path fill="#f9e3ae" d="M17.12 17.45H35.5V57.92999999999999H17.12z" transform="rotate(45 26.318 37.691)"></path><path fill="#f6d397" d="M27.38 21.7H33.74V62.17999999999999H27.38z" transform="rotate(45 30.567 41.941)"></path><path fill="#faefde" d="M5 57L6 46 13 47 14 50 16.92 51.5 19 59 7 59 5 57z"></path><path fill="#faefde" d="M18.88 13.2H25.24V53.67999999999999H18.88z" transform="rotate(45 22.068 33.441)"></path><path fill="#8d6c9f" d="M60.59,15.9a4,4,0,0,0-1.17-2.83L50.93,4.59a4.09,4.09,0,0,0-5.66,0L41,8.83a2,2,0,0,0-2.83,0l-5.66,5.66a2,2,0,0,0,0,2.83l.05.05L5.52,44.4a3,3,0,0,0-.87,1.88L4,54.68l-.7,4.92a1,1,0,0,0,1,1.14H4.4L9.32,60l8.45-.62a3,3,0,0,0,1.9-.87l27.08-27a2,2,0,0,0,2.77,0l5.66-5.66a2,2,0,0,0,0-2.83l4.24-4.24A4,4,0,0,0,60.59,15.9Zm-48.69,32,.58,2.88a1,1,0,0,0,.78.78l2.88.58,1.07,5.34L9.59,58,6,54.41l.61-7.6ZM19,56.35l-1-4.77L34.67,35a1,1,0,0,0-1.41-1.41L16.66,50.17,14.3,49.7l-.47-2.36L27.59,33.58a1,1,0,0,0-1.41-1.41L12.42,45.93,7.75,45,34,18.78,45.32,30.09ZM52.34,25.8h0a1,1,0,0,0-1.41,0l-1.41,1.41a1,1,0,0,0,0,1.41h0L48.1,30h0L34,15.9l1.41-1.41a1,1,0,0,0,1.41,0l1.41-1.41a1,1,0,0,0,0-1.41l1.41-1.41.71.71L53.05,23.68l.71.71ZM58,17.31l-4.24,4.24L42.44,10.24,46.69,6a2,2,0,0,1,2.83,0L58,14.49a2,2,0,0,1,0,2.83Z"></path><path fill="#8d6c9f" d="M40.32 15.19l-1.41 1.41A1 1 0 1 0 40.32 18l1.41-1.41a1 1 0 0 0-1.41-1.41zM43.86 18.73l-1.41 1.41a1 1 0 1 0 1.41 1.41l1.41-1.41a1 1 0 0 0-1.41-1.41zM47.39 22.26L46 23.68a1 1 0 1 0 1.41 1.41l1.41-1.41a1 1 0 0 0-1.41-1.41zM31.84 26.51L29 29.33a1 1 0 1 0 1.41 1.41l2.83-2.83a1 1 0 0 0-1.41-1.41z"></path>
                                                        </svg>
                                                    </a>
                                                    <a href="employee?action=delete&id=${employee.id}" class="text-red-500 hover:text-red-700" title="Delete" onclick="return confirm('Are you sure you want to delete this employee?');">
                                                        <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="30" height="3    0" viewBox="0 0 100 100">
                                                            <path fill="#f37e98" d="M25,30l3.645,47.383C28.845,79.988,31.017,82,33.63,82h32.74c2.613,0,4.785-2.012,4.985-4.617L75,30"></path><path fill="#f15b6c" d="M65 38v35c0 1.65-1.35 3-3 3s-3-1.35-3-3V38c0-1.65 1.35-3 3-3S65 36.35 65 38zM53 38v35c0 1.65-1.35 3-3 3s-3-1.35-3-3V38c0-1.65 1.35-3 3-3S53 36.35 53 38zM41 38v35c0 1.65-1.35 3-3 3s-3-1.35-3-3V38c0-1.65 1.35-3 3-3S41 36.35 41 38zM77 24h-4l-1.835-3.058C70.442 19.737 69.14 19 67.735 19h-35.47c-1.405 0-2.707.737-3.43 1.942L27 24h-4c-1.657 0-3 1.343-3 3s1.343 3 3 3h54c1.657 0 3-1.343 3-3S78.657 24 77 24z"></path><path fill="#1f212b" d="M66.37 83H33.63c-3.116 0-5.744-2.434-5.982-5.54l-3.645-47.383 1.994-.154 3.645 47.384C29.801 79.378 31.553 81 33.63 81H66.37c2.077 0 3.829-1.622 3.988-3.692l3.645-47.385 1.994.154-3.645 47.384C72.113 80.566 69.485 83 66.37 83zM56 20c-.552 0-1-.447-1-1v-3c0-.552-.449-1-1-1h-8c-.551 0-1 .448-1 1v3c0 .553-.448 1-1 1s-1-.447-1-1v-3c0-1.654 1.346-3 3-3h8c1.654 0 3 1.346 3 3v3C57 19.553 56.552 20 56 20z"></path><path fill="#1f212b" d="M77,31H23c-2.206,0-4-1.794-4-4s1.794-4,4-4h3.434l1.543-2.572C28.875,18.931,30.518,18,32.265,18h35.471c1.747,0,3.389,0.931,4.287,2.428L73.566,23H77c2.206,0,4,1.794,4,4S79.206,31,77,31z M23,25c-1.103,0-2,0.897-2,2s0.897,2,2,2h54c1.103,0,2-0.897,2-2s-0.897-2-2-2h-4c-0.351,0-0.677-0.185-0.857-0.485l-1.835-3.058C69.769,20.559,68.783,20,67.735,20H32.265c-1.048,0-2.033,0.559-2.572,1.457l-1.835,3.058C27.677,24.815,27.351,25,27,25H23z"></path><path fill="#1f212b" d="M61.5 25h-36c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h36c.276 0 .5.224.5.5S61.776 25 61.5 25zM73.5 25h-5c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h5c.276 0 .5.224.5.5S73.776 25 73.5 25zM66.5 25h-2c-.276 0-.5-.224-.5-.5s.224-.5.5-.5h2c.276 0 .5.224.5.5S66.776 25 66.5 25zM50 76c-1.654 0-3-1.346-3-3V38c0-1.654 1.346-3 3-3s3 1.346 3 3v25.5c0 .276-.224.5-.5.5S52 63.776 52 63.5V38c0-1.103-.897-2-2-2s-2 .897-2 2v35c0 1.103.897 2 2 2s2-.897 2-2v-3.5c0-.276.224-.5.5-.5s.5.224.5.5V73C53 74.654 51.654 76 50 76zM62 76c-1.654 0-3-1.346-3-3V47.5c0-.276.224-.5.5-.5s.5.224.5.5V73c0 1.103.897 2 2 2s2-.897 2-2V38c0-1.103-.897-2-2-2s-2 .897-2 2v1.5c0 .276-.224.5-.5.5S59 39.776 59 39.5V38c0-1.654 1.346-3 3-3s3 1.346 3 3v35C65 74.654 63.654 76 62 76z"></path><path fill="#1f212b" d="M59.5 45c-.276 0-.5-.224-.5-.5v-2c0-.276.224-.5.5-.5s.5.224.5.5v2C60 44.776 59.776 45 59.5 45zM38 76c-1.654 0-3-1.346-3-3V38c0-1.654 1.346-3 3-3s3 1.346 3 3v35C41 74.654 39.654 76 38 76zM38 36c-1.103 0-2 .897-2 2v35c0 1.103.897 2 2 2s2-.897 2-2V38C40 36.897 39.103 36 38 36z"></path>
                                                        </svg>
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</layout:dashboardLayout>


<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--  <title>Employee List</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Employee List</h1>--%>

<%--<table border="1">--%>
<%--  <thead>--%>
<%--  <tr>--%>
<%--    <th>ID</th>--%>
<%--    <th>Name</th>--%>
<%--    <th>Email</th>--%>
<%--    <th>Birth Date</th>--%>
<%--    <th>Social Number</th>--%>
<%--    <th>Start Date</th>--%>
<%--    <th>Salary</th>--%>
<%--    <th>Child Number</th>--%>
<%--    <th>Department</th>--%>
<%--    <th>Poste</th>--%>
<%--    <th>Leave Balance</th>--%>
<%--    <th>Actions</th>--%>
<%--  </tr>--%>
<%--  </thead>--%>
<%--  <tbody>--%>
<%--  <c:forEach var="employee" items="${employees}">--%>
<%--    <tr>--%>
<%--      <td>${employee.id}</td>--%>
<%--      <td>${employee.name}</td>--%>
<%--      <td>${employee.email}</td>--%>
<%--      <td>${employee.birthDate}</td>--%>
<%--      <td>${employee.socialNumber}</td>--%>
<%--      <td>${employee.startDate}</td>--%>
<%--      <td>${employee.salary}</td>--%>
<%--      <td>${employee.childNumber}</td>--%>
<%--      <td>${employee.department}</td>--%>
<%--      <td>${employee.poste}</td>--%>
<%--      <td>${employee.leaveBalance}</td>--%>
<%--      <td>--%>
<%--        <a href="employee?action=updateForm&id=${employee.id}">Update</a> |--%>
<%--        <a href="employee?action=delete&id=${employee.id}"--%>
<%--           onclick="return confirm('Are you sure you want to delete this employee?');">Delete</a>--%>
<%--      </td>--%>
<%--    </tr>--%>
<%--  </c:forEach>--%>
<%--  </tbody>--%>
<%--</table>--%>

<%--<h2>Add Employee</h2>--%>
<%--<form action="addEmployee.jsp" method="get">--%>
<%--  <button type="submit">Add New Employee</button>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>
