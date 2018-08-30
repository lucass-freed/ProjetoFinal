<%-- 
    Document   : index
    Created on : 27/08/2018, 08:29:23
    Author     : Michelle de Jesus Rogério
--%>

<%@page import="br.com.projetofinal.bean.TicketBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% if (request.getAttribute("tipo").toString().equals("master")) { %>
<%@include file="../padrao-interno-master/dashboard.jsp" %>
<% } else { %>
<%@include file="../padrao-interno-regular/dashboard.jsp" %>
<% } %>
<% TicketBean ticket = (TicketBean) request.getAttribute("ticket");%>
<div class="page">
    <div class="page-content container-fluid">
        <!-- Panel Tabs -->
        <div class="panel">
            <div class="panel-heading">
                <h3 class="panel-title">Ticket # <%= ticket.getId()%>
                </h3>
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
<!-- End Page -->
<% if (request.getAttribute("tipo").toString().equals("master")) { %>
<%@include file="../padrao-interno-master/rodape.jsp" %>
<% } else { %>
<%@include file="../padrao-interno-regular/rodape.jsp" %>
<% }%>