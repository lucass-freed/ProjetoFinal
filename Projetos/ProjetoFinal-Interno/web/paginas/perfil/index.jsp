-<%-- 
    Document   : index
    Created on : 28/08/2018, 08:54:16
    Author     : Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file="/padroes/padrao-interno-master/dashboard.jsp" %>
<% } else { %>
<%@include file="/padroes/padrao-interno-regular/dashboard.jsp" %>
<% } %>
<%@page import="br.com.projetofinal.bean.ColaboradorBean"%>
<%@page import="br.com.projetofinal.Util.DateFormatador"%>
<%@page import="br.com.projetofinal.Util.Formatador"%>
<%@page import="javax.servlet.http.HttpServletRequest;"%>
<%@page import="javax.servlet.http.HttpServletResponse;"%>
<%@page import="javax.servlet.http.HttpSession;"%>
<% HttpSession sessao = request.getSession();%>
<% ColaboradorBean colaborador = (ColaboradorBean) sessao.getAttribute("usuario");%>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-3">
            <!-- Page Widget -->
            <div class="card box-shadow text-center" style="height: 380px;">
                <div class="card-block">
                    <div class="overlay-panel overlay-background">
                        <div class="avatar avatar-100">
                            <img src="/tema/global/portraits/7.jpg" alt="...">
                        </div>
                    </div>
                </div>
                <div class="p-30" style="height: 230px;">
                    <div style="padding-top: 16px">
                        <h4><%= colaborador.getNome()%></h4>
                        <h5><%= colaborador.getFuncao().getNome()%></h5>
                        <p><%= colaborador.getEmail()%></p>
                        <p>Entrou em <%= DateFormatador.formatoBr(colaborador.getDataAdmissao())%></p>
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
                        <li class="nav-item" role="presentation"><a class="nav-link" data-toggle="tab" href="#messages" aria-controls="messages" role="tab">Endereço</a></li>
                    </ul>

                    <div class="tab-content">
                        <div class="tab-pane active animation-slide-left" id="activities" role="tabpanel">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <div class="media">
                                        <div class="pr-20">
                                            <p data-info-type="phone" class="mb-10 text-nowrap">
                                                <i class="icon wb-user mr-10"></i>
                                                <span class="text-break">Usuário: <%= colaborador.getUsuario()%>
                                                </span>
                                            </p>
                                        </div>

                                    </div>
                                    <div class="text-right">
                                        <a href="/interno/trocar-senha" style="color: white" class="btn btn-success btn-sm">
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
                                                <span class="text-break">• Nome: <%= colaborador.getNome()%>
                                                </span>
                                            </p>
                                            <p data-info-type="phone" class="mb-10 text-nowrap">
                                                <span class="text-break">• Função: <%= colaborador.getFuncao().getNome()%>
                                                </span>
                                            </p>
                                            <p data-info-type="phone" class="mb-10 text-nowrap">
                                                <span class="text-break">• Data de Nascimento: <%= DateFormatador.formatoBr(colaborador.getDataNascimento())%>
                                                </span>
                                            </p>
                                            <p data-info-type="phone" class="mb-10 text-nowrap">
                                                <span class="text-break">• CPF: <%= colaborador.getCpf()%>
                                                </span>
                                            </p>
                                            <p data-info-type="phone" class="mb-10 text-nowrap">
                                                <span class="text-break">• Telefone: <%= colaborador.getTelefone()%>
                                                </span>
                                            </p>
                                            <p data-info-type="phone" class="mb-10 text-nowrap">
                                                <span class="text-break">• E-mail: <%= colaborador.getEmail()%>
                                                </span>
                                            </p>
                                            <p data-info-type="phone" class="mb-10 text-nowrap">
                                                <span class="text-break">• CTPS: <%= colaborador.getCtps()%>
                                                </span>
                                            </p>
                                            <p data-info-type="phone" class="mb-10 text-nowrap">
                                                <span class="text-break">• PIS: <%= colaborador.getPis()%>
                                                </span>
                                            </p>
                                            <p data-info-type="phone" class="mb-10 text-nowrap">
                                                <span class="text-break">• Data de Admissão: <%= DateFormatador.formatoBr(colaborador.getDataAdmissao())%>
                                                </span>
                                            </p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div class="tab-pane animation-slide-left" id="messages" role="tabpanel">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <div class="media">
                                        <div class="pr-20">
                                            <p data-info-type="phone" class="mb-10 text-nowrap">
                                                <span class="text-break">• Cidade: <%= colaborador.getCidade()%>
                                                </span>
                                            </p>
                                            <p data-info-type="phone" class="mb-10 text-nowrap">
                                                <span class="text-break">• Estado: <%= colaborador.getUf()%>
                                                </span>
                                            </p>
                                            <p data-info-type="phone" class="mb-10 text-nowrap">
                                                <span class="text-break">• Bairro: <%= colaborador.getBairro()%>
                                                </span>
                                            </p>
                                            <p data-info-type="phone" class="mb-10 text-nowrap">
                                                <span class="text-break">• CEP: <%= colaborador.getCep()%>
                                                </span>
                                            </p>
                                            <p data-info-type="phone" class="mb-10 text-nowrap">
                                                <span class="text-break">• Logradouro: <%= colaborador.getLogradouro()%>
                                                </span>
                                            </p>
                                            <p data-info-type="phone" class="mb-10 text-nowrap">
                                                <span class="text-break">• Número <%= colaborador.getNumero()%>
                                                </span>
                                            </p>
                                            <p data-info-type="phone" class="mb-10 text-nowrap">
                                                <span class="text-break">• Complemento: <%= colaborador.getComplemento()%>
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
<%@include file= "/padroes/padrao-interno-master/rodape.jsp"%>
<% } else { %>
<%@include file="/padroes/padrao-interno-regular/rodape.jsp"%>
<% }%>