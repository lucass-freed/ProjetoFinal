<%-- 
    Document   : index
    Created on : 22/09/2018, 01:47:50
    Author     : Lucas Rodrigo Frederico
--%>

<%@page import="br.com.projetofinal.dao.ColaboradorDAO"%>
<%@page import="br.com.projetofinal.dao.EmpresaDAO"%>
<%@page import="br.com.projetofinal.Util.NumberFormato"%>
<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file="/padroes/padrao-interno-master/dashboard.jsp" %>
<% } else { %>
<%@include file="/padroes/padrao-interno-regular/dashboard.jsp" %>
<% }%>

<div class="row" data-plugin="matchHeight" data-by-row="true">
    <div class="col-xxl-3">
        <div class="row" data-plugin="matchHeight">
            <div class="col-xxl-12 col-lg-5 col-sm-4">
                <div class="card card-shadow">
                    <div class="card-block p-30 box-shadow">
                        <div class="row">
                            <div class="counter text-left blue-grey-700">
                                <div class="col-xxl-3">
                                    <button type="button" class="btn btn-floating btn-sm btn-success">
                                        <i class="icon wb-users"></i>
                                    </button>
                                    <span class="ml-15 font-weight-700">COLABORADORES CADASTRADAS</span>
                                    <div class="counter-number font-size-40 mt-10"><%= new NumberFormato().f(new ColaboradorDAO().getQuantidadeColaboradoresCadastrados())%></div>
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
                <h3 class="panel-title">Lista de Colaboradores</h3>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped table-hover compact table-bordered text-shadow" style="width:100%" id="tabela-colaboradores">
                        <thead class="thead-light">
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Usu�rio</th>
                                <th scope="col">Nome</th>
                                <th scope="col">CPF</th>
                                <th scope="col">Fun��o</th>
                                <th scope="col">E-mail</th>
                                <th scope="col">Data de Nascimento</th>
                                <th scope="col">Telefone</th>
                                <th scope="col">Tipo</th>
                                <th scope="col">Op��o</th>
                            </tr>
                        </thead>
                        <tbody>


                            <!-- Modal -->
                        <div class="modal fade" id="examplePositionSidebar" aria-hidden="true" aria-labelledby="examplePositionSidebar"
                             role="dialog" tabindex="-1">
                            <div class="modal-dialog modal-simple modal-sidebar modal-sm">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">�</span>
                                        </button>
                                        <h4 class="modal-title">Tem certeza?</h4>
                                    </div>
                                    <div class="modal-body">
                                        <p>Esta a��o n�o poder� ser desfeita!</p>
                                    </div>
                                    <div class="modal-footer">
                                        <div class="col-lg-12">
                                            <a href="javascript:excluir();"><button type="button" class="btn btn-danger">Sim, excluir</button></a>
                                            <button type="button" class="btn btn-default" aria-label="Fechar" data-dismiss="modal">Cancelar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Modal -->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- End Panel Tickets -->
    </div>
</div>
<script src="/js/datatable/jquery.min.js"></script>
<script src="/js/tabelas/tabela-colaboradores.js"></script>

<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file= "/padroes/padrao-interno-master/rodape.jsp"%>
<% } else { %>
<%@include file="/padroes/padrao-interno-regular/rodape.jsp"%>
<% }%>
