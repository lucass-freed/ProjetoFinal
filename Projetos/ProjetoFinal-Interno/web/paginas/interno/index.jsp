<%@page import="br.com.projetofinal.enumTypes.CriticidadeTypes"%>
<%@page import="br.com.projetofinal.Util.NumberFormato"%>
<%@page import="br.com.projetofinal.enumTypes.EnumTicketStatusType"%>
<%@page import="br.com.projetofinal.dao.TicketDAO"%>
<%@page import="br.com.projetofinal.bean.TicketBean"%>
<%@page import="java.util.List"%>
<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file="/padroes/padrao-interno-master/dashboard.jsp" %>
<% } else { %>
<%@include file="/padroes/padrao-interno-regular/dashboard.jsp" %>
<% }%>

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
                                        <i class="icon wb-minus-circle"></i>
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
    <div class="col-xxl-3">
        <!-- Panel Tickets -->
        <div class="panel box-shadow">
            <div class="panel-heading">
                <h3 class="panel-title">Lista de Tickets</h3>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped table-hover compact table-bordered text-shadow" style="width:100%" id="tabela-ticket">
                        <thead class="thead-light">
                            <tr>
                                <th scope="col">Protocolo</th>
                                <th scope="col">Empresa</th>
                                <th scope="col">Título</th>
                                <th scope="col">Data de Abertura</th>
                                <th scope="col">Data de Encerramento</th>
                                <th scope="col">Criticidade</th>
                                <th scope="col">Situação</th>
                                <th scope="col">Opção</th>
                            </tr>
                        </thead>
                        <tbody>



                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- End Panel Tickets -->
    </div>
</div>
<script src="/js/datatable/jquery.min.js"></script>
<script src="/js/tabelas/tabela-home-tickets.js"></script>

<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file= "/padroes/padrao-interno-master/rodape.jsp"%>
<% } else { %>
<%@include file="/padroes/padrao-interno-regular/rodape.jsp"%>
<% }%>