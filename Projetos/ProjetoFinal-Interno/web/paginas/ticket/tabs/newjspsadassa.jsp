



<!DOCTYPE html>
<html class="no-js css-menubar" lang="en">
    <head>
        <title>FlowDesk Interno | Tickets</title>
        <meta charset="utf-8">
        <meta http-equiv="content-type" content="text/html;charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <meta name="description" content="bootstrap admin template">
        <meta name="author" content="">
        <link rel="apple-touch-icon" href="/tema/assets/images/apple-touch-icon.png">
        <link rel="shortcut icon" href="/tema/assets/images/favicon.png">

        <!-- Stylesheets -->
        <link rel="stylesheet" href="/tema/global/css/bootstrap.min.css">
        <link rel="stylesheet" href="/tema/global/css/bootstrap-extend.min.css">
        <link rel="stylesheet" href="/css/site.min.css">
        <link rel="stylesheet" href="/css/select2/select2.min.css">
        <link rel="stylesheet" href="/css/datatable/jquery.dataTables.min.css">
        <link rel="stylesheet" href="/css/datatable/dataTables.bootstrap4.min.css">
        <link href="/css/pnotify.custom.min.css" media="all" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.css"/>
        <link rel="stylesheet" href="/css/sweetalert2.min.css">


        <!-- Plugins -->
        <link rel="stylesheet" href="/tema/global/vendor/animsition/animsition.css">
        <link rel="stylesheet" href="/tema/global/vendor/asscrollable/asScrollable.css">
        <link rel="stylesheet" href="/tema/global/vendor/switchery/switchery.css">
        <link rel="stylesheet" href="/tema/global/vendor/intro-js/introjs.css">
        <link rel="stylesheet" href="/tema/global/vendor/slidepanel/slidePanel.css">
        <link rel="stylesheet" href="/tema/global/vendor/flag-icon-css/flag-icon.css">
        <link rel="stylesheet" href="/css/layouts.css">

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
    <body class="animsition">



        <div class="site-menubar">
            <div class="site-menubar-body">
                <ul class="site-menu" data-plugin="menu">
                    <li class="site-menu-category">Interno</li>
                    <li class="site-menu-item has-sub">
                        <a href="javascript:void(0)">
                            <i class="site-menu-icon wb-time" aria-hidden="true"></i>
                            <span class="site-menu-title">Atendimento</span>

                            <div class="site-menu-badge">
                                <span class="badge badge-pill badge-danger">2</span>
                            </div>

                        </a>
                        <ul class="site-menu-sub">
                            <li class="site-menu-item">
                                <a class="animsition-link" href="../index.jsp">
                                    <span class="site-menu-title">Fila de atendimento</span>
                                </a>
                            </li>
                            <li class="site-menu-item">
                                <a class="animsition-link" href="/interno/tickets/pesquisar">
                                    <span class="site-menu-title">Pesquisar Ticket</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="site-menu-item has-sub">
                        <a href="javascript:void(0)">
                            <i class="site-menu-icon wb-briefcase" aria-hidden="true"></i>
                            <span class="site-menu-title">Empresas</span>
                            <span class="site-menu-arrow"></span>
                        </a>
                        <ul class="site-menu-sub">
                            <li class="site-menu-item">
                                <a class="animsition-link" href="/interno/empresa/cadastro">
                                    <span class="site-menu-title">Cadastrar</span>
                                </a>
                            </li>
                            <li class="site-menu-item">
                                <a class="animsition-link" href="/interno/empresas">
                                    <span class="site-menu-title">Consultar</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="site-menu-item has-sub">
                        <a href="javascript:void(0)">
                            <i class="site-menu-icon wb-users" aria-hidden="true"></i>
                            <span class="site-menu-title">Colaboradores</span>
                            <span class="site-menu-arrow"></span>
                        </a>
                        <ul class="site-menu-sub">
                            <li class="site-menu-item has-sub">
                                <a class="animsition-link" href="/interno/cadastro">
                                    <span class="site-menu-title">Cadastrar</span>
                                </a>       
                            </li>
                            <li class="site-menu-item has-sub">
                                <a class="animsition-link" href="/interno/colaboradores">
                                    <span class="site-menu-title">Consultar</span>
                                </a>       
                            </li>
                        </ul>
                    </li>
                    <li class="site-menu-item has-sub">
                        <a href="javascript:void(0)">
                            <i class="site-menu-icon wb-hammer" aria-hidden="true"></i>
                            <span class="site-menu-title">Funções</span>
                            <span class="site-menu-arrow"></span>
                        </a>
                        <ul class="site-menu-sub">
                            <li class="site-menu-item has-sub">
                                <a class="animsition-link" href="/interno/funcoes/cadastro">
                                    <span class="site-menu-title">Adicionar nova Função</span>
                                </a>       
                            </li>
                            <li class="site-menu-item has-sub">
                                <a class="animsition-link" href="/interno/funcoes">
                                    <span class="site-menu-title">Consultar Funções</span>
                                </a>       
                            </li>
                        </ul>
                    </li>
                    <li class="site-menu-item has-sub">
                        <a href="javascript:void(0)">
                            <i class="site-menu-icon wb-tag" aria-hidden="true"></i>
                            <span class="site-menu-title">Tags</span>
                            <span class="site-menu-arrow"></span>
                        </a>
                        <ul class="site-menu-sub">
                            <li class="site-menu-item has-sub">
                                <a class="animsition-link" href="/interno/tag/cadastro">
                                    <span class="site-menu-title">Adicionar nova Tag</span>
                                </a>       
                            </li>
                            <li class="site-menu-item has-sub">
                                <a class="animsition-link" href="/interno/tags">
                                    <span class="site-menu-title">Consultar Tags</span>
                                </a>       
                            </li>
                        </ul>
                    </li>
                    <li class="site-menu-item has-sub">
                        <a href="javascript:void(0)">
                            <i class="site-menu-icon wb-clipboard" aria-hidden="true"></i>
                            <span class="site-menu-title">Relatórios</span>
                            <span class="site-menu-arrow"></span>
                        </a>
                        <ul class="site-menu-sub">
                            <li class="site-menu-item has-sub">
                                <a href="javascript:void(0)">
                                    <span class="site-menu-title">Exemplo Relatório</span>
                                </a>       
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div> 
        <nav class="site-navbar navbar navbar-default navbar-fixed-top navbar-mega" role="navigation">

            <div class="navbar-header">
                <button type="button" class="navbar-toggler collapsed" data-target="#site-navbar-collapse"
                        data-toggle="collapse">
                    <i class="icon wb-more-horizontal" aria-hidden="true"></i>
                </button>
                <div>
                    <a href="/interno" class="navbar-brand navbar-brand-center">
                        <img class="navbar-brand-logo" src="/tema/assets/images/logo.png" title="FlowDesk">
                        <span class="navbar-brand-text hidden-xs-down"> FlowDesk</span>
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
                                    <i></i>
                                </span>
                            </a>
                            <div class="dropdown-menu" role="menu">
                                <a class="dropdown-item" href="/interno/perfil" role="menuitem"><i class="icon wb-user" aria-hidden="true"></i> Perfil</a>
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

        <!-- Page -->
        <div class="page">
            <div class="page-content">
                <div class="panel">
                    <div class="panel-heading">
                        <div class="col-xl-12 box-shadow">
                            <div class="example ticket-status">

                                <div class="ribbon ribbon-clip ribbon-reverse ribbon-success">
                                    <span class="ribbon-inner">Concluído</span>
                                </div>

                                <h3 class="panel-title">Ticket # 1</h3>
                            </div>
                            <div class="panel-body container-fluid">
                                <div class="row row-lg">
                                    <div class="col-xl-12">
                                        <!-- Tabs -->
                                        <div class="example-wrap">

                                            <div class="nav-tabs-horizontal" data-plugin="tabs">
                                                <ul class="nav nav-tabs" role="tablist">
                                                    <li class="nav-item" role="presentation">
                                                        <a class="nav-link active" data-toggle="tab" href="#tab-descricao"
                                                           aria-controls="tab-descricao" role="tab">Descrição</a>
                                                    </li>
                                                    <li class="nav-item" role="presentation">
                                                        <a class="nav-link" data-toggle="tab" href="#tab-informacoes"
                                                           aria-controls="tab-informacoes" role="tab">Informações</a>
                                                    </li>
                                                    <li class="nav-item" role="presentation">
                                                        <a class="nav-link" data-toggle="tab" href="#tab-movimentacoes"
                                                           aria-controls="tab-movimentacoes" role="tab">Movimentações</a>
                                                    </li>
                                                    <li class="nav-item" role="presentation">
                                                        <a class="nav-link" data-toggle="tab" href="#tab-conclusao"
                                                           aria-controls="tab-conclusao" role="tab">Conclusão</a>
                                                    </li>
                                                </ul>
                                                <div class="tab-content pt-20">
                                                    <div class="tab-pane active" id="tab-descricao" role="tabpanel">
                                                        <!--Descrição do Ticket -->
                                                        <h4>Probleminha</h4>
                                                        <div class="criticidade" style="text-align: right;">  
                                                            <div class="example ticket-criticidade">

                                                                <div>
                                                                    <span class="badge badge-success font-size-14">Baixa</span>  
                                                                </div>

                                                                <h3 class="panel-title">Ticket # 1</h3>
                                                            </div>
                                                        </div>
                                                        <div class="page-content container-fluid">
                                                            <div class="row">
                                                                <div class="col-lg-8">
                                                                    Não consigo encontrar o relatório de vendas do dia 25, alguém me ajuda por favor
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="example-wrap">
                                                            <div class="tags" style="text-align: right;">


                                                                <span class="badge badge-outline badge-dark">Dúvida</span>

                                                                <span class="badge badge-outline badge-dark">Operacional</span>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="tab-pane" id="tab-informacoes" role="#tab-informacoes">
                                                        <h4 class="example-title">Informações da Empresa</h4>
                                                        <div class="example">
                                                            <form autocomplete="off">
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-control-label" for="storeCNPJ">CNPJ</label>
                                                                        <input type="text" class="form-control" id="storeCNPJ" name="storeCNPJ"
                                                                               disabled="disabled" autocomplete="off" value="35392425000178"/>
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-control-label" for="storeInscricaoEstadual">Inscrição Estadual</label>
                                                                        <input type="text" class="form-control" id="storeInscricaoEstadual" name="storeInscricaoEstadual"
                                                                               disabled="disabled" autocomplete="off" value="689.707.177"/>
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-control-label" for="storeRazaoSocial">Razão Social</label>
                                                                        <input type="text" class="form-control" id="storeRazaoSocial" name="storeRazaoSocial"
                                                                               disabled="disabled" autocomplete="off" value="Miguel Ltda"/>
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-control-label" for="storeNomeFantasia">Nome Fantasia</label>
                                                                        <input type="text" class="form-control" id="storeNomeFantasia" name="storeNomeFantasia"
                                                                               disabled="disabled" autocomplete="off" value="Gueto RapBox"/>
                                                                    </div>


                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-control-label" for="storeDataAtivacao">Data de Ativação</label>
                                                                        <input type="text" class="form-control" id="storeDataAtivacao" name="storeDataAtivacao"
                                                                               disabled="disabled" autocomplete="off" value="24/05/2018"/>
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-control-label" for="storeDataExpiração">Data de Expiração</label>
                                                                        <input type="text" class="form-control" id="storeDataExpiração" name="storeDataExpiração"
                                                                               disabled="disabled" autocomplete="off" value="24/05/2019"/>
                                                                    </div>
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-control-label" for="storeValidadeCertificado">Validade do Certificado</label>
                                                                        <input type="text" class="form-control" id="storeValidadeCertificado" name="storeValidadeCertificado"
                                                                               disabled="disabled" autocomplete="off" value="2019-03-01"/>
                                                                    </div>
                                                                </div>

                                                        </div>
                                                        <div>
                                                            <h4 class="example-title">Dados de Contato</h4>
                                                            <div class="form-row">
                                                                <div class="form-group col-md-6">
                                                                    <label class="form-control-label" for="storeEmail">Email</label>
                                                                    <input type="text" class="form-control" id="storeEmail" name="storeEmail"
                                                                           disabled="disabled" autocomplete="off" value="fabricacao@ltda.com.br"/>
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label class="form-control-label" for="storeTelefone">Telefone</label>
                                                                    <input type="text" class="form-control" id="storeTelefone" name="storeTelefone"
                                                                           disabled="disabled" autocomplete="off" value="1129371397"/>
                                                                </div>
                                                            </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                    <div class="tab-pane" id="tab-movimentacoes" role="#tab-movimentacoes">
                                                        <div class="panel box-shadow">
                                                            <div class="panel-heading">
                                                                <h3 class="panel-title">Últimas Movimentações</h3>
                                                            </div>
                                                            <div class="panel-body">
                                                                <table class="table table-striped table-hover table-bordered text-shadow" style="width:100%" id="ultimas-movimentacoes">
                                                                    <thead class="thead-light">
                                                                        <tr>
                                                                            <th scope="col">ID</th>
                                                                            <th scope="col">Movimentado Por</th>
                                                                            <th scope="col">Data da Movimentação</th>
                                                                            <th scope="col">Observação</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>



                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- TODO:
                                                                    INSERIR MENSAGEM DE SUCESSO QUANDO SALVAR
                                                                    - Encaminhar (abre um "FROM/TO" onde o FROM já vem autopreenchido com o colaborador logado e o TO é search)
                                                        OBS.: Todas as movimentações serão enviadas para registro no log através do
                                                                TicketLogBean log =  new TicketDAO().atualizarLog();
                                                    -->
                                                    <!--TODO:
                                        - Procedimento Resolução
                                    
                                                    -->
                                                    <div class="tab-pane" id="tab-conclusao" role="#tab-conclusao">
                                                        <div class="example">
                                                            <form autocomplete="off">
                                                                <div class="form-row">
                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-control-label" for="storeDataAbertura">Data de Abertura</label>
                                                                        <input type="text" class="form-control" id="storeDataAbertura" name="storeDataAbertura"
                                                                               disabled="disabled" autocomplete="off" value="01/09/2018 às 00:00"/>
                                                                    </div>


                                                                    <div class="form-group col-md-6">
                                                                        <label class="form-control-label" for="storeDataConclusao">Data de Conclusão</label>
                                                                        <input type="text" class="form-control" id="storeDataConclusao" name="storeDataConclusao"
                                                                               disabled="disabled" autocomplete="off" value="05/09/2018"/>
                                                                    </div>

                                                                    <div class="form-group row col-md-6">
                                                                        <label class="form-control-label" for="storeDataConclusao">Procedimento de Resolução</label>
                                                                        <div class="col-md-9">
                                                                            <textarea class="form-control" id="storeDataConclusao" name="storeDataConclusao" disabled="disabled" autocomplete="off" value="05/09/2018"/>
                                                                            </textarea>
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <script src="/js/datatable/jquery.min.js"></script>
                                <script src="/js/tabelas/tabela-movimentacoes.js"></script>
                            </div>
                        </div>
                        <!-- End Tabs -->
                    </div>
                </div>
            </div>
        </div>
    </div>
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
<script src="/tema/global/vendor/skycons/skycons.js"></script>
<script src="/tema/global/vendor/chartist/chartist.min.js"></script>
<script src="/tema/global/vendor/chartist-plugin-tooltip/chartist-plugin-tooltip.js"></script>
<script src="/tema/global/vendor/aspieprogress/jquery-asPieProgress.min.js"></script>
<script src="/tema/global/vendor/jvectormap/jquery-jvectormap.min.js"></script>
<script src="/tema/global/vendor/jvectormap/maps/jquery-jvectormap-au-mill-en.js"></script>
<script src="/tema/global/vendor/matchheight/jquery.matchHeight-min.js"></script>

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
<script src="/tema/global/js/Plugin/matchheight.js"></script>
<script src="/tema/global/js/Plugin/jvectormap.js"></script>
<script src="/tema/global/vendor/jquery-placeholder/jquery.placeholder.js"></script>
<script src="/tema/global/js/Plugin/jquery-placeholder.js"></script>
<script src="/js/select2/pesquisar-ticket.js" type="text/javascript"></script>
<script src="/js/datatable/jquery.dataTables.min.js"></script>
<script src="/js/datatable/jquery.table2excel.min.js"></script>
<script src="/js/datatable/dataTables.bootstrap4.min.js"></script>
<script src="/js/cadastro/jquery.validate.js"></script>
<script src="/js/cadastro/jquery.validate.min.js"></script>
<script src="/js/cadastro/jquery.mask.js"></script>
<script src="/js/cadastro/jquery.mask.min.js"></script>
<script src="/js/pnotify.custom.min.js"></script>
<script src="/js/select2/select2.min.js" type="text/javascript"></script>
<script src="/tema/global/js/Plugin/matchheight.js"></script>
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

