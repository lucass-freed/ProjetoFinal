<%-- 
    Document   : index
    Created on : 27/08/2018, 11:02:05
    Author     : Lucas Rodrigo
--%>

<!DOCTYPE html>
<html class="no-js css-menubar" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <meta name="description" content="bootstrap admin template">
        <meta name="author" content="">

        <title>FlowDesk Interno | <%= request.getAttribute("title")%></title>

        <link rel="apple-touch-icon" href="/tema/assets/images/apple-touch-icon.png">
        <link rel="shortcut icon" href="/tema/assets/images/favicon.png">

        <!-- Stylesheets -->
        <link rel="stylesheet" href="/tema/global/css/bootstrap.min.css">
        <link rel="stylesheet" href="/tema/global/css/bootstrap-extend.min.css">
        <link rel="stylesheet" href="/css/site.min.css">

        <!-- Plugins -->
        <link rel="stylesheet" href="/tema/global/vendor/animsition/animsition.css">
        <link rel="stylesheet" href="/tema/global/vendor/asscrollable/asScrollable.css">
        <link rel="stylesheet" href="/tema/global/vendor/switchery/switchery.css">
        <link rel="stylesheet" href="/tema/global/vendor/intro-js/introjs.css">
        <link rel="stylesheet" href="/tema/global/vendor/slidepanel/slidePanel.css">
        <link rel="stylesheet" href="/tema/global/vendor/flag-icon-css/flag-icon.css">
        <link rel="stylesheet" href="/css/forgot-password.min.css">


        <!-- Fonts -->
        <link rel="stylesheet" href="/tema/global/fonts/web-icons/web-icons.min.css">
        <link rel="stylesheet" href="/tema/global/fonts/brand-icons/brand-icons.min.css">
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,300italic'>

        <!-- Scripts -->
        <script src="/tema/global/vendor/breakpoints/breakpoints.js"></script>
        <script>
            Breakpoints();
        </script>
    </head>
    <body class="animsition page-forgot-password layout-full">

        <!-- Page -->
        <div class="page vertical-align text-center" data-animsition-in="fade-in" data-animsition-out="fade-out">
            <div class="page-content vertical-align-middle animation-slide-top animation-duration-1 text-shadow">
                <div class="panel">
                    <div class="panel-body">
                        <div class="brand">
                            <img class="brand-img" src="/tema/assets//images/logo-colored@2x.png" alt="...">
                            <h2 class="brand-text font-size-22">FlowDesk</h2>
                            <h4>Esqueceu sua senha ?</h4>
                        </div>
                        <form method="post" role="form">
                            <div class="form-group">
                                <input type="email" class="form-control" id="inputEmail" name="email" placeholder="Insira o seu e-mail">
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-block">Redefinir senha</button>
                            </div>
                        </form>
                    </div>
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

