<%-- 
    Document   : index
    Created on : 22/09/2018, 22:18:21
    Author     : Lucas Rodrigo Frederico (lcuassfreed@hotmail.com)
--%>

<%@page import="br.com.projetofinal.bean.FuncaoBean"%>
<%@page import="br.com.projetofinal.dao.FuncaoDAO"%>
<%@page import="br.com.projetofinal.Util.DateFormatador"%>
<%@page import="br.com.projetofinal.Util.Formatador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file="/padroes/padrao-interno-master/dashboard.jsp" %>
<% } else { %>
<%@include file="/padroes/padrao-interno-regular/dashboard.jsp" %>
<% } %>

<% FuncaoBean funcao = new FuncaoDAO().obterFuncaoPeloID(Integer.parseInt(request.getParameter("id")));%>

<!-- Page -->
<div class="panel">
    <div class="panel-body container-fluid box-shadow">
        <h2>Editar Função</h2>
        <hr>
        <form action="/interno/funcoes/alterar" method="post" id="editar" autocomplete="off">
            <div class="row row-lg">
                <div class="col-md-12">
                    <div class="example-wrap">
                        <div class="example">
                            <div class="row">
                                <div class="form-group col-md-6">  
                                    <label class="form-control-label" for="inputBasicNome">Nome</label>
                                    <input type="text" class="form-control minha-classe" id="inputBasicNome" name="inputNome" autocomplete="off" value="<%= funcao.getNome()%>" placeholder="Nome"/>
                                </div>
                                <div class="form-group col-md-2">  
                                    <label class="form-control-label" for="inputBasicSetor">Setor</label>
                                    <input type="text" class="form-control minha-classe" id="inputBasicSetor" name="inputSetor" autocomplete="off" value="<%= funcao.getSetor()%>" placeholder="Setor"/>
                                </div>
                                <input type="hidden" id="inputBasicID" name="inputID" value="<%= funcao.getId()%>">
                            </div>
                            <div class="row">
                                <div class="form-group col-md-6">    
                                    <label class="form-control-label" for="selectBasicTipo">Tipo da Função</label>
                                    <select class="form-control minha-classe" id="selectBasicTipo" name="selectTipo">
                                        <option value="<%= funcao.getTipo().toString().toUpperCase()%>" selected><%= funcao.getTipo().toString().toUpperCase().charAt(0) + funcao.getTipo().toString().toLowerCase().substring(1, 7)%></option>
                                        <option value="EXTERNA">Externa</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label class="form-control-label" for="selectBasicTipo">Descrição</label>
                                    <textarea class="form-control" id="textareaBasicDescricao" name="textareaDescricao" value="<%= funcao.getDescricao()%>" placeholder="Adicionar uma Descrição" style="margin-top: 0px; margin-bottom: 0px; height: 62px;"></textarea>
                                </div>
                            </div>
                            </br>
                            <div class="row">
                                <div class="col-md-12" style="text-align: center">
                                    <button type="submit" class="col-md-4 btn btn-success" id="botao-cadastrar">Salvar Alterações</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
</div>
</div>

<!-- End Page -->

<script src="/tema/global/vendor/babel-external-helpers/babel-external-helpers.js"></script>

<script src="/tema/global/vendor/jquery/jquery.js"></script>

<script src="/tema/global/js/Plugin.js"></script>
<script src="/tema/global/vendor/breakpoints/breakpoints.js"></script>

<script src="/tema/global/vendor/formatter/jquery.formatter.js"></script>

<script src="/tema/global/js/Plugin/formatter.js"></script>

<script>
    Breakpoints();
</script>

<script>
    (function (document, window, $) {
        'use strict';

        var Site = window.Site;
        $(document).ready(function () {
            Site.run();
        });
    })(document, window, jQuery);
</script>
<script>
    $("#botao-alterar").click(function () {
        $(".minha-classe").click($('.minha-classe').removeAttr('disabled'));
    });

    $("#botao-cancelar").click(function () {
        $(".minha-classe").click($('.minha-classe').attr('disabled', 'disabled'));
    });
</script>
<script src="/js/editar/editar-funcao.js"></script>

<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file= "/padroes/padrao-interno-master/rodape.jsp"%>
<% } else { %>
<%@include file="/padroes/padrao-interno-regular/rodape.jsp"%>
<% }%>
