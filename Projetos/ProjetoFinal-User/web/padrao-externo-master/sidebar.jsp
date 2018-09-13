<%-- 
    Document   : sidebar
    Created on : 24/08/2018, 10:10:28
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<body class="animsition">

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
  <div class="navbar-brand navbar-brand-center">
    <img class="navbar-brand-logo" src="/tema/assets/images/logo.png" title="FlowDesk">
    <span class="navbar-brand-text hidden-xs-down"> FlowDesk</span>
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
          <img src="../../global/portraits/5.jpg" alt="...">
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

<!-- Site Navbar Seach -->
<div class="collapse navbar-search-overlap" id="site-navbar-search">
  <form role="search">
    <div class="form-group">
      <div class="input-search">
        <i class="input-search-icon wb-search" aria-hidden="true"></i>
        <input type="text" class="form-control" name="site-search" placeholder="Search...">
        <button type="button" class="input-search-close icon wb-close" data-target="#site-navbar-search"
        data-toggle="collapse" aria-label="Close"></button>
      </div>
    </div>
  </form>
</div>
<!-- End Site Navbar Seach -->
</div>
</nav>    <div class="site-menubar">
  <div class="site-menubar-body">
    <div>
      <div>
        <ul class="site-menu" data-plugin="menu">
          <li class="site-menu-category">Externo</li>
          <li class="site-menu-item has-sub">
            <a href="/empresa-externo">
              <i class="site-menu-icon wb-layout" aria-hidden="true"></i>
              <span class="site-menu-title">Empresa</span>
            </a>
          </li>
          <li class="site-menu-item has-sub">
            <a href="/usuario-master-externo">
              <i class="site-menu-icon wb-users" aria-hidden="true"></i>
              <span class="site-menu-title">Usuários</span>
            </a>
          </li>
          <li class="site-menu-item has-sub">
            <a href="javascript:void(0)">
              <i class="site-menu-icon wb-order" aria-hidden="true"></i>
              <span class="site-menu-title">Tickets</span>
              <span class="site-menu-arrow"></span>
            </a>
            <ul class="site-menu-sub">
              <li class="site-menu-item">
                <a class="animsition-link" href="../index.html">
                  <span class="site-menu-title">Abrir Chamado</span>
                </a>
              </li>
              <li class="site-menu-item">
                <a class="animsition-link" href="../index.html">
                  <span class="site-menu-title">Consultar Chamado</span>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>    

<!-- Page -->
<div class="page">
  <div class="page-header">






