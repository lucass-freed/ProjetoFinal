<!DOCTYPE html>
<html class="no-js css-menubar" lang="en">
    <head>
        <title>FlowDesk Externo | <%= request.getAttribute("title")%></title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <meta name="description" content="bootstrap admin template">
        <meta name="author" content="">

        <link rel="apple-touch-icon" href="/tema/assets/images/apple-touch-icon.png">
        <link rel="shortcut icon" href="/tema/assets/images/favicon.png">

        <!-- Stylesheets -->
        <link rel="stylesheet" href="/tema/global/css/bootstrap.min.css">
        <link rel="stylesheet" href="/tema/global/css/bootstrap-extend.min.css">
        <link rel="stylesheet" href="css/site.min.css">
        <link rel="stylesheet" href="/css/login.css">

        <!-- Plugins -->
        <link rel="stylesheet" href="/tema/global/vendor/animsition/animsition.css">
        <link rel="stylesheet" href="/tema/global/vendor/asscrollable/asScrollable.css">
        <link rel="stylesheet" href="/tema/global/vendor/switchery/switchery.css">
        <link rel="stylesheet" href="/tema/global/vendor/intro-js/introjs.css">
        <link rel="stylesheet" href="/tema/global/vendor/slidepanel/slidePanel.css">
        <link rel="stylesheet" href="/tema/global/vendor/flag-icon-css/flag-icon.css">
        <link href="/css/pnotify.custom.min.css" media="all" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="/css/layout-2.css">


        <!-- Fonts -->
        <link rel="stylesheet" href="/tema/global/fonts/web-icons/web-icons.min.css">
        <link rel="stylesheet" href="/tema/global/fonts/brand-icons/brand-icons.min.css">

        <!-- Scripts -->
        <script src="/tema/global/vendor/breakpoints/breakpoints.js"></script>
        <script>
            Breakpoints();
        </script>
    </head>
    <body class="animsition page-login-v2 layout-full">
        <style>

        </style>
        <!-- Page -->
        <div class="page" data-animsition-in="fade-in" data-animsition-out="fade-out">
            <div id="div-fundo-login">
                <div class="carousel slide" id="exampleCarouselCaptions" data-ride="carousel">
                    <div class="carousel-inner" role="listbox">
                        <div class="carousel-item active">
                            <img class="w-full" src="/tema/assets//images/fundo.jpg" alt="..." />
                        </div>
                        <div class="carousel-item">
                            <img class="w-full" src="/tema/assets//images/fundo2.jpeg" alt="..." />
                        </div>
                    </div>
                </div>
            </div>
            <div class="page-login-main animation-slide-right animation-duration-1">
                <div class="brand text-center">
                    <img class="brand-img" src="/tema/assets//images/logo-colored@2x.png" alt="...">
                    <h2 class="brand-text font-size-30">FlowDesk</h2>
                </div>
                <h3 class="card-title mb-20 text-center">Login Externo</h3>
                <hr>
                <form method="post" onsubmit="validarLogin()">
                   <div class="example-wrap">
                        <div class="form-group">
                            <div class="input-group input-group-icon">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="icon wb-user" aria-hidden="true"></i>
                                    </span>
                                </div>
                                <input type="text" class="form-control" id="campo-usuario" name="usuario" required="required" placeholder="Usuário"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group input-group-icon">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="icon wb-lock" aria-hidden="true"></i>
                                    </span>
                                </div>
                                <input type="password" class="form-control" id="campo-senha" name="password" required="required" placeholder="Senha"/>
                            </div>
                        </div>
                        <input class="btn btn-primary btn-block btn-lg mt-40" type="submit" value="Entrar" required="required">
                    </div>
                </form>
            </div>
        </div>

        <!-- End Page -->


        <!-- Core  -->
        <script src="/tema/global/vendor/babel-external-helpers/babel-external-helpers.js"></script>
        <script src="/tema/global/vendor/jquery/jquery.js"></script>
        <script src="/tema/global/vendor/popper-js/umd/popper.min.js"></script>
        <script src="/tema/global/vendor/bootstrap/bootstrap.js"></script>
        <script src="/tema/global/vendor/animsition/animsition.js"></script>
        <script src="/tema/global/vendor/mousewheel/jquery.mousewheel.js"></script>
        <script src="/tema/global/vendor/asscrollbar/jquery-asScrollbar.js"></script>
        <script src="/tema/global/vendor/asscrollable/jquery-asScrollable.js"></script>
        <script src="/tema/global/vendor/ashoverscroll/jquery-asHoverScroll.js"></script>

        <!-- Plugins -->
        <script src="/tema/global/vendor/switchery/switchery.js"></script>
        <script src="/tema/global/vendor/intro-js/intro.js"></script>
        <script src="/tema/global/vendor/screenfull/screenfull.js"></script>
        <script src="/tema/global/vendor/slidepanel/jquery-slidePanel.js"></script>
        <script src="/tema/global/vendor/jquery-placeholder/jquery.placeholder.js"></script>

        <!-- Scripts -->
        <script src="/tema/global/js/Component.js"></script>
        <script src="/tema/global/js/Plugin.js"></script>
        <script src="/tema/global/js/Base.js"></script>
        <script src="/tema/global/js/Config.js"></script>

        <script src="/tema/assets/js/Section/Menubar.js"></script>
        <script src="/tema/assets/js/Section/GridMenu.js"></script>
        <script src="/tema/assets/js/Section/Sidebar.js"></script>
        <script src="/tema/assets/js/Section/PageAside.js"></script>
        <script src="/tema/assets/js/Plugin/menu.js"></script>

        <script src="/tema/global/js/config/colors.js"></script>
        <script src="/tema/assets/js/config/tour.js"></script>
        <script>Config.set('assets', '/tema/assets');</script>

        <!-- Page -->
        <script src="/tema/assets/js/Site.js"></script>
        <script src="/tema/global/js/Plugin/asscrollable.js"></script>
        <script src="/tema/global/js/Plugin/slidepanel.js"></script>
        <script src="/tema/global/js/Plugin/switchery.js"></script>
        <script src="/tema/global/js/Plugin/jquery-placeholder.js"></script>
        <script src="/tema/global/js/Plugin/material.js"></script>
        <script type="text/javascript" src="/js/pnotify.custom.min.js"></script>

        <script src="/js/login.js"></script>


        <script>
                    (function (document, window, $) {
                        'use strict';

                        var Site = window.Site;
                        $(document).ready(function () {
                            Site.run();
                        });
                    })(document, window, jQuery);
        </script>
    </body>
</html>
