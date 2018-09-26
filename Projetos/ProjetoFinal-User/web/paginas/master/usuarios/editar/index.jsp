<%-- 
    Document   : index
    Created on : 26/09/2018, 08:28:56
    Author     : Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
--%>

<%@page import="br.com.projetofinal.dao.UsuarioDAO"%>
<%@page import="br.com.projetofinal.bean.UsuarioBean"%>
<%@page import="br.com.projetofinal.dao.FuncaoDAO"%>
<%@page import="br.com.projetofinal.bean.FuncaoBean"%>
<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file="/padroes/padrao-externo-master/dashboard.jsp" %>
<% } else { %>
<%@include file="/padroes/padrao-externo-regular/dashboard.jsp" %>
<% } %>

<% UsuarioBean usuario = new UsuarioDAO().obterUsuarioPorID(Integer.parseInt(request.getParameter("id")));%>

<div class="panel">
    <div class="panel-body container-fluid box-shadow">
        <h2>Editar Usuário</h2>
        <form action="/externo/usuario/store" method="post" id="editar" autocomplete="off">
            <div class="row">
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="inputBasicUsuario">Usuário</label>
                    <input type="text" class="form-control" id="inputBasicUsuario" name="inputUsuario" value="<%= usuario.getUsuario()%>" placeholder="Usuário" autocomplete="off"/>
                </div>
                <input type="hidden" id="inputBasicSenha" name="inputSenha" value="<%= usuario.getSenha()%>">
                <input type="hidden" id="inputBasicID" name="inputID" value="<%= usuario.getId()%>">
                <input type="hidden" id="inputBasicIDEmpresa" name="inputIDEmpresa" value="<%= usuario.getIdEmpresa()%>">
            </div>
            <div class="row">
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="inputBasicNomeCompleto">Nome</label>
                    <input type="text" class="form-control" id="inputBasicNomeCompleto" name="inputNomeCompleto" value="<%= usuario.getNome()%>" placeholder="Nome Completo" autocomplete="off"/>
                </div>
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="inputBasicCPF">CPF</label>
                    <input type="text" class="form-control" id="inputBasicCPF" name="inputCPF" value="<%= usuario.getCpf()%>" placeholder="CPF" autocomplete="off"/>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="inputBasicDataNascimento">Data de Nascimento</label>
                    <input type="text" class="form-control" id="inputBasicDataNascimento" name="inputDataNascimento" value="<%= usuario.getDataNascimento()%>" placeholder="Data de Nascimento" autocomplete="off"/>
                </div>
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="inputBasicTelefone">Telefone Celular</label>
                    <input type="text" class="form-control" id="inputBasicTelefone" name="inputTelefone" value="<%= usuario.getTelefone()%>" placeholder="Telefone Celular" autocomplete="off"/>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="inputBasicEmail">Endereço Email</label>
                    <input type="email" class="form-control" id="inputBasicEmail" name="inputEmail" value="<%= usuario.getEmail()%>" placeholder="Endereço Email" autocomplete="off"/>
                </div>
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="comboBoxBasicFuncao">Função</label>
                    <div class="row">
                        <div class="col-sm-12">
                            <select class="form-control" id="comboBoxBasicFuncao" name="comboBoxFuncao">
                                <option value="<%= usuario.getIdFuncao()%>" disabled selected><%= usuario.getFuncao().getNome()%></option>
                                <% for (FuncaoBean funcao : new FuncaoDAO().obterFuncoes()) {%>
                                <option value="<%= funcao.getId()%>"><%= funcao.getNome()%></option>
                                <% }%>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12" style="text-align: center">
                    <button type="submit" class="col-md-4 btn btn-success">Salvar Alterações</button>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- End Panel Input Grid -->
</div>
</div>

<script src="/tema/global/vendor/babel-external-helpers/babel-external-helpers.js"></script>
<script src="/tema/global/vendor/jquery/jquery.js"></script>

<script src="/tema/global/js/Plugin.js"></script>
<script src="/tema/global/vendor/breakpoints/breakpoints.js"></script>

<script src="/tema/global/vendor/formatter/jquery.formatter.js"></script>

<script src="/tema/global/js/Plugin/formatter.js"></script>


<script>
    Breakpoints();
</script>
<script src="/js/editar/editar-usuario.js"></script>

<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file= "/padroes/padrao-externo-master/rodape.jsp"%>
<% } else { %>
<%@include file="/padroes/padrao-externo-regular/rodape.jsp"%>
<% }%>