<%-- 
    Document   : sidebar
    Created on : 24/08/2018, 10:10:28
    Author     : Alunos
--%>

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
                            <img src="/tema/global/portraits/5.jpg" alt="...">
                            <i></i>
                        </span>
                    </a>
                    <div class="dropdown-menu" role="menu">
                        <a class="dropdown-item" href="/externo/usuario/perfil" role="menuitem"><i class="icon wb-user" aria-hidden="true"></i> Perfil</a>
                        <div class="dropdown-divider" role="presentation"></div>
                        <a class="dropdown-item" href="/usuario/logout" role="menuitem"><i class="icon wb-power" aria-hidden="true"></i> Sair</a>
                    </div>
                </li>
                </li>
            </ul>
            <!-- End Navbar Toolbar Right -->
        </div>
        <!-- End Navbar Collapse -->
    </div>
</nav>    <div class="site-menubar">
    <div class="site-menubar-body">
        <div>
            <div>
                <ul class="site-menu" data-plugin="menu">
                    <li class="site-menu-category">Externo</li>
                    <li class="site-menu-item has-sub">
                        <a href="/externo/empresa">
                            <i class="site-menu-icon wb-briefcase" aria-hidden="true"></i>
                            <span class="site-menu-title">Empresa</span>
                        </a>
                    </li>
                    <li class="site-menu-item has-sub">
                        <a href="javascript:void(0)">
                            <i class="site-menu-icon wb-users" aria-hidden="true"></i>
                            <span class="site-menu-title">Usuáros</span>
                            <span class="site-menu-arrow"></span>
                        </a>
                        <ul class="site-menu-sub">
                            <li class="site-menu-item">
                                <a class="animsition-link" href="/externo/usuario/cadastro">
                                    <span class="site-menu-title">Cadastrar</span>
                                </a>
                            </li>
                            <li class="site-menu-item">
                                <a class="animsition-link" href="/externo/usuarios">
                                    <span class="site-menu-title">Consultar</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="site-menu-item has-sub">
                        <a href="javascript:void(0)">
                            <i class="site-menu-icon wb-order" aria-hidden="true"></i>
                            <span class="site-menu-title">Tickets</span>
                            <span class="site-menu-arrow"></span>
                        </a>
                        <ul class="site-menu-sub">
                            <li class="site-menu-item">
                                <a class="animsition-link" href="/externo/chamado">
                                    <span class="site-menu-title">Abrir Chamado</span>
                                </a>
                            </li>
                            <li class="site-menu-item">
                                <a class="animsition-link" href="/externo/chamado/pendentes">
                                    <span class="site-menu-title">Chamados Pendentes</span>
                                </a>
                            </li>
                            <li class="site-menu-item">
                                <a class="animsition-link" href="/externo/chamado/consultar">
                                    <span class="site-menu-title">Consultar</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>    
