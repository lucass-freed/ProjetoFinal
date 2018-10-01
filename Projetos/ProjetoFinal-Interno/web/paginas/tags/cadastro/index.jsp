<%-- 
    Document   : index
    Created on : 28/09/2018, 23:01:51
    Author     : Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
--%>
<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file="/padroes/padrao-interno-master/dashboard.jsp" %>
<% } else { %>
<%@include file="/padroes/padrao-interno-regular/dashboard.jsp" %>
<% } %>

<div class="panel">
    <div class="panel-body container-fluid box-shadow">
        <h2>Cadastrar Tag</h2>
        <form action="/interno/tag/store" method="post" id="cadastro" autocomplete="off">
            <div class="row row-lg">
                <div class="col-md-12">
                    <div class="example-wrap">
                        <div class="example">
                            <div class="row">
                                <div class="form-group col-md-6">  
                                    <label class="form-control-label" for="inputBasicTitulo">Título</label>
                                    <input type="text" class="form-control minha-classe" id="inputBasicTitulo" name="inputTitulo" autocomplete="off" placeholder="Título"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-6">    
                                    <label class="form-control-label" for="selectBasicCriticidade">Criticidade da Função</label>
                                    <select class="form-control minha-classe" id="selectBasicTipo" name="selectCriticidade">
                                        <option value="" disabled selected>Selecionar Criticidade</option>
                                        <option value="Baixa">Baixa</option>
                                        <option value="Media">Média</option>
                                        <option value="Alta">Alta</option>
                                        <option value="Altissima">Altíssima</option>
                                    </select>
                                </div>
                            </div>
                            </br>
                            <div class="row">
                                <div class="col-md-12" style="text-align: center">
                                    <button type="submit" class="col-md-4 btn btn-success" id="botao-cadastrar">Cadastrar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- End Panel Input Grid -->

<script src="/tema/global/vendor/babel-external-helpers/babel-external-helpers.js"></script>
<script src="/tema/global/vendor/jquery/jquery.js"></script>

<script src="/tema/global/js/Plugin.js"></script>
<script src="/tema/global/vendor/breakpoints/breakpoints.js"></script>

<script src="/tema/global/vendor/formatter/jquery.formatter.js"></script>

<script src="/tema/global/js/Plugin/formatter.js"></script>


<script>
    Breakpoints();
</script>
<script src="/js/cadastro/cadastro-tag.js"></script>

<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file= "/padroes/padrao-interno-master/rodape.jsp"%>
<% } else { %>
<%@include file="/padroes/padrao-interno-regular/rodape.jsp"%>
<% }%>
