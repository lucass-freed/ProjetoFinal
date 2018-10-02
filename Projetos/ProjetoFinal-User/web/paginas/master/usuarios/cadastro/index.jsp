<%-- 
    Document   : index
    Created on : 26/09/2018, 08:28:56
    Author     : Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
--%>

<%@page import="br.com.projetofinal.dao.FuncaoDAO"%>
<%@page import="br.com.projetofinal.bean.FuncaoBean"%>
<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file="/padroes/padrao-externo-master/dashboard.jsp" %>
<% } else { %>
<%@include file="/padroes/padrao-externo-regular/dashboard.jsp" %>
<% } %>

<div class="panel">
    <div class="panel-body container-fluid box-shadow">
        <h2>Cadastrar Usuário</h2>
        <form action="javascript:cadastrarUsuario(<%= request.getParameter("id")%>);" id="cadastro" autocomplete="off">
            <div class="row">
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="inputBasicUsuario">Usuário</label>
                    <input type="text" class="form-control" id="inputBasicUsuario" name="inputUsuario"
                           placeholder="Usuário" autocomplete="off"/>
                </div>
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="inputBasicSenha">Senha</label>
                    <input type="password" class="form-control" id="inputBasicSenha" name="inputSenha"
                           placeholder="Senha" autocomplete="off"/>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="inputBasicNomeCompleto">Nome</label>
                    <input type="text" class="form-control" id="inputBasicNomeCompleto" name="inputNomeCompleto"
                           placeholder="Nome Completo" autocomplete="off"/>
                </div>
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="inputBasicCPF">CPF</label>
                    <input type="text" class="form-control" id="inputBasicCPF" name="inputCPF"
                           placeholder="CPF" autocomplete="off"/>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="inputBasicDataNascimento">Data de Nascimento</label>
                    <input type="text" class="form-control" id="inputBasicDataNascimento" name="inputDataNascimento" placeholder="Data de Nascimento" autocomplete="off"/>
                </div>
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="inputBasicTelefone">Telefone Celular</label>
                    <input type="text" class="form-control" id="inputBasicTelefone" name="inputTelefone"
                           placeholder="Telefone Celular" autocomplete="off"/>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="inputBasicEmail">Endereço Email</label>
                    <input type="email" class="form-control" id="inputBasicEmail" name="inputEmail"
                           placeholder="Endereço Email" autocomplete="off"/>
                </div>
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="comboBoxBasicFuncao">Função</label>
                    <div class="row">
                        <div class="col-sm-12">
                            <select class="form-control" id="comboBoxBasicFuncao" name="comboBoxFuncao">
                                <option value="" disabled selected>Selecionar Função</option>
                                <% for (FuncaoBean funcao : new FuncaoDAO().obterFuncoesExternas()) {%>
                                <option value="<%= funcao.getId()%>"><%= funcao.getNome()%></option>
                                <% }%>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12" style="text-align: center">
                    <button type="submit" class="col-md-4 btn btn-success">Cadastrar</button>
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
<script src="/js/cadastro/cadastro-usuario.js"></script>

<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file= "/padroes/padrao-externo-master/rodape.jsp"%>
<% } else { %>
<%@include file="/padroes/padrao-externo-regular/rodape.jsp"%>
<% }%>