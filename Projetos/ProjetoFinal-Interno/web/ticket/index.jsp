<%-- 
    Document   : index
    Created on : 27/08/2018, 08:29:23
    Author     : Michelle de Jesus Rogério
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html class="no-js css-menubar" lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="bootstrap admin template">
    <meta name="author" content="">
    
    <title>Tickets</title>
    
    <link rel="apple-touch-icon" href="/ProjetoFinal-Interno/tema/assets/images/apple-touch-icon.png">
    <link rel="shortcut icon" href="/ProjetoFinal-Interno/tema/assets/images/favicon.ico">
    
    <!-- Stylesheets -->
    <link rel="stylesheet" href="/ProjetoFinal-Interno/tema/global/css/bootstrap.min.css">
    <link rel="stylesheet" href="/ProjetoFinal-Interno/tema/global/css/bootstrap-extend.min.css">
    <link rel="stylesheet" href="/ProjetoFinal-Interno/temasets/css/site.min.css">
    
    <!-- Plugins -->
    <link rel="stylesheet" href="/ProjetoFinal-Interno/tema/global/vendor/animsition/animsition.css">
    <link rel="stylesheet" href="/ProjetoFinal-Interno/tema/global/vendor/asscrollable/asScrollable.css">
    <link rel="stylesheet" href="/ProjetoFinal-Interno/tema/global/vendor/switchery/switchery.css">
    <link rel="stylesheet" href="/ProjetoFinal-Interno/tema/global/vendor/intro-js/introjs.css">
    <link rel="stylesheet" href="/ProjetoFinal-Interno/tema/global/vendor/slidepanel/slidePanel.css">
    <link rel="stylesheet" href="/ProjetoFinal-Interno/tema/global/vendor/flag-icon-css/flag-icon.css">
    
    <!-- Fonts -->
    <link rel="stylesheet" href="/ProjetoFinal-Interno/tema/global/fonts/web-icons/web-icons.min.css">
    <link rel="stylesheet" href="/ProjetoFinal-Interno/tema/global/fonts/brand-icons/brand-icons.min.css">
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,300italic'>
    
    <!--[if lt IE 9]>
    <script src="../../../global/vendor/html5shiv/html5shiv.min.js"></script>
    <![endif]-->
    
    <!--[if lt IE 10]>
    <script src="../../../global/vendor/media-match/media.match.min.js"></script>
    <script src="../../../global/vendor/respond/respond.min.js"></script>
    <![endif]-->
    
    <!-- Scripts -->
    <script src="/ProjetoFinal-Interno/tema/global/vendor/breakpoints/breakpoints.js"></script>
    <script>
      Breakpoints();
    </script>
  </head>
  <body class="animsition">
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    <!-- Page -->
    <div class="page">
      <div class="page-content container-fluid">
        <!-- Panel Tabs -->
        <div class="panel">
          <div class="panel-heading">
            <h3 class="panel-title">Ticket</h3>
          </div>
          <div class="panel-body container-fluid">
            <div class="row row-lg">
              <div class="col-xl-6">
                <!-- Tabs -->
                <div class="example-wrap">
                  <div class="nav-tabs-horizontal" data-plugin="tabs">
                    <ul class="nav nav-tabs" role="tablist">
                      <li class="nav-item" role="presentation"><a class="nav-link active" data-toggle="tab" href="#exampleTabsOne"
                          aria-controls="exampleTabsOne" role="tab">Descrição</a></li>
                      <li class="nav-item" role="presentation"><a class="nav-link" data-toggle="tab" href="#exampleTabsTwo"
                          aria-controls="exampleTabsTwo" role="tab">Informações</a></li>
                      <li class="nav-item" role="presentation"><a class="nav-link" data-toggle="tab" href="#exampleTabsThree"
                          aria-controls="exampleTabsThree" role="tab">Movimentação</a></li>
                      <li class="nav-item" role="presentation"><a class="nav-link" data-toggle="tab" href="#exampleTabsFour"
                          aria-controls="exampleTabsFour" role="tab">Conclusão</a></li>
                      <li class="dropdown nav-item" role="presentation">
                        <a class="dropdown-toggle nav-link" data-toggle="dropdown" href="#" aria-expanded="false">Menu </a>
                        <div class="dropdown-menu" role="menu">
                          <a class="active dropdown-item" data-toggle="tab" href="#exampleTabsOne" aria-controls="exampleTabsOne"
                            role="tab">Descrição</a>
                          <a class="dropdown-item" data-toggle="tab" href="#exampleTabsTwo" aria-controls="exampleTabsTwo"
                            role="tab">Informações</a>
                          <a class="dropdown-item" data-toggle="tab" href="#exampleTabsThree" aria-controls="exampleTabsThree"
                            role="tab">Movimentação</a>
                          <a class="dropdown-item" data-toggle="tab" href="#exampleTabsFour" aria-controls="exampleTabsFour"
                            role="tab">Conclusão</a>
                        </div>
                      </li>
                    </ul>
                    <div class="tab-content pt-20">
                      <div class="tab-pane active" id="exampleTabsOne" role="tabpanel">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Neglegentur sabinum instructus
                        fingitur accusantibus harum neque consuetudine intereant
                        numeris, ipse tuemur suum apud mediocrem iactant. Libidinibus
                        amatoriis dicta albuci manum, statue.
                      </div>
                      <div class="tab-pane" id="exampleTabsTwo" role="tabpanel">
                        Negant parvos fructu nostram mutans supplicii ac dissentias, maius tibi licebit
                        ruinae philosophia. Salutatus repellere titillaret expetendum
                        ipsi. Cupiditates intellegam exercitumque privatio concederetur,
                        sempiternum, verbis malint dissensio nullas noctesque earumque.
                      </div>
                      <div class="tab-pane" id="exampleTabsThree" role="tabpanel">
                        Benivole horrent tantalo fuisset adamare fugiendam tractatos indicaverunt animis
                        chaere, brevi minuendas, ubi angoribus iisque deorsum audita
                        haec dedocendi utilitas. Panaetium erimus platonem varias
                        imperitos animum, iudiciorumque operis multa disputando.
                      </div>
                      <div class="tab-pane" id="exampleTabsFour" role="tabpanel">
                        Metus subtilius texit consilio fugiendam, opinionum levius amici inertissimae pecuniae
                        tribus ordiamur, alienus artes solitudo, minime praesidia
                        proficiscuntur reiciat detracta involuta veterum. Rutilius
                        quis honestatis hominum, quisquis percussit sibi explicari.
                      </div>
                    </div>
                  </div>
                </div>
                <!-- End Tabs -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- End Page -->


    <!-- Footer -->
    <footer class="site-footer">
      <div class="site-footer-legal">© 2018 <a href="http://themeforest.net/item/remark-responsive-bootstrap-admin-template/11989202">Remark</a></div>
      <div class="site-footer-right">
        Crafted with <i class="red-600 wb wb-heart"></i> by <a href="https://themeforest.net/user/creation-studio">Creation Studio</a>
      </div>
    </footer>
    <!-- Core  -->
    <script src="/ProjetoFinal-Interno/tema/global/vendor/babel-external-helpers/babel-external-helpers.js"></script>
    <script src="/ProjetoFinal-Interno/tema/global/vendor/jquery/jquery.js"></script>
    <script src="/ProjetoFinal-Interno/tema/global/vendor/popper-js/umd/popper.min.js"></script>
    <script src="/ProjetoFinal-Interno/tema/global/vendor/bootstrap/bootstrap.js"></script>
    <script src="/ProjetoFinal-Interno/tema/global/vendor/animsition/animsition.js"></script>
    <script src="/ProjetoFinal-Interno/tema/global/vendor/mousewheel/jquery.mousewheel.js"></script>
    <script src="/ProjetoFinal-Interno/tema/global/vendor/asscrollbar/jquery-asScrollbar.js"></script>
    <script src="/ProjetoFinal-Interno/tema/global/vendor/asscrollable/jquery-asScrollable.js"></script>
    <script src="/ProjetoFinal-Interno/tema/global/vendor/ashoverscroll/jquery-asHoverScroll.js"></script>
    
    <!-- Plugins -->
    <script src="/ProjetoFinal-Interno/tema/global/vendor/switchery/switchery.js"></script>
    <script src="/ProjetoFinal-Interno/tema/global/vendor/intro-js/intro.js"></script>
    <script src="/ProjetoFinal-Interno/tema/global/vendor/screenfull/screenfull.js"></script>
    <script src="/ProjetoFinal-Interno/tema/global/vendor/slidepanel/jquery-slidePanel.js"></script>
        <script src="/ProjetoFinal-Interno/tema/global/vendor/matchheight/jquery.matchHeight-min.js"></script>
    
    <!-- Scripts -->
    <script src="/ProjetoFinal-Interno/tema/global/js/Component.js"></script>
    <script src="/ProjetoFinal-Interno/tema/global/js/Plugin.js"></script>
    <script src="/ProjetoFinal-Interno/tema/global/js/Base.js"></script>
    <script src="/ProjetoFinal-Interno/tema/global/js/Config.js"></script>
    
    <script src="/ProjetoFinal-Interno/tema/assets/js/Section/Menubar.js"></script>
    <script src="/ProjetoFinal-Interno/tema/assets/js/Section/GridMenu.js"></script>
    <script src="/ProjetoFinal-Interno/tema/assets/js/Section/Sidebar.js"></script>
    <script src="/ProjetoFinal-Interno/tema/assets/js/Section/PageAside.js"></script>
    <script src="/ProjetoFinal-Interno/tema/assets/js/Plugin/menu.js"></script>
    
    <script src="/ProjetoFinal-Interno/tema/global/js/config/colors.js"></script>
    <script src="/ProjetoFinal-Interno/tema/assets/js/config/tour.js"></script>
    <script>Config.set('assets', '../../assets');</script>
    
    <!-- Page -->
    <script src="/ProjetoFinal-Interno/tema/assets/js/Site.js"></script>
    <script src="/ProjetoFinal-Interno/tema/global/js/Plugin/asscrollable.js"></script>
    <script src="/ProjetoFinal-Interno/tema/global/js/Plugin/slidepanel.js"></script>
    <script src="/ProjetoFinal-Interno/tema/global/js/Plugin/switchery.js"></script>
        <script src="/ProjetoFinal-Interno/tema/global/js/Plugin/responsive-tabs.js"></script>
        <script src="/ProjetoFinal-Interno/tema/global/js/Plugin/closeable-tabs.js"></script>
        <script src="/ProjetoFinal-Interno/tema/global/js/Plugin/tabs.js"></script>
    
    <script>
      (function(document, window, $){
        'use strict';
    
        var Site = window.Site;
        $(document).ready(function(){
          Site.run();
        });
      })(document, window, jQuery);
    </script>
  </body>
</html>
