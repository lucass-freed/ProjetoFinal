<%-- 
    Document   : index
    Created on : 28/08/2018, 08:54:16
    Author     : Lucas Rodrigo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/padrao-interno-master/dashboard.jsp"%>

<!-- Personal -->
<link rel="stylesheet" href="/ProjetoFinal-Interno/tema/assets/css/perfil.css">
<div class="box-shadow">
    <div id="personalCompletedWidget" class="card card-shadow pb-20">
        <div class="card-header card-header-transparent cover overlay">
            <img class="cover-image" src="/ProjetoFinal-Interno/tema/global/photos/placeholder.png">
            <div class="overlay-panel overlay-background vertical-align">
                <div class="vertical-align-middle">
                    <a class="avatar" href="javascript:void(0)">
                        <img alt="" src="/ProjetoFinal-Interno/tema/global/portraits/4.jpg">
                    </a>
                    <div class="font-size-18">Programadora Master</div>
                    <div class="font-size-20 mt-10">Michelle</div>
                    <div class="font-size-14">usuario@163.com</div>
                    <div class="font-size-12">Entrou em 20/03/2003</div>
                </div>
            </div>
        </div>
        <div class="card-block">
            <div class="row text-center mb-20">
                <div class="col-6">
                    <div class="counter">
                        <div class="counter-label total-completed">TICKETS RESPONDIDOS</div>
                        <div class="counter-number red-600">0</div>
                    </div>
                </div>
                <div class="col-6">
                    <div class="counter">
                        <div class="counter-label">TOTAL TIME</div>
                        <div class="counter-number blue-600">17</div>
                    </div>
                </div>
            </div>
            <div>
                <table class="table">
                    <tbody>
                        <tr>
                            <td>Data de Nascimentos: 10/03/2002</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>
                                Cards Completed
                            </td>
                            <td>
                                <div class="progress progress-xs mb-0">
                                    <div class="progress-bar progress-bar-info bg-green-600" role="progressbar" aria-valuenow="86"
                                         aria-valuemin="0" aria-valuemax="100" style="width: 86%">
                                    </div>
                                </div>
                            </td>
                            <td>
                                86%
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Points Completed
                            </td>
                            <td>
                                <div class="progress progress-xs mb-0">
                                    <div class="progress-bar progress-bar-info bg-red-600" role="progressbar" aria-valuenow="68"
                                         aria-valuemin="0" aria-valuemax="100" style="width: 68%">
                                    </div>
                                </div>
                            </td>
                            <td>
                                68%
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- End Personal -->

<%@include file="/padrao-interno-master/rodape.jsp"%>
