<%-- 
    Document   : index
    Created on : 26/08/2018, 18:11:07
    Author     : User
--%>

<%@page import="br.com.projetofinal.Util.NumberFormato"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projetofinal.dao.UsuarioDAO"%>
<%@page import="br.com.projetofinal.bean.UsuarioBean"%>
<%@include file="/padrao-externo-master/master.jsp" %>
<% UsuarioBean usuario = (UsuarioBean) request.getAttribute("usuario");%>

<div class="row" data-plugin="matchHeight" data-by-row="true">
    <div class="col-xxl-3">
        <div class="row" data-plugin="matchHeight">
            <div class="col-xxl-12 col-lg-4 col-sm-4">
                <div class="card card-shadow">
                    <div class="card-block p-30 text-shadow">
                        <div class="row">
                            <div class="counter text-left blue-grey-700">
                                <div class="col-xxl-3">
                                    <span class="ml-15 font-weight-700">USUARIOS CADASTRADOS</span>
                                    <button type="button" class="ml-15 btn btn-floating btn-sm btn-success">
                                        <i class="icon wb-users"></i>
                                    </button>
                                    <div class="counter-number font-size-40 mt-10"><%= new NumberFormato().f(new UsuarioDAO().getQuantidadeUsuariosCadastradas())%></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-12 col-lg-12">
        <!-- Panel Tickets -->
        <div class="panel box-shadow">
            <div class="panel-heading">
                <h3 class="panel-title">Lista de Usuários</h3>
            </div>
            <div class="panel-body">
                <table class="table table-striped responsive table-hover table-bordered compact text-shadow" style="width:100%" id="tabela-usuarios">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Usuário</th>
                            <th scope="col">Função</th>
                            <th scope="col">E-mail</th>
                            <th scope="col">Data de Nascimento</th>
                            <th scope="col">Telefone</th>
                            <th scope="col">Empresa</th>
                            <th scope="col">Tipo</th>
                            <th scope="col">Opção</th>
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
                                        <span aria-hidden="true">×</span>
                                    </button>
                                    <h4 class="modal-title">Tem certeza?</h4>
                                </div>
                                <div class="modal-body">
                                    <p>Esta ação não poderá ser desfeita!</p>
                                </div>
                                <div class="modal-footer">
                                    <div class="col-lg-12">
                                        <a href="/usuario/excluir?id=<%usuario.getId();%>"><button type="button" class="btn btn-danger">Excluir usuário</button></a>
                                        <button type="button" class="btn btn-default" aria-label="Close" data-dismiss="modal">Cancelar</button>
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
</div>
<!-- End Panel Tickets -->
<%@include file="/padrao-externo-master/rodape.jsp" %>
