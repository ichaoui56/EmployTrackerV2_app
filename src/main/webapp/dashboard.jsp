<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<layout:dashboardLayout title="EmployeeTracker | DASHBOARD">
  <main class="relative h-full max-h-screen transition-all duration-200 ease-in-out xl:ml-68 rounded-xl">

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
    <div class="w-full px-6 py-6 mx-auto">

      <div class="flex flex-wrap -mx-3">

        <div class="w-full max-w-full px-3 mb-6 sm:w-1/2 sm:flex-none xl:mb-0 xl:w-1/4">
          <div
                  class="relative flex flex-col min-w-0 break-words bg-white shadow-xl dark:bg-slate-850 dark:shadow-dark-xl rounded-2xl bg-clip-border">
            <div class="flex-auto p-4">
              <div class="flex flex-row -mx-3">
                <div class="flex-none w-2/3 max-w-full px-3">
                  <div>
                    <p
                            class="mb-0 font-sans text-sm font-semibold leading-normal uppercase dark:text-white dark:opacity-60">
                      Today's Money</p>
                    <h5 class="mb-2 font-bold dark:text-white">$53,000</h5>
                    <p class="mb-0 dark:text-white dark:opacity-60">
                      <span class="text-sm font-bold leading-normal text-emerald-500">+55%</span>
                      since yesterday
                    </p>
                  </div>
                </div>
                <div class="px-3 text-right basis-1/3">
                  <div
                          class="inline-block w-12 h-12 text-center rounded-circle bg-gradient-to-tl from-blue-500 to-violet-500">
                    <i class="ni leading-none ni-money-coins text-lg relative top-3.5 text-white"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="w-full max-w-full px-3 mb-6 sm:w-1/2 sm:flex-none xl:mb-0 xl:w-1/4">
          <div
                  class="relative flex flex-col min-w-0 break-words bg-white shadow-xl dark:bg-slate-850 dark:shadow-dark-xl rounded-2xl bg-clip-border">
            <div class="flex-auto p-4">
              <div class="flex flex-row -mx-3">
                <div class="flex-none w-2/3 max-w-full px-3">
                  <div>
                    <p
                            class="mb-0 font-sans text-sm font-semibold leading-normal uppercase dark:text-white dark:opacity-60">
                      Today's Users</p>
                    <h5 class="mb-2 font-bold dark:text-white">2,300</h5>
                    <p class="mb-0 dark:text-white dark:opacity-60">
                      <span class="text-sm font-bold leading-normal text-emerald-500">+3%</span>
                      since last week
                    </p>
                  </div>
                </div>
                <div class="px-3 text-right basis-1/3">
                  <div
                          class="inline-block w-12 h-12 text-center rounded-circle bg-gradient-to-tl from-red-600 to-orange-600">
                    <i class="ni leading-none ni-world text-lg relative top-3.5 text-white"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="w-full max-w-full px-3 mb-6 sm:w-1/2 sm:flex-none xl:mb-0 xl:w-1/4">
          <div
                  class="relative flex flex-col min-w-0 break-words bg-white shadow-xl dark:bg-slate-850 dark:shadow-dark-xl rounded-2xl bg-clip-border">
            <div class="flex-auto p-4">
              <div class="flex flex-row -mx-3">
                <div class="flex-none w-2/3 max-w-full px-3">
                  <div>
                    <p
                            class="mb-0 font-sans text-sm font-semibold leading-normal uppercase dark:text-white dark:opacity-60">
                      New Clients</p>
                    <h5 class="mb-2 font-bold dark:text-white">+3,462</h5>
                    <p class="mb-0 dark:text-white dark:opacity-60">
                      <span class="text-sm font-bold leading-normal text-red-600">-2%</span>
                      since last quarter
                    </p>
                  </div>
                </div>
                <div class="px-3 text-right basis-1/3">
                  <div
                          class="inline-block w-12 h-12 text-center rounded-circle bg-gradient-to-tl from-emerald-500 to-teal-400">
                    <i class="ni leading-none ni-paper-diploma text-lg relative top-3.5 text-white"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="w-full max-w-full px-3 sm:w-1/2 sm:flex-none xl:w-1/4">
          <div
                  class="relative flex flex-col min-w-0 break-words bg-white shadow-xl dark:bg-slate-850 dark:shadow-dark-xl rounded-2xl bg-clip-border">
            <div class="flex-auto p-4">
              <div class="flex flex-row -mx-3">
                <div class="flex-none w-2/3 max-w-full px-3">
                  <div>
                    <p
                            class="mb-0 font-sans text-sm font-semibold leading-normal uppercase dark:text-white dark:opacity-60">
                      Sales</p>
                    <h5 class="mb-2 font-bold dark:text-white">$103,430</h5>
                    <p class="mb-0 dark:text-white dark:opacity-60">
                      <span class="text-sm font-bold leading-normal text-emerald-500">+5%</span>
                      than last month
                    </p>
                  </div>
                </div>
                <div class="px-3 text-right basis-1/3">
                  <div
                          class="inline-block w-12 h-12 text-center rounded-circle bg-gradient-to-tl from-orange-500 to-yellow-500">
                    <i class="ni leading-none ni-cart text-lg relative top-3.5 text-white"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>


      <div class="flex flex-wrap mt-6 -mx-3">
        <div class="w-full max-w-full px-3 mt-0 mb-6 lg:mb-0 lg:w-8/12 lg:flex-none">
          <div
                  class="relative flex flex-col min-w-0 break-words bg-white border-0 border-transparent border-solid shadow-xl dark:bg-slate-850 dark:shadow-dark-xl rounded-2xl bg-clip-border">
            <div class="flex-auto px-0 pt-0">
              <div class="p-0 overflow-x-auto">
                <table class="items-center w-full mb-0 align-top border-collapse dark:border-white/40 text-slate-500">
                  <thead class="align-bottom">
                  <tr>
                    <th
                            class="px-6 py-3 font-bold text-left uppercase align-middle bg-transparent border-b border-collapse shadow-none dark:border-white/40 dark:text-white text-xxs border-b-solid tracking-none whitespace-nowrap text-slate-400 opacity-70">
                      Author
                    </th>
                    <th
                            class="px-6 py-3 pl-2 font-bold text-left uppercase align-middle bg-transparent border-b border-collapse shadow-none dark:border-white/40 dark:text-white text-xxs border-b-solid tracking-none whitespace-nowrap text-slate-400 opacity-70">
                      Function
                    </th>
                    <th
                            class="px-6 py-3 font-bold text-center uppercase align-middle bg-transparent border-b border-collapse shadow-none dark:border-white/40 dark:text-white text-xxs border-b-solid tracking-none whitespace-nowrap text-slate-400 opacity-70">
                      Technology
                    </th>
                    <th
                            class="px-6 py-3 font-bold text-center uppercase align-middle bg-transparent border-b border-collapse shadow-none dark:border-white/40 dark:text-white text-xxs border-b-solid tracking-none whitespace-nowrap text-slate-400 opacity-70">
                      Employed
                    </th>
                    <th
                            class="px-6 py-3 font-semibold capitalize align-middle bg-transparent border-b border-collapse border-solid shadow-none dark:border-white/40 dark:text-white tracking-none whitespace-nowrap text-slate-400 opacity-70">
                    </th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td
                            class="p-2 align-middle bg-transparent border-b dark:border-white/40 whitespace-nowrap shadow-transparent">
                      <div class="flex px-2 py-1">
                        <div>
                          <img src="assets/img/team-2.jpg"
                               class="inline-flex items-center justify-center mr-4 text-sm text-white transition-all duration-200 ease-in-out h-9 w-9 rounded-xl"
                               alt="user1"/>
                        </div>
                        <div class="flex flex-col justify-center">
                          <h6 class="mb-0 text-xs leading-normal dark:text-white">John
                            Michael</h6>
                          <p class="mb-0 text-xs leading-tight dark:text-white dark:opacity-80 text-slate-400">
                            <a
                                    href="https://demos.creative-tim.com/cdn-cgi/l/email-protection"
                                    class="__cf_email__"
                                    data-cfemail="bcd6d3d4d2fcdfced9ddc8d5cad991c8d5d192dfd3d1">[email&#160;protected]</a>
                          </p>
                        </div>
                      </div>
                    </td>
                    <td
                            class="p-2 align-middle bg-transparent border-b dark:border-white/40 whitespace-nowrap shadow-transparent">
                      <p class="mb-0 text-xs font-semibold leading-tight dark:text-white dark:opacity-80">
                        Manager</p>
                      <p class="mb-0 text-xs leading-tight dark:text-white dark:opacity-80 text-slate-400">
                        Organization</p>
                    </td>
                    <td
                            class="p-2 text-sm leading-normal text-center align-middle bg-transparent border-b dark:border-white/40 whitespace-nowrap shadow-transparent">
                        <span
                                class="bg-emerald-200 text-emerald-600 px-1.75 text-xxs rounded-1 py-1 inline-block whitespace-nowrap text-center align-baseline font-bold uppercase leading-none">Online</span>
                    </td>
                    <td
                            class="p-2 text-center align-middle bg-transparent border-b dark:border-white/40 whitespace-nowrap shadow-transparent">
                        <span
                                class="text-xs font-semibold leading-tight dark:text-white dark:opacity-80 text-slate-400">23/04/18</span>
                    </td>
                    <td
                            class="p-2 align-middle bg-transparent border-b dark:border-white/40 whitespace-nowrap shadow-transparent">
                      <a href="javascript:;"
                         class="text-xs font-semibold leading-tight dark:text-white dark:opacity-80 text-slate-400">
                        Edit </a>
                    </td>
                  </tr>
                  <tr>
                    <td
                            class="p-2 align-middle bg-transparent border-b dark:border-white/40 whitespace-nowrap shadow-transparent">
                      <div class="flex px-2 py-1">
                        <div>
                          <img src="assets/img/team-3.jpg"
                               class="inline-flex items-center justify-center mr-4 text-sm text-white transition-all duration-200 ease-in-out h-9 w-9 rounded-xl"
                               alt="user2"/>
                        </div>
                        <div class="flex flex-col justify-center">
                          <h6 class="mb-0 text-xs leading-normal dark:text-white">Alexa Liras</h6>
                          <p class="mb-0 text-xs leading-tight dark:text-white dark:opacity-80 text-slate-400">
                            <a
                                    href="https://demos.creative-tim.com/cdn-cgi/l/email-protection"
                                    class="__cf_email__"
                                    data-cfemail="f59499908d94b596879094819c8390d8819c98db969a98">[email&#160;protected]</a>
                          </p>
                        </div>
                      </div>
                    </td>
                    <td
                            class="p-2 align-middle bg-transparent border-b dark:border-white/40 whitespace-nowrap shadow-transparent">
                      <p class="mb-0 text-xs font-semibold leading-tight dark:text-white dark:opacity-80">
                        Programator
                      </p>
                      <p class="mb-0 text-xs leading-tight dark:text-white dark:opacity-80 text-slate-400">
                        Developer
                      </p>
                    </td>
                    <td
                            class="p-2 text-sm leading-normal text-center align-middle bg-transparent border-b dark:border-white/40 whitespace-nowrap shadow-transparent">
                        <span
                                class="bg-slate-100 text-slate-600 px-1.75 text-xxs rounded-1 py-1 inline-block whitespace-nowrap text-center align-baseline font-bold uppercase leading-none">Offline</span>
                    </td>
                    <td
                            class="p-2 text-center align-middle bg-transparent border-b dark:border-white/40 whitespace-nowrap shadow-transparent">
                        <span
                                class="text-xs font-semibold leading-tight dark:text-white dark:opacity-80 text-slate-400">11/01/19</span>
                    </td>
                    <td
                            class="p-2 align-middle bg-transparent border-b dark:border-white/40 whitespace-nowrap shadow-transparent">
                      <a href="javascript:;"
                         class="text-xs font-semibold leading-tight dark:text-white dark:opacity-80 text-slate-400">
                        Edit </a>
                    </td>
                  </tr>
                  <tr>
                    <td
                            class="p-2 align-middle bg-transparent border-b dark:border-white/40 whitespace-nowrap shadow-transparent">
                      <div class="flex px-2 py-1">
                        <div>
                          <img src="assets/img/team-4.jpg"
                               class="inline-flex items-center justify-center mr-4 text-sm text-white transition-all duration-200 ease-in-out h-9 w-9 rounded-xl"
                               alt="user3"/>
                        </div>
                        <div class="flex flex-col justify-center">
                          <h6 class="mb-0 text-xs leading-normal dark:text-white">Laurent
                            Perrier</h6>
                          <p class="mb-0 text-xs leading-tight dark:text-white dark:opacity-80 text-slate-400">
                            <a
                                    href="https://demos.creative-tim.com/cdn-cgi/l/email-protection"
                                    class="__cf_email__"
                                    data-cfemail="cfa3aebabdaaa1bb8facbdaaaebba6b9aae2bba6a2e1aca0a2">[email&#160;protected]</a>
                          </p>
                        </div>
                      </div>
                    </td>
                    <td
                            class="p-2 align-middle bg-transparent border-b dark:border-white/40 whitespace-nowrap shadow-transparent">
                      <p class="mb-0 text-xs font-semibold leading-tight dark:text-white dark:opacity-80">
                        Executive
                      </p>
                      <p class="mb-0 text-xs leading-tight dark:text-white dark:opacity-80 text-slate-400">
                        Projects
                      </p>
                    </td>
                    <td
                            class="p-2 text-sm leading-normal text-center align-middle bg-transparent border-b dark:border-white/40 whitespace-nowrap shadow-transparent">
                        <span
                                class="bg-emerald-200 text-emerald-600 px-1.75 text-xxs rounded-1 py-1 inline-block whitespace-nowrap text-center align-baseline font-bold uppercase leading-none">Online</span>
                    </td>
                    <td
                            class="p-2 text-center align-middle bg-transparent border-b dark:border-white/40 whitespace-nowrap shadow-transparent">
                        <span
                                class="text-xs font-semibold leading-tight dark:text-white dark:opacity-80 text-slate-400">19/09/17</span>
                    </td>
                    <td
                            class="p-2 align-middle bg-transparent border-b dark:border-white/40 whitespace-nowrap shadow-transparent">
                      <a href="javascript:;"
                         class="text-xs font-semibold leading-tight dark:text-white dark:opacity-80 text-slate-400">
                        Edit </a>
                    </td>
                  </tr>
                  <tr>
                    <td
                            class="p-2 align-middle bg-transparent border-b dark:border-white/40 whitespace-nowrap shadow-transparent">
                      <div class="flex px-2 py-1">
                        <div>
                          <img src="assets/img/team-3.jpg"
                               class="inline-flex items-center justify-center mr-4 text-sm text-white transition-all duration-200 ease-in-out h-9 w-9 rounded-xl"
                               alt="user4"/>
                        </div>
                        <div class="flex flex-col justify-center">
                          <h6 class="mb-0 text-xs leading-normal dark:text-white">Michael
                            Levi</h6>
                          <p class="mb-0 text-xs leading-tight dark:text-white dark:opacity-80 text-slate-400">
                            <a
                                    href="https://demos.creative-tim.com/cdn-cgi/l/email-protection"
                                    class="__cf_email__"
                                    data-cfemail="cea3a7ada6afaba28eadbcabafbaa7b8abe3baa7a3e0ada1a3">[email&#160;protected]</a>
                          </p>
                        </div>
                      </div>
                    </td>
                    <td
                            class="p-2 align-middle bg-transparent border-b dark:border-white/40 whitespace-nowrap shadow-transparent">
                      <p class="mb-0 text-xs font-semibold leading-tight dark:text-white dark:opacity-80">
                        Programator
                      </p>
                      <p class="mb-0 text-xs leading-tight dark:text-white dark:opacity-80 text-slate-400">
                        Developer
                      </p>
                    </td>
                    <td
                            class="p-2 text-sm leading-normal text-center align-middle bg-transparent border-b dark:border-white/40 whitespace-nowrap shadow-transparent">
                        <span
                                class="bg-emerald-200 text-emerald-600 px-1.75 text-xxs rounded-1 py-1 inline-block whitespace-nowrap text-center align-baseline font-bold uppercase leading-none">Online</span>
                    </td>
                    <td
                            class="p-2 text-center align-middle bg-transparent border-b dark:border-white/40 whitespace-nowrap shadow-transparent">
                        <span
                                class="text-xs font-semibold leading-tight dark:text-white dark:opacity-80 text-slate-400">24/12/08</span>
                    </td>
                    <td
                            class="p-2 align-middle bg-transparent border-b dark:border-white/40 whitespace-nowrap shadow-transparent">
                      <a href="javascript:;"
                         class="text-xs font-semibold leading-tight dark:text-white dark:opacity-80 text-slate-400">
                        Edit </a>
                    </td>
                  </tr>
                  <tr>
                    <td
                            class="p-2 align-middle bg-transparent border-b-0 dark:border-white/40 whitespace-nowrap shadow-transparent">
                      <div class="flex px-2 py-1">
                        <div>
                          <img src="assets/img/team-2.jpg"
                               class="inline-flex items-center justify-center mr-4 text-sm text-white transition-all duration-200 ease-in-out h-9 w-9 rounded-xl"
                               alt="user5"/>
                        </div>
                        <div class="flex flex-col justify-center">
                          <h6 class="mb-0 text-xs leading-normal dark:text-white">Richard
                            Gran</h6>
                          <p class="mb-0 text-xs leading-tight dark:text-white dark:opacity-80 text-slate-400">
                            <a
                                    href="https://demos.creative-tim.com/cdn-cgi/l/email-protection"
                                    class="__cf_email__"
                                    data-cfemail="e7958e848f869583a784958286938e9182ca938e8ac984888a">[email&#160;protected]</a>
                          </p>
                        </div>
                      </div>
                    </td>
                    <td
                            class="p-2 align-middle bg-transparent border-b-0 dark:border-white/40 whitespace-nowrap shadow-transparent">
                      <p class="mb-0 text-xs font-semibold leading-tight dark:text-white dark:opacity-80">
                        Manager</p>
                      <p class="mb-0 text-xs leading-tight dark:text-white dark:opacity-80 text-slate-400">
                        Executive
                      </p>
                    </td>
                    <td
                            class="p-2 text-sm leading-normal text-center align-middle bg-transparent border-b-0 dark:border-white/40 whitespace-nowrap shadow-transparent">
                        <span
                                class="bg-slate-100 text-slate-600 px-1.75 text-xxs rounded-1 py-1 inline-block whitespace-nowrap text-center align-baseline font-bold uppercase leading-none">Offline</span>
                    </td>
                    <td
                            class="p-2 text-center align-middle bg-transparent border-b-0 dark:border-white/40 whitespace-nowrap shadow-transparent">
                        <span
                                class="text-xs font-semibold leading-tight dark:text-white dark:opacity-80 text-slate-400">04/10/21</span>
                    </td>
                    <td
                            class="p-2 align-middle bg-transparent border-b-0 dark:border-white/40 whitespace-nowrap shadow-transparent">
                      <a href="javascript:;"
                         class="text-xs font-semibold leading-tight dark:text-white dark:opacity-80 text-slate-400">
                        Edit </a>
                    </td>
                  </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
        <div class="w-full max-w-full px-3 mt-0 md:w-4/12 md:flex-none">
          <div
                  class="border-black/12.5 shadow-xl dark:bg-slate-850 dark:shadow-dark-xl relative flex min-w-0 flex-col break-words rounded-2xl border-0 border-solid bg-white bg-clip-border">
            <div class="p-4 pb-0 rounded-t-4">
              <h6 class="mb-0 dark:text-white">Categories</h6>
            </div>
            <div class="flex-auto p-4">
              <ul class="flex flex-col pl-0 mb-0 rounded-lg">
                <li class="relative flex justify-between py-2 pr-4 mb-2 border-0 rounded-t-lg rounded-xl text-inherit">
                  <div class="flex items-center">
                    <div
                            class="inline-block w-8 h-8 mr-4 text-center text-black bg-center shadow-sm fill-current stroke-none bg-gradient-to-tl from-zinc-800 to-zinc-700 dark:bg-gradient-to-tl dark:from-slate-750 dark:to-gray-850 rounded-xl">
                      <i class="text-white ni leading-none ni-mobile-button relative top-0.75 text-xxs"></i>
                    </div>
                    <div class="flex flex-col">
                      <h6 class="mb-1 text-sm leading-normal text-slate-700 dark:text-white">
                        Devices</h6>
                      <span class="text-xs leading-tight dark:text-white/80">250 in stock, <span
                              class="font-semibold">346+ sold</span></span>
                    </div>
                  </div>
                  <div class="flex">
                    <button
                            class="group ease-in leading-pro text-xs rounded-3.5xl p-1.2 h-6.5 w-6.5 mx-0 my-auto inline-block cursor-pointer border-0 bg-transparent text-center align-middle font-bold text-slate-700 shadow-none transition-all dark:text-white">
                      <i
                              class="ni ease-bounce text-2xs group-hover:translate-x-1.25 ni-bold-right transition-all duration-200"
                              aria-hidden="true"></i></button>
                  </div>
                </li>
                <li class="relative flex justify-between py-2 pr-4 mb-2 border-0 rounded-xl text-inherit">
                  <div class="flex items-center">
                    <div
                            class="inline-block w-8 h-8 mr-4 text-center text-black bg-center shadow-sm fill-current stroke-none bg-gradient-to-tl from-zinc-800 to-zinc-700 dark:bg-gradient-to-tl dark:from-slate-750 dark:to-gray-850 rounded-xl">
                      <i class="text-white ni leading-none ni-tag relative top-0.75 text-xxs"></i>
                    </div>
                    <div class="flex flex-col">
                      <h6 class="mb-1 text-sm leading-normal text-slate-700 dark:text-white">
                        Tickets</h6>
                      <span class="text-xs leading-tight dark:text-white/80">123 closed, <span
                              class="font-semibold">15
                          open</span></span>
                    </div>
                  </div>
                  <div class="flex">
                    <button
                            class="group ease-in leading-pro text-xs rounded-3.5xl p-1.2 h-6.5 w-6.5 mx-0 my-auto inline-block cursor-pointer border-0 bg-transparent text-center align-middle font-bold text-slate-700 shadow-none transition-all dark:text-white">
                      <i
                              class="ni ease-bounce text-2xs group-hover:translate-x-1.25 ni-bold-right transition-all duration-200"
                              aria-hidden="true"></i></button>
                  </div>
                </li>
                <li class="relative flex justify-between py-2 pr-4 mb-2 border-0 rounded-b-lg rounded-xl text-inherit">
                  <div class="flex items-center">
                    <div
                            class="inline-block w-8 h-8 mr-4 text-center text-black bg-center shadow-sm fill-current stroke-none bg-gradient-to-tl from-zinc-800 to-zinc-700 dark:bg-gradient-to-tl dark:from-slate-750 dark:to-gray-850 rounded-xl">
                      <i class="text-white ni leading-none ni-box-2 relative top-0.75 text-xxs"></i>
                    </div>
                    <div class="flex flex-col">
                      <h6 class="mb-1 text-sm leading-normal text-slate-700 dark:text-white">Error
                        logs</h6>
                      <span class="text-xs leading-tight dark:text-white/80">1 is active, <span
                              class="font-semibold">40
                          closed</span></span>
                    </div>
                  </div>
                  <div class="flex">
                    <button
                            class="group ease-in leading-pro text-xs rounded-3.5xl p-1.2 h-6.5 w-6.5 mx-0 my-auto inline-block cursor-pointer border-0 bg-transparent text-center align-middle font-bold text-slate-700 shadow-none transition-all dark:text-white">
                      <i
                              class="ni ease-bounce text-2xs group-hover:translate-x-1.25 ni-bold-right transition-all duration-200"
                              aria-hidden="true"></i></button>
                  </div>
                </li>
                <li class="relative flex justify-between py-2 pr-4 border-0 rounded-b-lg rounded-xl text-inherit">
                  <div class="flex items-center">
                    <div
                            class="inline-block w-8 h-8 mr-4 text-center text-black bg-center shadow-sm fill-current stroke-none bg-gradient-to-tl from-zinc-800 to-zinc-700 dark:bg-gradient-to-tl dark:from-slate-750 dark:to-gray-850 rounded-xl">
                      <i class="text-white ni leading-none ni-satisfied relative top-0.75 text-xxs"></i>
                    </div>
                    <div class="flex flex-col">
                      <h6 class="mb-1 text-sm leading-normal text-slate-700 dark:text-white">Happy
                        users</h6>
                      <span class="text-xs leading-tight dark:text-white/80"><span
                              class="font-semibold">+ 430
                        </span></span>
                    </div>
                  </div>
                  <div class="flex">
                    <button
                            class="group ease-in leading-pro text-xs rounded-3.5xl p-1.2 h-6.5 w-6.5 mx-0 my-auto inline-block cursor-pointer border-0 bg-transparent text-center align-middle font-bold text-slate-700 shadow-none transition-all dark:text-white">
                      <i
                              class="ni ease-bounce text-2xs group-hover:translate-x-1.25 ni-bold-right transition-all duration-200"
                              aria-hidden="true"></i></button>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>

    </div>
  </main>
</layout:dashboardLayout>