<%-- 
    Document   : tabs
    Created on : 30/08/2018, 09:15:02
    Author     : Matheus Ruan Werner
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="nav-tabs-horizontal" data-plugin="tabs">
    <ul class="nav nav-tabs" role="tablist">
        <li class="nav-item" role="presentation">
            <a class="nav-link active" data-toggle="tab" href="#tab-descricao"
               aria-controls="tab-descricao" role="tab">Descrição</a>
        </li>
    </ul>
    <div class="tab-content pt-20">
     

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.projetofinal.enumTypes.CriticidadeTypes"%>
<%@page import="br.com.projetofinal.bean.TicketBean"%>
<% TicketBean ticket1 = (TicketBean) request.getAttribute("ticket1");%>

<div class="tab-pane active" id="tab-descricao" role="tabpanel">
    <!--Descrição do Ticket -->

    <h4><%= ticket1.getTitulo()%></h4>
    <div class="criticidade" style="text-align: right;">  
        <div class="example ticket-criticidade">
            <% if (ticket1.getCriticidade() == CriticidadeTypes.BAIXA) {%>
            <div>
                <span class="badge badge-success">Baixa</span>  
            </div>
            <% } else if (ticket1.getCriticidade() == CriticidadeTypes.MEDIA) {%>
            <div>
                <span class="badge badge-primary">Média</span>
            </div>
            <% } else if (ticket1.getCriticidade() == CriticidadeTypes.ALTA) {%>
            <div>
                <span class="badge badge-warning">Alta</span>
            </div>
            <% } else { %>
            (<div>
                <span class="badge badge-danger">Altíssima</span>
            </div>
            <% }%>
            <h3 class="panel-title">Ticket # <%= ticket1.getId()%>
            </h3>
        </div>
    </div>
    <div class="page-content container-fluid">
        <div class="row">
            <div class="col-lg-8">
                <%=ticket1.getDescricao()%>
            </div>
        </div>
    </div>
    <div class="example-wrap">
        <div class="tags" style="text-align: right;">
            <!--Implementar retorno tags-->
            <span class="badge badge-outline badge-dark">ExemploTag</span>
            <span class="badge badge-outline badge-dark">Banco de Dados</span>
            <span class="badge badge-outline badge-dark">Rede e Internet</span>
            <span class="badge badge-outline badge-dark">Periféricos</span>
        </div>
    </div>
</div>
    </div>
</div>