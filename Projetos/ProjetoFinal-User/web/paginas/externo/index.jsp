<%-- 
    Document   : index
    Created on : 27/08/2018, 07:57:37
    Author     : Matheus Ruan Werner
--%>

<%@page import="br.com.projetofinal.bean.UsuarioBean"%>
<%@page import="br.com.projetofinal.dao.TicketDAO"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file="/padroes/padrao-externo-master/dashboard.jsp" %>
<% } else { %>
<%@include file="/padroes/padrao-externo-regular/dashboard.jsp" %>
<% }%>

<% HttpSession sessao = request.getSession();%>
<% UsuarioBean usuario = (UsuarioBean) sessao.getAttribute("usuario");%>
<!-- Page -->
<div class="page-header h-300 mb-30">
    <div class="text-center blue-grey-800 m-0 mt-50">
        <div class="font-size-60 mb-30 blue-grey-800">FlowDesk</div>
        <ul class="list-inline font-size-16">
            <li class="list-inline-item">
                {Slogan}
            </li>
        </ul>
    </div>
</div>

<div class="page-center">
    <div class="page-content container-fluid">
        <div class="row" data-plugin="matchHeight" data-by-row="true">
            <div class="col-xxl-3 col-xl-4">
                <!-- Panel Web Designer -->
                <div class="card card-shadow">
                    <div class="card-block text-center bg-white p-40">
                        <div class="avatar avatar-100 mb-20">
                            <img src="/tema/global/portraits/1.jpg" alt="">
                        </div>
                        <p class="font-size-20 blue-grey-700">Breno Bitencourt</p>
                        <p class="blue-grey-400 mb-20">Web Designer</p>
                        <a href="?=1"><button type="button" class="btn btn-primary px-40">Ir para o Perfil</button></a>
                    </div>
                </div>
                <!-- End Panel Web Designer -->
            </div>

            <div class="col-xxl-6 col-xl-8">
                <!-- Panel Traffic -->
                <div class="card card-shadow responsive" id="widgetLinearea">
                    <div class="card-block p-30" style="min-width:480px;">
                        <div class="row pb-20" style="height:calc(100% - 322px);">
                            <div class="col-md-7">
                                <div class="blue-grey-700 font-size-18">Seus Tickets</div>
                            </div>
                            <div class="col-sm-5">
                                <div class="row">
                                    <div style="text-align: left" class="col-sm-4">
                                        <div class="counter counter-md">
                                            <div class="counter-number-group text-nowrap">
                                                <span class="counter-number"><% new TicketDAO().getQuantidadeTicketsConcluidosIDUsuario(usuario.getId());%></span>
                                            </div>
                                            <div class="counter-label blue-grey-400">Concluídos</div>
                                        </div>
                                    </div>
                                    <div style="text-align: right" class="">
                                        <div class="counter counter-md">
                                            <div class="counter-number-group text-nowrap">
                                                <span class="counter-number"><% new TicketDAO().getQuantidadeTicketsEmAndamentoIDUsuario(usuario.getId());%></span>
                                            </div>
                                            <div class="counter-label blue-grey-400">Em Andamento</div>
                                        </div>
                                    </div>
                                    <div style="text-align: top" class="col-sm-4">
                                        <div class="counter counter-md">
                                            <div class="counter-number-group text-nowrap">
                                                <span class="counter-number"><% new TicketDAO().getQuantidadeTicketsPendentesIDUsuario(usuario.getId());%></span>
                                            </div>
                                            <div class="counter-label blue-grey-400">Pendentes</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel box-shadow">
                                </br>
                                <table class="table table-striped compact table-hover table-bordered text-shadow" style="width:102.5%" id="tabela-home-tickets">
                                    <div class="fixed-table-toolbar">
                                        <thead class="thead-light">
                                            <tr>
                                                <th scope="col">ID</th>
                                                <th scope="col">Título</th>
                                                <th scope="col">Data de Abertura</th>
                                                <th scope="col">Data de Conclusão</th>
                                                <th scope="col">Criticidade</th>
                                                <th scope="col">Situação</th>
                                            </tr>
                                        </thead>
                                        <tbody>



                                        </tbody>
                                    </div>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Panel Traffic -->
        </div>
    </div>
</div>
</div>
<!-- End Page -->

<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file= "/padroes/padrao-externo-master/rodape.jsp"%>
<% } else { %>
<%@include file="/padroes/padrao-externo-regular/rodape.jsp"%>
<% }%>