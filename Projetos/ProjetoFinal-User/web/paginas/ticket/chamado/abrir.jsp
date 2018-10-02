<%-- 
    Document   : index
    Created on : 28/08/2018, 08:17:15
    Author     : Matheus Ruan Werner
    Contributor     : Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
--%>


<%@page import="br.com.projetofinal.bean.UsuarioBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file="/padroes/padrao-externo-master/dashboard.jsp" %>
<% } else { %>
<%@include file="/padroes/padrao-externo-regular/dashboard.jsp" %>
<% }%>
<%@page import="br.com.projetofinal.bean.TagBean"%>
<%@page import="br.com.projetofinal.dao.TagsDAO"%>
<% List<TagBean> tags = (List<TagBean>) request.getAttribute("tags");%>


<div class="panel">
    <div class="panel-body container-fluid">
        <div class="page-content">
            <!-- Example Styles -->
            <div class="text-center">
                <img class="navbar-brand-logo" src="/tema/assets/images/logo@2x.png" title="FlowDesk">
                <h3 class="example-title mb-45">Abertura de Chamado</h3>
                </p>
                <div class="color-selector-wrap clearfix">
                    <ul class="color-selector">
                        <div> 
                            <button type="button" class="btn btn-primary" id="inputStylePrimary" name="colorChosen" data-target="#exampleModalPrimary"
                                    data-toggle="modal"/>Abrir Chamado</button>
                            <label for="inputStylePrimary"></label>
                        </div>
                    </ul>
                </div>
            </div>
        </div>

        <!-- Primeira Pergunta -->
        <div class="modal fade modal-primary" id="exampleModalPrimary" aria-hidden="true"
             aria-labelledby="exampleModalPrimary" role="dialog" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                        <h4 class="modal-title">Chamado</h4>
                    </div>

                    <form action="javascript:enviarChamado();" id="chamado" autocomplete="off">
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="form-control-label" for="titulo">Título</label>
                                    <input type="text" class="form-control" name="titulo" id="BasicTitulo" placeholder="Título">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-xl-12 form-group">
                                    <label class="form-control-label" for="tags">Tags</label>
                                    <select class="from-control" name="tags[]" id="tags" multiple="multiple">
                                    </select>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-xl-12 form-group">
                                    <label class="form-control-label" for="descricao">Descrição</label>
                                    <textarea class="form-control" rows="5" name="descricao" id="BasicDescricao" placeholder="Insira uma Descrição"></textarea>
                                </div> 
                            </div>
                        </div>
                        <div class="modal-footer">
                            <div class="col-md-12 float-right text-center">
                                <!--data-dismiss="modal" type="submit" data-target="#exampleModalSend"  data-toggle="modal"-->
                                <button type="submit" class="btn btn-primary" id="btn-cadastrar">Enviar Chamado</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- End Modal -->
    </div>
</div>

<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file= "/padroes/padrao-externo-master/rodape.jsp"%>
<% } else { %>
<%@include file="/padroes/padrao-externo-regular/rodape.jsp"%>
<% }%>
