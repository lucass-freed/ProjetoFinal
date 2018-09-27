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

                    <form action="/externo/chamado/store" method="post" id="chamado" autocomplete="off">
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="form-control-label" for="titulo">Título</label>
                                    <input type="text" class="form-control" name="titulo" id="titulo" placeholder="Título">
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
                                    <textarea class="form-control" rows="5" name="descricao" id="descricao" placeholder="Insira uma Descrição"></textarea>
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






        <!--         Modal 
                <div class="modal fade modal-success" id="exampleModalSuccess" aria-hidden="true"
                     aria-labelledby="exampleModalSuccess" role="dialog" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                                <h4 class="modal-title">Chamado</h4>
                            </div>
                            <div class="modal-body">
                                <p><h3>Pergunta 2</h3></p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal"
                                        data-target="#exampleModalDanger"  data-toggle="modal" >Sim</button>
        
                                <button type="button" class="btn btn-primary" data-dismiss="modal"
                                        data-target="#exampleModalDanger"  data-toggle="modal">Não</button>
                            </div>
                        </div>
                    </div>
                </div>
                 End Modal 
        
                 Modal 
                <div class="modal fade modal-danger" id="exampleModalDanger" aria-hidden="true"
                     aria-labelledby="exampleModalDanger" role="dialog" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                                <h4 class="modal-title">Chamado</h4>
                            </div>
                            <div class="modal-body">
                                <p><h3>Pergunta 3</h3></p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal"
                                        data-target="#exampleFormModal"  data-toggle="modal"   >Sim</button>
                                <button type="button" class="btn btn-primary" data-dismiss="modal"
                                        data-target="#exampleFormModal"  data-toggle="modal" >Não</button>
                            </div>
                        </div>
                    </div>
                </div>
                 End Modal 
        
        
                 End Modal 
            </div>
        </div>
         End Example Styles 
        </div>
        
        
         Modal 
        <div class="modal fade" id="exampleFormModal" aria-hidden="false" aria-labelledby="exampleFormModalLabel"
             role="dialog" tabindex="-1">
            <div class="modal-dialog modal-simple">
                <form class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                        <h4 class="modal-title" id="exampleFormModalLabel">Chamado</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-xl-4 form-group">
                                <input type="text" class="form-control" name="firstName" placeholder="Assunto">
                            </div>
                            <div class="col-xl-4 form-group">
                                <input type="email" class="form-control" name="lastName" placeholder="Telefone">
                            </div>
                            <div class="col-xl-4 form-group">
                                <input type="email" class="form-control" name="email" placeholder="Email">
                            </div>
                            <div class="col-xl-12 form-group">
                                <textarea class="form-control" rows="5" placeholder="Insira uma Descrição"></textarea>
                            </div>
                            <div class="float-right">
                                <button class="btn btn-primary btn-outline" data-dismiss="modal" type="button" data-target="#exampleModalSend" data-toggle="modal">Enviar Chamado</button>
                            </div>
        
                        </div>
                </form>
        
            </div>
        </div>
         End Modal -->
    </div>
</div>
<!-- End Example Form Modal -->
</div>
<div class="modal fade modal-success" id="exampleModalSend" aria-hidden="true"
     aria-labelledby="exampleModalSuccess" role="dialog" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title">Chamado Enviado com Sucesso</h4>
            </div>



            <% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
            <%@include file= "/padroes/padrao-externo-master/rodape.jsp"%>
            <% } else { %>
            <%@include file="/padroes/padrao-externo-regular/rodape.jsp"%>
            <% }%>
