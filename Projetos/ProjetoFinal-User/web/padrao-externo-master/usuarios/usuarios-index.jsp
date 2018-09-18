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
                <h3 class="panel-title">Lista de Usu�rios</h3>
            </div>
            <div class="panel-body">
                <table class="table table-striped responsive table-hover table-bordered compact text-shadow" style="width:100%" id="tabela-usuarios">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Usu�rio</th>
                            <th scope="col">Fun��o</th>
                            <th scope="col">E-mail</th>
                            <th scope="col">Data de Nascimento</th>
                            <th scope="col">Telefone</th>
                            <th scope="col">Empresa</th>
                            <th scope="col">Tipo</th>
                            <th scope="col">Op��o</th>
                        </tr>
                    </thead>
                    <tbody>



                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- End Panel Tickets -->
<%@include file="/padrao-externo-master/rodape.jsp" %>
