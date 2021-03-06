<%-- 
    Document   : tab-descricao
    Created on : 30/08/2018, 09:15:41
    Author     : Michelle de Jesus Rog�rio
--%>

<%@page import="br.com.projetofinal.dao.FuncaoDAO"%>
<%@page import="br.com.projetofinal.bean.FuncaoBean"%>
<%@page import="br.com.projetofinal.bean.ColaboradorBean"%>
<%@page import="br.com.projetofinal.dao.ColaboradorDAO"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projetofinal.enumTypes.CriticidadeTypes"%>
<%@page import="br.com.projetofinal.bean.TicketBean"%>
<%@page import="br.com.projetofinal.bean.TicketTagBean"%>
<% TicketBean ticket1 = (TicketBean) request.getAttribute("ticket1");%>

<div class="tab-pane active" id="tab-descricao" role="tabpanel">
    <!--Descri��o do Ticket -->
    <h4><%= ticket1.getTitulo()%></h4>
    <div class="criticidade" style="text-align: right;">  
        <div class="example ticket-criticidade">
            <% if (ticket1.getCriticidade() == CriticidadeTypes.BAIXA) {%>
            <div>
                <span class="badge badge-success font-size-14">Baixa</span>  
            </div>
            <% } else if (ticket1.getCriticidade() == CriticidadeTypes.MEDIA) {%>
            <div>
                <span class="badge badge-primary font-size-14">M�dia</span>
            </div>
            <% } else if (ticket1.getCriticidade() == CriticidadeTypes.ALTA) {%>
            <div>
                <span class="badge badge-warning font-size-14">Alta</span>
            </div>
            <% } else { %>
            <div>
                <span class="badge badge-danger font-size-14">Alt�ssima</span>
            </div>
            <%}%>
            <h3 class="panel-title">Ticket # <%= ticket1.getId()%></h3>
        </div>
    </div>
    <div class="page-content container-fluid">
        <div class="row">
            <div class="col-lg-8">
                <%=ticket1.getDescricao()%>
            </div>
        </div>
    </div>
    <% if (ticket1.getDataEncerramento() == null) { %>
        <% if (ticket1.getIdColaborador() > 0) {%>
        <% ColaboradorBean colaborador = new ColaboradorDAO().obterColaboradorPorID(ticket1.getIdColaborador());%>
        <div class="page-content container-fluid">
            <div class="row">
                <span class="font-size-16">Colaborador respons�vel: <%= colaborador.getNome()%></span>
            </div>
        </div>
        <%}%>
        <% if (ticket1.getIdFuncaoMovimentacao() > 0) {%>
        <% FuncaoBean funcao = new FuncaoDAO().obterFuncaoPeloID(ticket1.getIdFuncaoMovimentacao());%>
        <div class="page-content container-fluid">
            <div class="row">
                <span class="text-danger">Fun��o respons�vel: <%= funcao.getNome()%></span>
            </div>
        </div>
        <%}%>
    <%} else {%>
        <% if (ticket1.getIdColaborador() > 0) {%>
        <% ColaboradorBean colaborador = new ColaboradorDAO().obterColaboradorPorID(ticket1.getIdColaborador());%>
        <div class="page-content container-fluid">
            <div class="row">
                <span class="font-size-16">Conclu�do pelo Colaborador: <%= colaborador.getNome()%></span>
            </div>
        </div>
        <%}%>
        <% if (ticket1.getIdFuncaoMovimentacao() > 0) {%>
        <% FuncaoBean funcao = new FuncaoDAO().obterFuncaoPeloID(ticket1.getIdFuncaoMovimentacao());%>
        <div class="page-content container-fluid">
            <div class="row">
                <span class="text-danger">Conclu�do pela Fun��o: <%= funcao.getNome()%></span>
            </div>
        </div>
        <%}%>
    <%}%>
    <div class="example-wrap">
        <div class="tags" style="text-align: right;">
            <% List<TicketTagBean> ticketsTags = (List<TicketTagBean>) request.getAttribute("ticketsTags");%>
            <% for (TicketTagBean ticketTag : ticketsTags) {%>
            <span class="badge badge-outline badge-dark font-size-14"><%= ticketTag.getTag().getTitulo()%></span>
            <%}%>
        </div>
    </div>
</div>