<title>FlowDesk Interno | <%= request.getAttribute("title")%></title>
<%@include file="/padrao-interno-regular/dashboard.jsp"%>

<div class="row" data-plugin="matchHeight" data-by-row="true">
    <div class="col-xxl-3">
        <div class="row h-full" data-plugin="matchHeight">
            <div class="col-xxl-12 col-lg-4 col-sm-4">
                <div class="card card-shadow card-completed-options">
                    <div class="card-block p-30">
                        <div class="row">
                            <div class="col-6">
                                <div class="counter text-left blue-grey-700">
                                    <div class="counter-label mt-10">Tasks Completed
                                    </div>
                                    <div class="counter-number font-size-40 mt-10">
                                        1,234
                                    </div>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="pie-progress pie-progress-sm" data-plugin="pieProgress" data-valuemax="100"
                                     data-barcolor="#57c7d4" data-size="100" data-barsize="10"
                                     data-goal="86" aria-valuenow="86" role="progressbar">
                                    <span class="pie-progress-number blue-grey-700 font-size-20">
                                        86%
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xxl-12 col-lg-4 col-sm-4">
                <div class="card card-shadow card-completed-options">
                    <div class="card-block p-30">
                        <div class="row">
                            <div class="col-6">
                                <div class="counter text-left blue-grey-700">
                                    <div class="counter-label mt-10">Points Completed
                                    </div>
                                    <div class="counter-number font-size-40 mt-10">
                                        698
                                    </div>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="pie-progress pie-progress-sm" data-plugin="pieProgress" data-valuemax="100"
                                     data-barcolor="#62a8ea" data-size="100" data-barsize="10"
                                     data-goal="62" aria-valuenow="62" role="progressbar">
                                    <span class="pie-progress-number blue-grey-700 font-size-20">
                                        62%
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xxl-12 col-lg-4 col-sm-4">
                <div class="card card-shadow card-completed-options">
                    <div class="card-block p-30">
                        <div class="row">
                            <div class="col-6">
                                <div class="counter text-left blue-grey-700">
                                    <div class="counter-label mt-10">Cards Completed
                                    </div>
                                    <div class="counter-number font-size-40 mt-10">
                                        1,358
                                    </div>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="pie-progress pie-progress-sm" data-plugin="pieProgress" data-valuemax="100"
                                     data-barcolor="#926dde" data-size="100" data-barsize="10"
                                     data-goal="56" aria-valuenow="56" role="progressbar">
                                    <span class="pie-progress-number blue-grey-700 font-size-20">
                                        56%
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Completed Options Pie Widgets -->
    <!-- Team Total Completed -->
    <div class="col-xxl-9">
        <div id="teamCompletedWidget" class="card card-shadow example-responsive">
            <div class="card-block p-20 pb-25">
                <div class="row pb-40" data-plugin="matchHeight">
                    <div class="col-md-6 col-sm-12">
                        <div class="counter text-left pl-10">
                            <div class="counter-label">Team Total Completed</div>
                            <div class="counter-number-group text-truncate">
                                <span>1,439</span>
                                <span>86%</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <ul class="list-inline mr-50">
                            <li class="list-inline-item">
                                Task Completed
                            </li>
                            <li class="list-inline-item">
                                Cards Completed
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="ct-chart"></div>
            </div>
        </div>
    </div>
    <div class="col-xl-12 col-lg-10">
        <!-- Panel Tickets -->
        <div class="panel">
            <div class="panel-heading">
                <h3 class="panel-title">Tickets</h3>
                <div class="panel-actions panel-actions-keep">
                    <div class="dropdown">
                        <a class="panel-action" id="examplePanelDropdown" data-toggle="dropdown" href="#"
                           aria-expanded="false" role="button"><i class="icon wb-more-vertical" aria-hidden="true"></i></a>
                        <div class="dropdown-menu dropdown-menu-bullet dropdown-menu-right" aria-labelledby="examplePanelDropdown"
                             role="menu">
                            <a class="dropdown-item" href="javascript:void(0)" role="menuitem"><i class="icon wb-flag" aria-hidden="true"></i> Action</a>
                            <a class="dropdown-item" href="javascript:void(0)" role="menuitem"><i class="icon wb-print" aria-hidden="true"></i> Another action</a>
                            <a class="dropdown-item" href="javascript:void(0)" role="menuitem"><i class="icon wb-heart" aria-hidden="true"></i> Something else here</a>
                            <a class="dropdown-item" href="javascript:void(0)" role="menuitem"><i class="icon wb-share" aria-hidden="true"></i> Separated link</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <ul class="list-group list-group-dividered list-group-full h-300" data-plugin="scrollable">
                    <div data-role="container">
                        <div data-role="content">
                            <li class="list-group-item justify-content-between">
                                <small class="badge badge-round badge-info float-right">Completed</small>
                                <p>
                                    <span>Server unavaible</span>
                                    <span>[13060]</span>
                                </p>
                                <small>Opened by
                                    <a class="hightlight" href="javascript:void(0)">
                                        <span class="avatar avatar-xs">
                                            <img src="tema/global/portraits/1.jpg" alt="">
                                        </span>
                                        <span>Herman Beck</span>
                                    </a>
                                    <time datetime="2018-07-01T08:55">2 hours ago</time>
                                </small>
                            </li>
                            <li class="list-group-item justify-content-between">
                                <small class="badge badge-round badge-warning float-right">Pendening</small>
                                <p>
                                    <span>Mobile App Problem</span>
                                    <span>[13061]</span>
                                </p>
                                <small>Opened by
                                    <a class="hightlight" href="javascript:void(0)">
                                        <span class="avatar avatar-xs">
                                            <img src="tema/global/portraits/2.jpg" alt="">
                                        </span>
                                        <span>Mary Adams</span>
                                    </a>
                                    <time datetime="2018-07-01T07:55">1 hour ago</time>
                                </small>
                            </li>
                            <li class="list-group-item justify-content-between">
                                <small class="badge badge-round badge-primary float-right">In progress</small>
                                <p>
                                    <span>IE8 problem</span>
                                    <span>[13062]</span>
                                </p>
                                <small>Opened by
                                    <a class="hightlight" href="javascript:void(0)">
                                        <span class="avatar avatar-xs">
                                            <img src="tema/global/portraits/3.jpg" alt="">
                                        </span>
                                        <span>Caleb Richards</span>
                                    </a>
                                    <time datetime="2018-06-28T21:05">3 days ago</time>
                                </small>
                            </li>
                            <li class="list-group-item justify-content-between">
                                <small class="badge badge-round badge-danger float-right">Rejected</small>
                                <p>
                                    <span>Respoonsive problem</span>
                                    <span>[13063]</span>
                                </p>
                                <small>Opened by
                                    <a class="hightlight" href="javascript:void(0)">
                                        <span class="avatar avatar-xs">
                                            <img src="tema/global/portraits/4.jpg" alt="">
                                        </span>
                                        <span>June Lane</span>
                                    </a>
                                    <time datetime="2018-06-27T13:05">4 days ago</time>
                                </small>
                            </li>
                            <li class="list-group-item justify-content-between">
                                <small class="badge badge-round badge-info float-right">Completed</small>
                                <p>
                                    <span>Server unavaible</span>
                                    <span>[13060]</span>
                                </p>
                                <small>Opened by
                                    <a class="hightlight" href="javascript:void(0)">
                                        <span class="avatar avatar-xs">
                                            <img src="tema/global/portraits/5.jpg" alt="">
                                        </span>
                                        <span>Herman Beck</span>
                                    </a>
                                    <time datetime="2018-07-01T08:55">2 hours ago</time>
                                </small>
                            </li>
                            <li class="list-group-item justify-content-between">
                                <small class="badge badge-round badge-warning float-right">Pendening</small>
                                <p>
                                    <span>Mobile App Problem</span>
                                    <span>[13061]</span>
                                </p>
                                <small>Opened by
                                    <a class="hightlight" href="javascript:void(0)">
                                        <span class="avatar avatar-xs">
                                            <img src="tema/global/portraits/6.jpg" alt="">
                                        </span>
                                        <span>Mary Adams</span>
                                    </a>
                                    <time datetime="2018-07-01T07:55">1 hour ago</time>
                                </small>
                            </li>
                            <li class="list-group-item justify-content-between">
                                <small class="badge badge-round badge-primary float-right">In progress</small>
                                <p>
                                    <span>IE8 problem</span>
                                    <span>[13062]</span>
                                </p>
                                <small>Opened by
                                    <a class="hightlight" href="javascript:void(0)">
                                        <span class="avatar avatar-xs">
                                            <img src="tema/global/portraits/7.jpg" alt="">
                                        </span>
                                        <span>Caleb Richards</span>
                                    </a>
                                    <time datetime="2018-06-28T21:05">3 days ago</time>
                                </small>
                            </li>
                            <li class="list-group-item justify-content-between">
                                <small class="badge badge-round badge-danger float-right">Rejected</small>
                                <p>
                                    <span>Respoonsive problem</span>
                                    <span>[13063]</span>
                                </p>
                                <small>Opened by
                                    <a class="hightlight" href="javascript:void(0)">
                                        <span class="avatar avatar-xs">
                                            <img src="tema/global/portraits/8.jpg" alt="">
                                        </span>
                                        <span>June Lane</span>
                                    </a>
                                    <time datetime="2018-06-27T13:05">4 days ago</time>
                                </small>
                            </li>
                        </div>
                    </div>
                </ul>
            </div>
        </div>
        <!-- End Panel Tickets -->
    </div>

    <%@include file="/padrao-interno-regular/rodape.jsp"%>