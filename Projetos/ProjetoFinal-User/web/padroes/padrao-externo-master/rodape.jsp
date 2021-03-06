<%-- 
    Document   : rodape
    Created on : 24/08/2018, 10:10:21
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

</div>
</div>

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
<script src="/js/tabelas/tabela-ticket-pendente.js"></script>
<script src="/js/tabelas/tabela-home-tickets.js"></script>
<script src="/js/tabelas/tabela-usuarios.js"></script>
<script src="/js/consulta.js"></script>
<script src="/js/change-password.js"></script>
<script src="/js/select2/selectChamado.js"></script>
<script src="/js/select2/select2.min.js"></script>
<script src="/js/datatable/jquery.dataTables.min.js"></script>
<script src="/js/datatable/jquery.table2excel.min.js"></script>
<script src="/js/datatable/dataTables.bootstrap4.min.js"></script>
<script type="text/javascript" src="/js/pnotify.custom.min.js"></script>
<script src="/js/cadastro/jquery.validate.js"></script>
<script src="/js/cadastro/jquery.validate.min.js"></script>
<script src="/js/cadastro/jquery.mask.js"></script>
<script src="/js/cadastro/jquery.mask.min.js"></script>
<script src="/js/chamado.js"></script>
<script src="/js/sweetalert2.all.min.js"></script>

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