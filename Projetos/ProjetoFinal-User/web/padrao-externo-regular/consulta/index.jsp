<%-- 
    Document   : index
    Created on : 28/08/2018, 10:06:45
    Author     : Matheus Werner
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/padrao-externo-regular/usuario/master.jsp"%>
<%@page import="br.com.projetofinal.bean.TicketBean"%>
<%@page import="br.com.projetofinal.dao.TicketDAO"%>

<div class="page-center">
    <div class="page-content">
        <% List<TicketBean> tickets = (List<TicketBean>) request.getAttribute("tickets");%>
        <!-- Panel -->

        <div class="input-search input-search-dark">

            <div class="panel box shadow"> 
                <div class="panel-heading">
                    <h3 class="panel-title">Consultar Ticket</h3>
                </div>
                <div class="panel-body">
                    <div class = "form-group">
                        <select class="form-control" type='text' id='campo-ticket' name='ticket' required='required' onfocusout='validarCapoCategoria()'>
                            <option selected = 'selected' disabled='disable'></option>
                        </select>
                    </div>
                    <!--                    <form class="page-search-form" role="search">
                                            <i class="input-search-icon wb-search" aria-hidden="true"></i>
                                            <input type="text" class="form-control" id="inputSearch" name="search" placeholder="Procurar">
                                            <button type="button" class="input-search-close icon wb-close" aria-label="Close"></button>
                                        </form>-->
                </div>

                <!--<h1 class="page-search-title"></h1>
                //<% for (TicketBean ticket : tickets) {%>
                <div>
                    <a href="/externo/ticket?id=<%= ticket.getId()%>"><%= ticket.getTitulo()%></a>  
                </div>-->
                //<% }%>






                <%@include file="/padrao-externo-regular/usuario/rodape.jsp"%>
