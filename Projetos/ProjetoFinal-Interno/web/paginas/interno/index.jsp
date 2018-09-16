<%@page import="br.com.projetofinal.enumTypes.CriticidadeTypes"%>
<%@page import="br.com.projetofinal.Util.NumberFormato"%>
<%@page import="br.com.projetofinal.enumTypes.EnumTicketStatusType"%>
<%@page import="br.com.projetofinal.dao.TicketDAO"%>
<%@page import="br.com.projetofinal.bean.TicketBean"%>
<%@page import="java.util.List"%>
<%@include file="/padroes/padrao-interno-regular/dashboard.jsp"%>

<div class="row" data-plugin="matchHeight" data-by-row="true">
    <div class="col-xxl-3">
        <div class="row" data-plugin="matchHeight">
            <div class="col-xxl-12 col-lg-4 col-sm-4">
                <div class="card card-shadow">
                    <div class="card-block p-30 box-shadow">
                        <div class="row">
                            <div class="counter text-left blue-grey-700">
                                <div class="col-xxl-3">
                                    <button type="button" class="btn btn-floating btn-sm btn-success">
                                        <i class="icon wb-check"></i>
                                    </button>
                                    <span class="ml-15 font-weight-700">TICKETS CONCLUÍDOS</span>
                                    <div class="counter-number font-size-40 mt-10"><%= new NumberFormato().f(new TicketDAO().getQuantidadeTicketsConcluidos())%></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xxl-12 col-lg-4 col-sm-4">
                <div class="card card-shadow">
                    <div class="card-block p-30 box-shadow">
                        <div class="row">
                            <div class="counter text-left blue-grey-700">
                                <div class="col-xxl-3">
                                    <button type="button" class="btn btn-floating btn-sm btn-primary">
                                        <i class="icon wb-info"></i>
                                    </button>
                                    <span class="ml-15 font-weight-700">TICKETS EM ANDAMENTO</span>
                                    <div class="counter-number font-size-40 mt-10"><%= new NumberFormato().f(new TicketDAO().getQuantidadeTicketsEmAndamento())%></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xxl-12 col-lg-4 col-sm-4">
                <div class="card card-shadow">
                    <div class="card-block p-30 box-shadow">
                        <div class="row">
                            <div class="counter text-left blue-grey-700">
                                <div class="col-xxl-3">
                                    <button type="button" class="btn btn-floating btn-sm btn-warning">
                                        <i class="icon wb-alert"></i>
                                    </button>
                                    <span class="ml-15 font-weight-700">TICKETS PENDENTES</span>
                                    <div class="counter-number font-size-40 mt-10"><%= new NumberFormato().f(new TicketDAO().getQuantidadeTicketsPendentes())%></div>
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
    <!--    <div class="col-xxl-9">
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
        </div>-->
    <div class="col-xl-12 col-lg-10">
        <!-- Panel Tickets -->
        <div class="panel box-shadow">
            <div class="panel-heading">
                <h3 class="panel-title">Lista de Tickets</h3>
            </div>
            <div class="panel-body">
                <table class="table table-striped table-bordered text-shadow" style="width:100%" id="tabela-ticket">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Empresa</th>
                            <th scope="col">Título</th>
                            <th scope="col">Data de Abertura</th>
                            <th scope="col">Data de Encerramento</th>
                            <th scope="col">Criticidade</th>
                            <th scope="col">Situação</th>
                            <th scope="col">Opção</th>
                            <th scope="col"><i class="fas fa-cogs"></i></th>
                        </tr>
                    </thead>
                    <tbody>
                        <!--<%for (TicketBean ticket : ((List<TicketBean>) request.getAttribute("tickets"))) {%>
                        <tr>
                            <td> <%= ticket.getId()%> </td>
                            <td> <%= ticket.getEmpresa().getNomeFantasia()%> </td>
                            <td> <%= ticket.getTitulo()%> </td>
                            <td> <%= ticket.getDataAbertura()%> </td>     
                            <td> <%= ticket.getDataEncerramento()%> </td>
                            <% if (ticket.getCriticidade() == CriticidadeTypes.BAIXA) {%>
                            <td> <span class="badge badge-success">Baixa</span> </td>     
                            <%} else if (ticket.getCriticidade() == CriticidadeTypes.MEDIA) {%>
                            <td> <span class="badge badge-primary">Média</span> </td> 
                            <%} else if (ticket.getCriticidade() == CriticidadeTypes.ALTA) {%>
                            <td> <span class="badge badge-primary">Alta</span> </td> 
                            <%} else {%>
                            <td> <span class="badge badge-danger">Altíssima</span> </td> 
                            <%}%>
                            <% if (ticket.getStatus()== EnumTicketStatusType.ABERTO) {%>
                            <td> <span class="badge badge-danger">Aberto</span> </td>     
                            <%} else if (ticket.getStatus() == EnumTicketStatusType.CONCLUIDO) {%>
                            <td> <span class="badge badge-success">Concluído</span> </td> 
                            <%} else {%>
                            <td> <span class="badge badge-primary">Em Andamento</span> </td> 
                            <%}%>
                            <td> 
                                <a class="btn btn-info" href="/produtos/editar?id=<%=ticket.getId()%>"><i class="fas fa-edit"></i> Editar</a>
                                <a class="btn btn-danger" href="/produtos/excluir?id=<%=ticket.getId()%>"><i class="fas fa-trash-alt"></i> Excluir</a>
                            </td>
                        </tr>
                        <%}%>-->
                    </tbody>
                </table>

                <!--                <ul class="list-group list-group-dividered list-group-full h-300" data-plugin="scrollable">
                                    <div data-role="container">
                                        <div data-role="content">
                                            <li class="list-group-item justify-content-between">
                                                <small class="badge badge-round badge-info float-right">Completed</small>
                                                <p>
                                                    <span>Server unavaible</span>
                                                    <span>[13060]</span>
                                                </p>
                                                <small>Aberto por
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
                                                <small>Aberto por
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
                                                <small>Aberto por
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
                                                <small>Aberto por
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
                                                <small>Aberto por
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
                                                <small>Aberto por
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
                                                <small>Aberto por
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
                                                <small>Aberto por
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
                                </ul>-->
            </div>
        </div>
        <!-- End Panel Tickets -->
    </div>
</div>

<%@include file="/padroes/padrao-interno-regular/rodape.jsp"%>