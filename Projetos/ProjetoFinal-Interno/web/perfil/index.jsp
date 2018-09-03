<%-- 
    Document   : index
    Created on : 28/08/2018, 08:54:16
    Author     : Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
--%>
<!DOCTYPE html>
<html class="no-js css-menubar" lang="en">
    <head>

        <title>Perfil | FlowDesk</title>

        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@include file="/padrao-interno-master/dashboard.jsp"%>

        <!-- Personal -->
        <link rel="stylesheet" href="/tema/assets/css/perfil.css">
        <script src="/tema/global/vendor/switchery/switchery.js"></script>
        <script src="/tema/global/vendor/intro-js/intro.js"></script>
        <script src="/tema/global/vendor/screenfull/screenfull.js"></script>
        <script src="/tema/global/vendor/slidepanel/jquery-slidePanel.js"></script>
        <!-- Page -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3">
                <!-- Page Widget -->
                <div class="card box-shadow text-center" style="height: 380px;">
                    <div class="card-block">
                        <div class="overlay-panel overlay-background">
                            <a class="avatar avatar-100" href="javascript:void(0)">
                                <img src="/tema/global/portraits/7.jpg" alt="...">
                            </a>
                        </div>
                    </div>
                    <div class="p-30" style="height: 230px;">
                        <div style="padding-top: 16px">
                            <h4>Lucas Nunes</h4>
                            <h5>Programador Master</h6>
                                <p>nunes@gmail.com</p>
                                <p>Entrou em 20/12/2001</p>
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
                                                    <span class="text-break">Usuário: nunes123
                                                    </span>
                                                </p>

                                            </div>

                                        </div>
                                        <div class="text-right">
                                            <button type="button" class="btn btn-success btn-sm">
                                                <i class="icon wb-pencil" aria-hidden="true"></i>MudarSenha
                                            </button>
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
                                                    <span class="text-break">• Nome: Lucas Nunes
                                                    </span>
                                                </p>
                                                <p data-info-type="phone" class="mb-10 text-nowrap">
                                                    <span class="text-break">• Função: Programador Master
                                                    </span>
                                                </p>
                                                <p data-info-type="phone" class="mb-10 text-nowrap">
                                                    <span class="text-break">• Data de Nascimento: 10/03/2002
                                                    </span>
                                                </p>
                                                <p data-info-type="phone" class="mb-10 text-nowrap">
                                                    <span class="text-break">• CPF: 118.665.224-98
                                                    </span>
                                                </p>
                                                <p data-info-type="phone" class="mb-10 text-nowrap">
                                                    <span class="text-break">• Telefone: +55 (47) 99962-4571
                                                    </span>
                                                </p>
                                                <p data-info-type="phone" class="mb-10 text-nowrap">
                                                    <span class="text-break">• E-mail: nunes@gmail.com
                                                    </span>
                                                </p>
                                                <p data-info-type="phone" class="mb-10 text-nowrap">
                                                    <span class="text-break">• CTPS: 324324324323
                                                    </span>
                                                </p>
                                                <p data-info-type="phone" class="mb-10 text-nowrap">
                                                    <span class="text-break">• PIS: 324324324323
                                                    </span>
                                                </p>
                                                <p data-info-type="phone" class="mb-10 text-nowrap">
                                                    <span class="text-break">• Data de Admissão: 10/03/2002
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
                                                    <span class="text-break">• Cidade: Blumenau
                                                    </span>
                                                </p>
                                                <p data-info-type="phone" class="mb-10 text-nowrap">
                                                    <span class="text-break">• Estado: SC
                                                    </span>
                                                </p>
                                                <p data-info-type="phone" class="mb-10 text-nowrap">
                                                    <span class="text-break">• Bairro: Fortaleza
                                                    </span>
                                                </p>
                                                <p data-info-type="phone" class="mb-10 text-nowrap">
                                                    <span class="text-break">• CEP: 66023-452
                                                    </span>
                                                </p>
                                                <p data-info-type="phone" class="mb-10 text-nowrap">
                                                    <span class="text-break">• Logradouro: dsfdsfdsfdsfds
                                                    </span>
                                                </p>
                                                <p data-info-type="phone" class="mb-10 text-nowrap">
                                                    <span class="text-break">• Complemento: Apartamento
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

    <%@include file="/padrao-interno-master/rodape.jsp"%>
