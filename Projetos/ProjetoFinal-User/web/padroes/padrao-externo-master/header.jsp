<nav class="site-navbar navbar navbar-default navbar-fixed-top navbar-mega" role="navigation">

    <div class="navbar-header">
        <div class="navbar-brand navbar-brand-center">
            <a href="/externo">
                <img class="navbar-brand-logo" src="/tema/assets/images/logo.png" title="FlowDesk">
                <span class="navbar-brand-text hidden-xs-down">FlowDesk</span>         
            </a>
        </div>
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
                        </span>
                    </a>
                    <div class="dropdown-menu" role="menu">
                        <a class="dropdown-item" href="/usuario/perfil"  role="menuitem"><i class="icon wb-user" aria-hidden="true"></i> Perfil</a>
                        <div class="dropdown-divider" role="presentation"></div>
                        <a class="dropdown-item" href="/usuario/logout" role="menuitem"><i class="icon wb-power" aria-hidden="true"></i> Sair</a>
                    </div>
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
</nav>
