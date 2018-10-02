<%-- 
    Document   : index
    Created on : 26/09/2018, 21:47:31
    Author     : Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.projetofinal.dao.FuncaoDAO"%>
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
                                        <i class="icon wb-hammer"></i>
                                    </button>
                                    <span class="ml-15 font-weight-700">FUNÇÕES CADASTRADAS</span>
                                    <div class="counter-number font-size-40 mt-10"><%= new NumberFormato().f(new FuncaoDAO().getQuantidadeCadastradas())%></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-12 col-lg-10">
        <!-- Panel Tickets -->
        <div class="panel box-shadow">
            <div class="panel-heading">
                <h3 class="panel-title">Lista de Funções</h3>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped table-hover table-bordered compact text-shadow" style="width:100%" id="tabela-funcoes">
                        <thead class="thead-light">
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Nome</th>
                                <th scope="col">Setor</th>
                                <th scope="col">Tipo</th>
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
<script src="/js/tabelas/tabela-funcoes.js"></script>

<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file= "/padroes/padrao-interno-master/rodape.jsp"%>
<% } else { %>
<%@include file="/padroes/padrao-interno-regular/rodape.jsp"%>
<% }%>