<%-- 
    Document   : index
    Created on : 28/08/2018, 10:06:45
    Author     : Matheus Werner
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file="/padroes/padrao-externo-master/dashboard.jsp" %>
<% } else { %>
<%@include file="/padroes/padrao-externo-regular/dashboard.jsp" %>
<% }%>
<%@page import="br.com.projetofinal.bean.TicketBean"%>
<%@page import="br.com.projetofinal.dao.TicketDAO"%>

<div class="page-center">
    <div class="page-content">
        <% List<TicketBean> tickets = (List<TicketBean>) request.getAttribute("tickets");%>
        <!-- Panel -->

        <div class="input-search input-search-dark">

            <div class="panel" style="padding: 20px"> 
                <div class="panel-heading">
                    <h3 class="panel-title">Consultar Ticket</h3>
                </div>
                <div class="panel-body">
                    <div class = "form-group">
                        <select class="form-control" type='text' id='campo-ticket' name='ticket' required='required'>
                            <option selected = 'selected' disabled='disable'></option>
                        </select>
                    </div>
                </div>

                <% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
                <%@include file= "/padroes/padrao-externo-master/rodape.jsp"%>
                <% } else { %>
                <%@include file="/padroes/padrao-externo-regular/rodape.jsp"%>
                <% }%>
