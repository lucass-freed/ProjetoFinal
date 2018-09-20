<%-- 
    Document   : index
    Created on : 28/08/2018, 11:09:23
    Author     : Alunos
--%>

<%@page import="br.com.projetofinal.dao.TicketDAO"%>
<%@page import="br.com.projetofinal.Util.NumberFormato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="/padrao-externo-regular/usuario/master.jsp"%>

<div class="row" data-plugin="matchHeight" data-by-row="true">
    <div class="col-xxl-3">
        <div class="row" data-plugin="matchHeight">
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
    <div class="col-xl-12 col-lg-10">
        <!-- Panel Tickets -->
        <div class="panel box-shadow">
            <div class="panel-heading">
                <h3 class="panel-title">Seus Tickets Pendentes</h3>
            </div>
            <div class="panel-body">
                <table class="table table-striped compact table-hover table-bordered text-shadow" style="width:100%" id="tabela-ticket_pendente">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Título</th>
                            <th scope="col">Data de Abertura</th>
                            <th scope="col">Criticidade</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                        
                        
                    </tbody>
                </table>
            </div>
        </div>
        <!-- End Panel Tickets -->
    </div>
</div>


<%@include file="/padrao-externo-regular/usuario/rodape.jsp"%>