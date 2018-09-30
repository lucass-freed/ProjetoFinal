<%-- 
    Document   : tabs
    Created on : 30/08/2018, 09:15:02
    Author     : Michelle de Jesus Rog�rio
--%>
<div class="nav-tabs-horizontal" data-plugin="tabs">
    <ul class="nav nav-tabs" role="tablist">
        <li class="nav-item" role="presentation">
            <a class="nav-link active" data-toggle="tab" href="#tab-descricao"
               aria-controls="tab-descricao" role="tab">Descri��o</a>
        </li>
        <li class="nav-item" role="presentation">
            <a class="nav-link" data-toggle="tab" href="#tab-informacoes"
               aria-controls="tab-informacoes" role="tab">Informa��es</a>
        </li>
        <li class="nav-item" role="presentation">
            <a class="nav-link" data-toggle="tab" href="#tab-movimentacoes"
               aria-controls="tab-movimentacoes" role="tab">Movimenta��es</a>
        </li>
        <li class="nav-item" role="presentation">
            <a class="nav-link" data-toggle="tab" href="#tab-conclusao"
               aria-controls="tab-conclusao" role="tab">Conclus�o</a>
        </li>
    </ul>
    <div class="tab-content pt-20">
        <%@include file="tab-descricao.jsp"%>
        <%@include file="tab-informacoes.jsp"%>
        <%@include file="tab-movimentacoes.jsp"%>
        <%@include file="tab-conclusao.jsp"%>
    </div>
    <script src="/js/datatable/jquery.min.js"></script>
    <script src="/js/tabelas/tabela-movimentacoes.js"></script>
    <script src="/js/tickets.js"></script>
</div>