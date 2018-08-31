<nav class="site-navbar navbar navbar-default navbar-fixed-top navbar-mega" role="navigation">

    <div class="navbar-header">
        <button type="button" class="navbar-toggler hamburger hamburger-close navbar-toggler-left hided"
                data-toggle="menubar">
            <span class="sr-only">Toggle navigation</span>
            <span class="hamburger-bar"></span>
        </button>
        <button type="button" class="navbar-toggler collapsed" data-target="#site-navbar-collapse"
                data-toggle="collapse">
            <i class="icon wb-more-horizontal" aria-hidden="true"></i>
        </button>
        <div class="">
            <a href="/ProjetoFinal-Interno/home" class="navbar-brand navbar-brand-center">
                <img class="navbar-brand-logo" src="/ProjetoFinal-Interno/tema/assets/images/logo.png" title="FlowDesk">
                <span class="navbar-brand-text hidden-xs-down"> FlowDesk</span>
            </a>
        </div>
        <button type="button" class="navbar-toggler collapsed" data-target="#site-navbar-search"
                data-toggle="collapse">
            <span class="sr-only">Toggle Search</span>
            <i class="icon wb-search" aria-hidden="true"></i>
        </button>
    </div>

    <div class="navbar-container container-fluid">
        <!-- Navbar Collapse -->
        <div class="collapse navbar-collapse navbar-collapse-toolbar" id="site-navbar-collapse">
            <!-- Navbar Toolbar -->
            <ul class="nav navbar-toolbar">
                <li class="nav-item hidden-float" id="toggleMenubar">
                    <a class="nav-link" data-toggle="menubar" href="#" role="button">
                        <i class="icon hamburger hamburger-arrow-left">
                            <span class="sr-only">Toggle menubar</span>
                            <span class="hamburger-bar"></span>
                        </i>
                    </a>
                </li>
            </ul>
            <!-- End Navbar Toolbar -->

            <!-- Navbar Toolbar Right -->
            <ul class="nav navbar-toolbar navbar-right navbar-toolbar-right">
                <li class="nav-item dropdown">
                    <a class="nav-link navbar-avatar" data-toggle="dropdown" href="#" aria-expanded="false"
                       data-animation="scale-up" role="button">
                        <span class="avatar avatar-online">
                            <img src="/ProjetoFinal-Interno/tema/global/portraits/5.jpg" alt="...">
                            <i></i>
                        </span>
                    </a>
                    <div class="dropdown-menu" role="menu">
                        <a class="dropdown-item" href="javascript:void(0)" role="menuitem"><i class="icon wb-user" aria-hidden="true"></i> Perfil</a>
                        <div class="dropdown-divider" role="presentation"></div>
                        <a class="dropdown-item" href="javascript:void(0)" role="menuitem"><i class="icon wb-power" aria-hidden="true"></i> Sair</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link" data-toggle="dropdown" href="javascript:void(0)" title="Notifications"
                       aria-expanded="false" data-animation="scale-up" role="button">
                        <i class="icon wb-bell" aria-hidden="true"></i>
                        <span class="badge badge-pill badge-danger up">?</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right dropdown-menu-media" role="menu">
                        <div class="dropdown-menu-header">
                            <h5>NOTIFICAÇÕES</h5>
                            <span class="badge badge-round badge-danger">?? notificações novas</span>
                        </div>

                        <div class="list-group">
                            <div data-role="container">
                                <div data-role="content">
                                    <a class="list-group-item dropdown-item" href="javascript:void(0)" role="menuitem">
                                        <div class="media">
                                            <div class="pr-10">
                                                <i class="icon wb-order bg-red-600 white icon-circle" aria-hidden="true"></i>
                                            </div>
                                            <div class="media-body">
                                                <h6 class="media-heading">A new order has been placed</h6>
                                                <time class="media-meta" datetime="2018-06-12T20:50:48+08:00">5 hours ago</time>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="list-group-item dropdown-item" href="javascript:void(0)" role="menuitem">
                                        <div class="media">
                                            <div class="pr-10">
                                                <i class="icon wb-user bg-green-600 white icon-circle" aria-hidden="true"></i>
                                            </div>
                                            <div class="media-body">
                                                <h6 class="media-heading">Completed the task</h6>
                                                <time class="media-meta" datetime="2018-06-11T18:29:20+08:00">2 days ago</time>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="list-group-item dropdown-item" href="javascript:void(0)" role="menuitem">
                                        <div class="media">
                                            <div class="pr-10">
                                                <i class="icon wb-settings bg-red-600 white icon-circle" aria-hidden="true"></i>
                                            </div>
                                            <div class="media-body">
                                                <h6 class="media-heading">Settings updated</h6>
                                                <time class="media-meta" datetime="2018-06-11T14:05:00+08:00">2 days ago</time>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="list-group-item dropdown-item" href="javascript:void(0)" role="menuitem">
                                        <div class="media">
                                            <div class="pr-10">
                                                <i class="icon wb-calendar bg-blue-600 white icon-circle" aria-hidden="true"></i>
                                            </div>
                                            <div class="media-body">
                                                <h6 class="media-heading">Event started</h6>
                                                <time class="media-meta" datetime="2018-06-10T13:50:18+08:00">3 days ago</time>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="list-group-item dropdown-item" href="javascript:void(0)" role="menuitem">
                                        <div class="media">
                                            <div class="pr-10">
                                                <i class="icon wb-chat bg-orange-600 white icon-circle" aria-hidden="true"></i>
                                            </div>
                                            <div class="media-body">
                                                <h6 class="media-heading">Message received</h6>
                                                <time class="media-meta" datetime="2018-06-10T12:34:48+08:00">3 days ago</time>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="dropdown-menu-footer">
                            <a class="dropdown-menu-footer-btn" href="javascript:void(0)" role="button">
                                <i class="icon wb-settings" aria-hidden="true"></i>
                            </a>
                            <a class="dropdown-item" href="javascript:void(0)" role="menuitem">
                                Todas as notificações
                            </a>
                        </div>
                    </div>
                </li>
                </li>
            </ul>
            <!-- End Navbar Toolbar Right -->
        </div>
        <!-- End Navbar Collapse -->

    </div>
    
    <div class="row" data-plugin="matchHeight" data-by-row="true">
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
                              <img src="../../../global/portraits/1.jpg" alt="">
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
                              <img src="../../../global/portraits/2.jpg" alt="">
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
                              <img src="../../../global/portraits/3.jpg" alt="">
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
                              <img src="../../../global/portraits/4.jpg" alt="">
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
                              <img src="../../../global/portraits/5.jpg" alt="">
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
                              <img src="../../../global/portraits/6.jpg" alt="">
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
                              <img src="../../../global/portraits/7.jpg" alt="">
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
                              <img src="../../../global/portraits/8.jpg" alt="">
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
        </div>


</nav>
