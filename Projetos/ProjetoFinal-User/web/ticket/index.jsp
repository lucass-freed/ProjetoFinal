<%-- 
    Document   : index
    Created on : 06/09/2018, 10:42:06
    Author     : Matheus Werner
--%>
  <%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html class="no-js css-menubar" lang="en">
    <head>

        <title>Tickets | FlowDesk</title>
      
        <% if (request.getAttribute("tipo").toString().equals("master")) { %>
        <%@include file="/padrao-externo-master/master.jsp" %>
        <% } else { %>
        <%@include file="/padrao-externo-regular/usuario/master.jsp" %>
        <% } %>
        <%@page import="br.com.projetofinal.enumTypes.EnumTicketStatusType"%>
        <%@page import="br.com.projetofinal.bean.TicketBean"%>
        <% TicketBean ticket = (TicketBean) request.getAttribute("ticket");%>
    <div class="page">
        <div class="page-content container-fluid">
            <!-- Panel Tabs -->
            <div class="panel">
                <div class="panel-heading">
                    <div class="col-xl-12">
                        <div class="example ticket-status">
                            <% if (ticket.getStatus() == EnumTicketStatusType.ABERTO) {%>
                            <div class="ribbon ribbon-clip ribbon-reverse ribbon-danger">
                                <span class="ribbon-inner">Aberto</span>
                            </div>
                            <% } else if (ticket.getStatus() == EnumTicketStatusType.EM_ANDAMENTO) {%>
                            <div class="ribbon ribbon-clip ribbon-reverse ribbon-primary">
                                <span class="ribbon-inner">Em andamento</span>
                            </div>
                            <% } else { %>
                            (<div class="ribbon ribbon-clip ribbon-reverse ribbon-success">
                                <span class="ribbon-inner">Concluído</span>
                            </div>
                            <% }%>
                            <h3 class="panel-title">Ticket # <%= ticket.getId()%>
                            </h3>
                        </div>
                        <div class="panel-body container-fluid">
                            <div class="row row-lg">
                                <div class="col-xl-12">
                                    <!-- Tabs -->
                                    <div class="example-wrap">
                                        <%@include file="tabs.jsp" %>
                                    </div>
                                    <!-- End Tabs -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div
 
            <!-- End Page -->
            <% if (request.getAttribute("tipo").toString().equals("master")) { %>
            <%@include file="/padrao-externo-master/rodape.jsp" %>
            <% } else { %>
            <%@include file="/padrao-externo-regular/usuario/rodape.jsp" %>
            <% }%>
