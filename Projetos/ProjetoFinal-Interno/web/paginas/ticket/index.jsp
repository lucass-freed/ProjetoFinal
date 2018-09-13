<%-- 
    Document   : index
    Created on : 27/08/2018, 08:29:23
    Author     : Michelle de Jesus Rogério
--%>
<% if (request.getAttribute("tipo").toString().equals("master")) { %>
<%@include file="/padroes/padrao-interno-master/dashboard.jsp" %>
<% } else { %>
<%@include file="/padroes/padrao-interno-regular/dashboard.jsp" %>
<% } %>
<%@page import="br.com.projetofinal.enumTypes.EnumTicketStatusType"%>
<%@page import="br.com.projetofinal.bean.TicketBean"%>
<% TicketBean ticket = (TicketBean) request.getAttribute("ticket");%>
<div class="panel">
    <div class="panel-heading">
        <div class="col-xl-12 box-shadow">
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
                <div class="ribbon ribbon-clip ribbon-reverse ribbon-success">
                    <span class="ribbon-inner">Concluído</span>
                </div>
                <% }%>
                <h3 class="panel-title">Ticket # <%= ticket.getId()%></h3>
            </div>
            <div class="panel-body container-fluid">
                <div class="row row-lg">
                    <div class="col-xl-12">
                        <!-- Tabs -->
                        <div class="example-wrap">
                            <%@include file="tabs/tabs.jsp" %>
                        </div>
                        <!-- End Tabs -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<% if (request.getAttribute("tipo").toString().equals("master")) { %>
<%@include file= "/padroes/padrao-interno-master/rodape.jsp"%>
<% } else { %>
<%@include file="/padroes/padrao-interno-regular/rodape.jsp"%>
<% }%>