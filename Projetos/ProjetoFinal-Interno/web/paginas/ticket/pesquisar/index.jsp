<%-- 
    Document   : index
    Created on : 23/09/2018, 02:03:32
    Author     : Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file="/padroes/padrao-interno-master/dashboard.jsp" %>
<% } else { %>
<%@include file="/padroes/padrao-interno-regular/dashboard.jsp" %>
<% } %>
<%@page import="br.com.projetofinal.bean.TicketBean"%>
<%@page import="br.com.projetofinal.dao.TicketDAO"%>

<div class="page-center">
    <div class="page-content">
        <% List<TicketBean> tickets = (List<TicketBean>) request.getAttribute("tickets");%>
        <!-- Panel -->
        <div class="input-search input-search-dark">
            <div class="panel box-shadow" style="padding: 20px"> 
                <div class="panel-heading">
                    <h3 class="panel-title">Consultar Ticket</h3>
                </div>
                <div class="panel-body">
                    <div class = "form-group">
                        <select class="form-control" type="text" id="pesquisar-ticket" name="ticket" required="required">
                            <option selected = 'selected' disabled='disable'></option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file= "/padroes/padrao-interno-master/rodape.jsp"%>
<% } else { %>
<%@include file="/padroes/padrao-interno-regular/rodape.jsp"%>
<% }%>
