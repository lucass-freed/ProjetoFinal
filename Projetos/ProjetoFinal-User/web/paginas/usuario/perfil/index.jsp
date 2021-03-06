<%-- 
    Document   : index
    Created on : 18/09/2018, 08:10:36
    Author     : Thiago Avancini
--%>

<%@page import="br.com.projetofinal.bean.UsuarioBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file="/padroes/padrao-externo-master/dashboard.jsp" %>
<% } else { %>
<%@include file="/padroes/padrao-externo-regular/dashboard.jsp" %>
<% }%>
<link rel="stylesheet" href="/css/perfil.css">
<%@page import="br.com.projetofinal.Util.DateFormatador"%>
<%@page import="br.com.projetofinal.Util.Formatador"%>
<%@page import="javax.servlet.http.HttpServletRequest;"%>
<%@page import="javax.servlet.http.HttpServletResponse;"%>
<%@page import="javax.servlet.http.HttpSession;"%>
<% HttpSession sessao = request.getSession();%>
<% UsuarioBean usuario = (UsuarioBean) sessao.getAttribute("usuario");%>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-3">
            <!-- Page Widget -->
            <div class="card box-shadow text-center" style="height: 380px;">
                <div class="card-block">
                    <div class="overlay-panel overlay-background">
                        <div class="avatar avatar-100">
                            <img src="/tema/assets/images/imagemDefaultPerfil.png" alt="...">
                        </div>
                    </div>
                </div>
                <div class="p-30" style="height: 230px;">
                    <div style="padding-top: 20px">
                        <h4><%= usuario.getNome()%></h4>
                        <h5><%= usuario.getFuncao().getNome()%></h5>
                        <p><%= usuario.getEmail()%></p>
                    </div>
                </div>

            </div>
            <!-- End Page Widget -->
        </div>
        <div class="col-lg-9">
            <!-- Panel -->
            <div class="panel box-shadow">
                <div class="panel-body nav-tabs-animate nav-tabs-horizontal" data-plugin="tabs">
                    <h4>Informações</h4>
                    <ul class="nav nav-tabs nav-tabs-line" role="tablist">
                        <li class="nav-item" role="presentation"><a class="active nav-link" data-toggle="tab" href="#activities" aria-controls="activities" role="tab">Conta</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" data-toggle="tab" href="#profile" aria-controls="profile" role="tab">Pessoal</a></li>
                    </ul>

                    <div class="tab-content">
                        <div class="tab-pane active animation-slide-left" id="activities" role="tabpanel">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <div class="media">
                                        <div class="pr-20">
                                            <p data-info-type="phone" class="mb-10 text-nowrap">
                                                <i class="icon wb-user mr-10"></i>
                                                <span class="text-break">Usuário: <%= usuario.getUsuario()%>
                                                </span>
                                            </p>
                                        </div>

                                    </div>
                                    <div class="text-right">
                                        <a href="/externo/trocar-senha" style="color: white" class="btn btn-success btn-sm">
                                            <i class="icon wb-pencil" aria-hidden="true"></i>Mudar Senha
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div class="tab-pane animation-slide-left" id="profile" role="tabpanel">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <div class="media">
                                        <div class="pr-20">
                                            <p data-info-type="phone" class="mb-10 text-nowrap">
                                                <span class="text-break">• Nome: <%= usuario.getNome()%>
                                                </span>
                                            </p>
                                            <p data-info-type="phone" class="mb-10 text-nowrap">
                                                <span class="text-break">• Função: <%= usuario.getFuncao().getNome()%>
                                                </span>
                                            </p>
                                            <p data-info-type="phone" class="mb-10 text-nowrap">
                                                <span class="text-break">• Data de Nascimento: <%= DateFormatador.formatoBr(usuario.getDataNascimento())%>
                                                </span>
                                            </p>
                                            <p data-info-type="phone" class="mb-10 text-nowrap">
                                                <span class="text-break">• CPF: <%= usuario.getCpf()%>
                                                </span>
                                            </p>
                                            <p data-info-type="phone" class="mb-10 text-nowrap">
                                                <span class="text-break">• Telefone: <%= Formatador.formatoTelefone(usuario.getTelefone())%>
                                                </span>
                                            </p>
                                            <p data-info-type="phone" class="mb-10 text-nowrap">
                                                <span class="text-break">• E-mail: <%= usuario.getEmail()%>
                                                </span>
                                            </p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Panel -->
        </div>
    </div>
</div>
                                                
<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file= "/padroes/padrao-externo-master/rodape.jsp"%>
<% } else { %>
<%@include file="/padroes/padrao-externo-regular/rodape.jsp"%>
<% }%>