<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<layout:dashboardLayout title="EmployeeTracker | ADD EMPLOYEE">
    <main
            class="relative h-full max-h-screen transition-all duration-200 ease-in-out xl:ml-68 rounded-xl mb-12">
        <nav navbar-main
             class="relative flex flex-wrap items-center justify-between px-0 py-2 mx-6 transition-all ease-in shadow-none duration-250 rounded-2xl lg:flex-nowrap lg:justify-start"
             navbar-scroll="true">
            <div class="flex items-center justify-between w-full px-4 py-1 mx-auto flex-wrap-inherit">
                <nav>

                    <ol class="flex flex-wrap pt-1 mr-12 bg-transparent rounded-lg sm:mr-16">
                        <li class="text-sm leading-normal breadcrumb-item">
                            <a class="text-white" href="javascript:;">
                                <i class="leading-none ni ni-box-2"></i>
                            </a>
                        </li>
                        <li
                                class="text-sm pl-2 leading-normal before:float-left before:pr-2 before:text-white before:content-['/']">
                            <a class="text-white opacity-50" href="javascript:;">Pages</a>
                        </li>
                        <li
                                class="text-sm pl-2 capitalize leading-normal text-white before:float-left before:pr-2 before:text-white before:content-['/']"
                                aria-current="page">Default
                        </li>
                    </ol>
                    <h6 class="mb-0 font-bold text-white capitalize">Default</h6>
                </nav>
                <div class="flex items-center">
                    <a mini-sidenav-burger href="javascript:;"
                       class="hidden p-0 text-sm text-white transition-all ease-nav-brand xl:block" aria-expanded="false">
                        <div class="w-4.5 overflow-hidden">
                            <i class="ease mb-0.75 relative block h-0.5 translate-x-[5px] rounded-sm bg-white transition-all"></i>
                            <i class="ease mb-0.75 relative block h-0.5 rounded-sm bg-white transition-all"></i>
                            <i class="ease relative block h-0.5 translate-x-[5px] rounded-sm bg-white transition-all"></i>
                        </div>
                    </a>
                </div>
                <div class="flex items-center mt-2 grow sm:mt-0 sm:mr-6 md:mr-0 lg:flex lg:basis-auto" id="navbar">
                    <div class="flex items-center md:ml-auto md:pr-4">
                        <div class="relative flex flex-wrap items-stretch w-full transition-all rounded-lg ease">
              <span
                      class="text-sm ease leading-5.6 absolute z-50 -ml-px flex h-full items-center whitespace-nowrap rounded-lg rounded-tr-none rounded-br-none border border-r-0 border-transparent bg-transparent py-2 px-2.5 text-center font-normal text-slate-500 transition-all">
                <i class="fas fa-search" aria-hidden="true"></i>
              </span>
                            <input type="text"
                                   class="pl-9 text-sm focus:shadow-primary-outline dark:bg-slate-850 dark:placeholder:text-white/80 dark:text-white/80 ease w-1/100 leading-5.6 relative -ml-px block min-w-0 flex-auto rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding py-2 pr-3 text-gray-700 transition-all placeholder:text-gray-500 focus:border-blue-500 focus:outline-none focus:transition-shadow"
                                   placeholder="Type here..."/>
                        </div>
                    </div>
                    <ul class="flex flex-row justify-end pl-0 mb-0 list-none md-max:w-full">


                        <li class="flex items-center">
                            <a href="auth?action=logout"
                               class="block px-0 py-2 text-sm font-semibold text-white transition-all ease-nav-brand">
                                <i class="fa fa-user sm:mr-1" aria-hidden="true"></i>
                                <span class="hidden sm:inline">Log Out</span>
                            </a>
                        </li>
                        <li class="flex items-center pl-4 xl:hidden">
                            <a sidenav-trigger class="block p-0 text-sm text-white transition-all ease-nav-brand"
                               href="javascript:;"
                               aria-expanded="false">
                                <div class="w-4.5 overflow-hidden">
                                    <i class="ease mb-0.75 relative block h-0.5 rounded-sm bg-white transition-all"></i>
                                    <i class="ease mb-0.75 relative block h-0.5 rounded-sm bg-white transition-all"></i>
                                    <i class="ease relative block h-0.5 rounded-sm bg-white transition-all"></i>
                                </div>
                            </a>
                        </li>
                        <li class="flex items-center px-4">
                            <a href="javascript:;" class="p-0 text-sm text-white transition-all ease-nav-brand">
                                <i fixed-plugin-button-nav class="cursor-pointer fa fa-cog" aria-hidden="true"></i>

                            </a>
                        </li>

                        <li class="relative flex items-center pr-2">
                            <p class="hidden transform-dropdown-show"></p>
                            <a dropdown-trigger href="javascript:;"
                               class="block p-0 text-sm text-white transition-all ease-nav-brand"
                               aria-expanded="false">
                                <i class="cursor-pointer fa fa-bell" aria-hidden="true"></i>
                            </a>
                            <ul dropdown-menu
                                class="text-sm transform-dropdown before:font-awesome before:leading-default before:duration-350 before:ease lg:shadow-3xl duration-250 min-w-44 before:sm:right-7 before:text-5.5 dark:bg-slate-850 pointer-events-none absolute right-0 top-0 z-50 origin-top list-none rounded-lg border-0 border-solid border-transparent bg-white bg-clip-padding px-2 py-4 text-left text-slate-500 opacity-0 transition-all before:absolute before:right-2 before:left-auto before:top-0 before:z-50 before:inline-block before:font-normal before:text-white before:antialiased before:transition-all before:content-['\f0d8'] sm:-mr-6 lg:absolute lg:right-0 lg:left-auto lg:mt-2 lg:block lg:cursor-pointer">

                                <li class="relative mb-2">
                                    <a class="group ease py-1.2 clear-both block w-full whitespace-nowrap rounded-lg bg-transparent px-4 duration-300 hover:bg-gray-200 hover:text-slate-700 dark:hover:bg-gray-200/80 lg:transition-colors"
                                       href="javascript:;">
                                        <div class="flex py-1">
                                            <div class="my-auto">
                                                <img src="assets/img/team-2.jpg"
                                                     class="inline-flex items-center justify-center mr-4 text-sm text-white h-9 w-9 max-w-none rounded-xl"/>
                                            </div>
                                            <div class="flex flex-col justify-center">
                                                <h6 class="mb-1 text-sm font-normal leading-normal group-hover:text-slate-700 dark:text-white">
                                                    <span class="font-semibold">New message</span> from Laur</h6>
                                                <p
                                                        class="mb-0 text-xs leading-tight text-slate-400 group-hover:text-slate-700 dark:text-white dark:opacity-80">
                                                    <i class="mr-1 fa fa-clock" aria-hidden="true"></i>
                                                    13 minutes ago
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="relative mb-2">
                                    <a class="group ease py-1.2 clear-both block w-full whitespace-nowrap rounded-lg px-4 transition-colors duration-300 hover:bg-gray-200 hover:text-slate-700 dark:hover:bg-gray-200/80"
                                       href="javascript:;">
                                        <div class="flex py-1">
                                            <div class="my-auto">
                                                <img src="assets/img/small-logos/logo-spotify.svg"
                                                     class="inline-flex items-center justify-center mr-4 text-sm text-white bg-gradient-to-tl from-zinc-800 to-zinc-700 dark:bg-gradient-to-tl dark:from-slate-750 dark:to-gray-850 h-9 w-9 max-w-none rounded-xl"/>
                                            </div>
                                            <div class="flex flex-col justify-center">
                                                <h6 class="mb-1 text-sm font-normal leading-normal group-hover:text-slate-700 dark:text-white">
                                                    <span class="font-semibold">New album</span> by Travis Scott</h6>
                                                <p
                                                        class="mb-0 text-xs leading-tight text-slate-400 group-hover:text-slate-700 dark:text-white dark:opacity-80">
                                                    <i class="mr-1 fa fa-clock" aria-hidden="true"></i>
                                                    1 day
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="relative">
                                    <a class="group ease py-1.2 clear-both block w-full whitespace-nowrap rounded-lg px-4 transition-colors duration-300 hover:bg-gray-200 hover:text-slate-700 dark:hover:bg-gray-200/80"
                                       href="javascript:;">
                                        <div class="flex py-1">
                                            <div
                                                    class="inline-flex items-center justify-center my-auto mr-4 text-sm text-white transition-all duration-200 ease-nav-brand bg-gradient-to-tl from-slate-600 to-slate-300 h-9 w-9 rounded-xl">
                                                <svg width="12px" height="12px" viewBox="0 0 43 36" version="1.1"
                                                     xmlns="http://www.w3.org/2000/svg"
                                                     xmlns:xlink="http://www.w3.org/1999/xlink">
                                                    <title>credit-card</title>
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <g transform="translate(-2169.000000, -745.000000)" fill="#FFFFFF"
                                                           fill-rule="nonzero">
                                                            <g transform="translate(1716.000000, 291.000000)">
                                                                <g transform="translate(453.000000, 454.000000)">
                                                                    <path class="color-background"
                                                                          d="M43,10.7482083 L43,3.58333333 C43,1.60354167 41.3964583,0 39.4166667,0 L3.58333333,0 C1.60354167,0 0,1.60354167 0,3.58333333 L0,10.7482083 L43,10.7482083 Z"
                                                                          opacity="0.593633743"></path>
                                                                    <path class="color-background"
                                                                          d="M0,16.125 L0,32.25 C0,34.2297917 1.60354167,35.8333333 3.58333333,35.8333333 L39.4166667,35.8333333 C41.3964583,35.8333333 43,34.2297917 43,32.25 L43,16.125 L0,16.125 Z M19.7083333,26.875 L7.16666667,26.875 L7.16666667,23.2916667 L19.7083333,23.2916667 L19.7083333,26.875 Z M35.8333333,26.875 L28.6666667,26.875 L28.6666667,23.2916667 L35.8333333,23.2916667 L35.8333333,26.875 Z">
                                                                    </path>
                                                                </g>
                                                            </g>
                                                        </g>
                                                    </g>
                                                </svg>
                                            </div>
                                            <div class="flex flex-col justify-center">
                                                <h6 class="mb-1 text-sm font-normal leading-normal group-hover:text-slate-700 dark:text-white">
                                                    Payment successfully completed</h6>
                                                <p
                                                        class="mb-0 text-xs leading-tight text-slate-400 group-hover:text-slate-700 dark:text-white dark:opacity-80">
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
                    <div multisteps-form class="mb-12">
                        <div class="flex flex-wrap -mx-3">
                            <div class="w-full max-w-full px-3 m-auto flex-0 lg:w-8/12">
                                <form action="employee" method="post" class="relative mb-32">
                                    <input type="hidden" name="action" value="insert" />

                                    <div active form="info" class="absolute top-0 left-0 flex flex-col visible w-full h-auto min-w-0 p-4 break-words bg-white border-0 shadow-xl opacity-100 dark:bg-slate-850 dark:shadow-dark-xl rounded-2xl bg-clip-border">
                                        <h5 class="mb-0 font-bold dark:text-white">Employee Information</h5>

                                        <!-- Name & Email -->
                                        <div class="flex flex-wrap mt-4 -mx-3">
                                            <div class="w-full max-w-full px-3 flex-0 sm:w-6/12">
                                                <label class="mt-6 mb-2 ml-1 text-xs font-bold text-slate-700 dark:text-white/80" for="name">Name</label>
                                                <input type="text" id="name" name="name" placeholder="Enter employee's name" required class="focus:shadow-primary-outline dark:bg-slate-850 dark:placeholder:text-white/80 dark:text-white/80 text-sm leading-5.6 ease block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding px-3 py-2 font-normal text-gray-700 outline-none transition-all placeholder:text-gray-500 focus:border-blue-500 focus:outline-none" />
                                            </div>

                                            <div class="w-full max-w-full px-3 flex-0 sm:w-6/12">
                                                <label class="mt-6 mb-2 ml-1 text-xs font-bold text-slate-700 dark:text-white/80" for="email">Email</label>
                                                <input type="email" id="email" name="email" placeholder="Enter employee's email" required class="focus:shadow-primary-outline dark:bg-slate-850 dark:placeholder:text-white/80 dark:text-white/80 text-sm leading-5.6 ease block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding px-3 py-2 font-normal text-gray-700 outline-none transition-all placeholder:text-gray-500 focus:border-blue-500 focus:outline-none" />
                                            </div>
                                        </div>

                                        <!-- Password & Role -->
                                        <div class="flex flex-wrap -mx-3">
                                            <div class="w-full max-w-full px-3 flex-0 sm:w-6/12">
                                                <label class="mt-6 mb-2 ml-1 text-xs font-bold text-slate-700 dark:text-white/80" for="password">Password</label>
                                                <input type="password" id="password" name="password" placeholder="Enter employee's password" required class="focus:shadow-primary-outline dark:bg-slate-850 dark:placeholder:text-white/80 dark:text-white/80 text-sm leading-5.6 ease block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding px-3 py-2 font-normal text-gray-700 outline-none transition-all placeholder:text-gray-500 focus:border-blue-500 focus:outline-none" />
                                            </div>

                                            <div class="w-full max-w-full px-3 flex-0 sm:w-6/12">
                                                <label class="mt-6 mb-2 ml-1 text-xs font-bold text-slate-700 dark:text-white/80" for="role">Role</label>
                                                <select id="role" name="role" required class="focus:shadow-primary-outline dark:bg-slate-850 dark:placeholder:text-white/80 dark:text-white/80 text-sm leading-5.6 ease block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding px-3 py-2 font-normal text-gray-700 outline-none transition-all placeholder:text-gray-500 focus:border-blue-500 focus:outline-none">
                                                    <option value="EMPLOYEE">Employee</option>
                                                    <option value="RECRUITER">Recruiter</option>
                                                </select>
                                            </div>
                                        </div>

                                        <!-- Social Number & Department -->
                                        <div class="flex flex-wrap -mx-3">
                                            <div class="w-full max-w-full px-3 flex-0 sm:w-6/12">
                                                <label class="mt-6 mb-2 ml-1 text-xs font-bold text-slate-700 dark:text-white/80" for="socialNumber">Social Number</label>
                                                <input type="text" id="socialNumber" name="socialNumber" placeholder="Enter social security number" required class="focus:shadow-primary-outline dark:bg-slate-850 dark:placeholder:text-white/80 dark:text-white/80 text-sm leading-5.6 ease block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding px-3 py-2 font-normal text-gray-700 outline-none transition-all placeholder:text-gray-500 focus:border-blue-500 focus:outline-none" />
                                            </div>

                                            <div class="w-full max-w-full px-3 flex-0 sm:w-6/12">
                                                <label class="mt-6 mb-2 ml-1 text-xs font-bold text-slate-700 dark:text-white/80" for="department">Department</label>
                                                <input type="text" id="department" name="department" placeholder="Enter department" required class="focus:shadow-primary-outline dark:bg-slate-850 dark:placeholder:text-white/80 dark:text-white/80 text-sm leading-5.6 ease block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding px-3 py-2 font-normal text-gray-700 outline-none transition-all placeholder:text-gray-500 focus:border-blue-500 focus:outline-none" />
                                            </div>
                                        </div>

                                        <!-- Poste & Salary -->
                                        <div class="flex flex-wrap -mx-3">
                                            <div class="w-full max-w-full px-3 flex-0 sm:w-6/12">
                                                <label class="mt-6 mb-2 ml-1 text-xs font-bold text-slate-700 dark:text-white/80" for="poste">Poste</label>
                                                <input type="text" id="poste" name="poste" placeholder="Enter poste" required class="focus:shadow-primary-outline dark:bg-slate-850 dark:placeholder:text-white/80 dark:text-white/80 text-sm leading-5.6 ease block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding px-3 py-2 font-normal text-gray-700 outline-none transition-all placeholder:text-gray-500 focus:border-blue-500 focus:outline-none" />
                                            </div>

                                            <div class="w-full max-w-full px-3 flex-0 sm:w-6/12">
                                                <label class="mt-6 mb-2 ml-1 text-xs font-bold text-slate-700 dark:text-white/80" for="salary">Salary</label>
                                                <input type="number" id="salary" name="salary" placeholder="Enter salary" required class="focus:shadow-primary-outline dark:bg-slate-850 dark:placeholder:text-white/80 dark:text-white/80 text-sm leading-5.6 ease block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding px-3 py-2 font-normal text-gray-700 outline-none transition-all placeholder:text-gray-500 focus:border-blue-500 focus:outline-none" />
                                            </div>
                                        </div>

                                        <!-- Child Number & Leave Balance -->
                                        <div class="flex flex-wrap -mx-3">
                                            <div class="w-full max-w-full px-3 flex-0 sm:w-6/12">
                                                <label class="mt-6 mb-2 ml-1 text-xs font-bold text-slate-700 dark:text-white/80" for="childNumber">Number of Children</label>
                                                <input type="number" id="childNumber" name="childNumber" placeholder="Enter number of children" required class="focus:shadow-primary-outline dark:bg-slate-850 dark:placeholder:text-white/80 dark:text-white/80 text-sm leading-5.6 ease block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding px-3 py-2 font-normal text-gray-700 outline-none transition-all placeholder:text-gray-500 focus:border-blue-500 focus:outline-none" />
                                            </div>

                                            <div class="w-full max-w-full px-3 flex-0 sm:w-6/12">
                                                <label class="mt-6 mb-2 ml-1 text-xs font-bold text-slate-700 dark:text-white/80" for="leaveBalance">Leave Balance</label>
                                                <input type="number" id="leaveBalance" name="leaveBalance" placeholder="Enter leave balance" required class="focus:shadow-primary-outline dark:bg-slate-850 dark:placeholder:text-white/80 dark:text-white/80 text-sm leading-5.6 ease block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding px-3 py-2 font-normal text-gray-700 outline-none transition-all placeholder:text-gray-500 focus:border-blue-500 focus:outline-none" />
                                            </div>
                                        </div>

                                        <!-- Birth Date & Start Date -->
                                        <div class="flex flex-wrap -mx-3">
                                            <div class="w-full max-w-full px-3 flex-0 sm:w-6/12">
                                                <label class="mt-6 mb-2 ml-1 text-xs font-bold text-slate-700 dark:text-white/80" for="birthDate">Birth Date</label>
                                                <input type="date" id="birthDate" name="birthDate" required class="focus:shadow-primary-outline dark:bg-slate-850 dark:placeholder:text-white/80 dark:text-white/80 text-sm leading-5.6 ease block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding px-3 py-2 font-normal text-gray-700 outline-none transition-all placeholder:text-gray-500 focus:border-blue-500 focus:outline-none" />
                                            </div>

                                            <div class="w-full max-w-full px-3 flex-0 sm:w-6/12">
                                                <label class="mt-6 mb-2 ml-1 text-xs font-bold text-slate-700 dark:text-white/80" for="startDate">Start Date</label>
                                                <input type="date" id="startDate" name="startDate" required class="focus:shadow-primary-outline dark:bg-slate-850 dark:placeholder:text-white/80 dark:text-white/80 text-sm leading-5.6 ease block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding px-3 py-2 font-normal text-gray-700 outline-none transition-all placeholder:text-gray-500 focus:border-blue-500 focus:outline-none" />
                                            </div>
                                        </div>

                                        <!-- Submit Button -->
                                        <div class="flex mt-6">
                                            <button type="submit" class="inline-block px-5 py-2.5 mb-0 ml-auto text-sm font-bold text-right text-white align-middle transition-all ease-in border-0 rounded-lg shadow-md cursor-pointer hover:-translate-y-px active:opacity-85 hover:shadow-xs dark:bg-gradient-to-tl dark:from-slate-750 dark:to-gray-850 bg-gradient-to-tl from-zinc-800 to-zinc-700 leading-normal tracking-tight-rem bg-150 bg-x-25">
                                                Add Employee
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</layout:dashboardLayout>