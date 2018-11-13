<%@page import="br.com.projetofinal.bean.FuncaoBean"%>
<%@page import="br.com.projetofinal.dao.FuncaoDAO"%>
<%-- 
    Document   : index
    Created on : 26/08/2018, 16:00:28
    Author     : Lucas Rodrigo
--%>
<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file="/padroes/padrao-interno-master/dashboard.jsp" %>
<% } else { %>
<%@include file="/padroes/padrao-interno-regular/dashboard.jsp" %>
<% } %>

<div class="panel">
    <div class="panel-body container-fluid box-shadow">
        <h2>Cadastrar Colaborador</h2>
        <form action="javascript:cadastrarColaborador(<%= request.getParameter("id")%>);" id="cadastro" autocomplete="off">
            <div class="row">
                <h4 class="example-title col-md-6">Informações Pessoais</h4>
                <h4 class="example-title">Endereço</h4>
            </div>
            <div class="row">
                <div class="form-group col-md-3">
                    <label class="form-control-label" for="inputBasicUsuario">Usuário <span style="color: red">*</span></label>
                    <input type="text" class="form-control" id="inputBasicUsuario" name="inputUsuario"
                           placeholder="Usuário" autocomplete="off"/>
                </div>
                <div class="form-group col-md-3">
                    <label class="form-control-label" for="inputBasicSenha">Senha <span style="color: red">*</span></label>
                    <input type="password" class="form-control" id="inputBasicSenha" name="inputSenha"
                           placeholder="Senha" autocomplete="off"/>
                </div>
                <div class="form-group col-md-3">
                    <label class="form-control-label" for="inputBasicCidade">Cidade <span style="color: red">*</span></label>
                    <input type="text" class="form-control" id="inputBasicCidade" name="inputCidade" placeholder="Cidade" autocomplete="off"/>
                </div>
                <div class="form-group col-md-3">
                    <label class="form-control-label" for="selectBasicUf">UF <span style="color: red">*</span></label>
                    <select class="form-control minha-classe" id="selectBasicUf" name="selectUf">
                        <option value="" disabled selected>Selecionar UF</option>
                        <option value="ac">AC</option>
                        <option value="al">AL</option>
                        <option value="ap">AP</option>
                        <option value="am">AM</option>
                        <option value="ba">BA</option>
                        <option value="ce">CE</option>
                        <option value="df">DF</option>
                        <option value="es">ES</option>
                        <option value="go">GO</option>
                        <option value="ma">MA</option>
                        <option value="mg">MG</option>
                        <option value="ms">MS</option>
                        <option value="mt">MT</option>
                        <option value="pa">PA</option>
                        <option value="pb">PB</option>
                        <option value="pe">PE</option>
                        <option value="pi">PI</option>
                        <option value="pr">PR</option>
                        <option value="rj">RJ</option>
                        <option value="rn">RN</option>
                        <option value="ro">RO</option>
                        <option value="rr">RR</option>
                        <option value="rs">RS</option>
                        <option value="sc">SC</option>
                        <option value="se">SE</option>
                        <option value="sp">SP</option>
                        <option value="to">TO</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="inputBasicNomeCompleto">Nome <span style="color: red">*</span></label>
                    <input type="text" class="form-control" id="inputBasicNomeCompleto" name="inputNomeCompleto"
                           placeholder="Nome Completo" autocomplete="off"/>
                </div>
                <div class="form-group col-md-3">
                    <label class="form-control-label" for="inputBasicCEP">CEP <span style="color: red">*</span></label>
                    <input type="text" class="form-control" id="inputBasicCEP" name="inputCEP" placeholder="CEP" autocomplete="off"/>
                </div>
                <div class="form-group col-md-3">
                    <label class="form-control-label" for="inputBasicBairro">Bairro <span style="color: red">*</span></label>
                    <input type="text" class="form-control" id="inputBasicBairro" name="inputBairro" placeholder="Bairro" autocomplete="off"/>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-3">
                    <label class="form-control-label" for="inputBasicCPF">CPF <span style="color: red">*</span></label>
                    <input type="text" class="form-control" id="inputBasicCPF" name="inputCPF"
                           placeholder="CPF" autocomplete="off"/>
                </div>
                <div class="form-group col-md-3">
                    <label class="form-control-label" for="inputBasicDataNascimento">Data de Nascimento <span style="color: red">*</span></label>
                    <input type="text" class="form-control" id="inputBasicDataNascimento" name="inputDataNascimento" placeholder="Data de Nascimento" autocomplete="off"/>
                </div>
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="inputBasicLogradouro">Logradouro <span style="color: red">*</span></label>
                    <input type="text" class="form-control" id="inputBasicLogradouro" name="inputLogradouro" placeholder="Logradouro" autocomplete="off"/>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-3">
                    <label class="form-control-label" for="inputBasicCTPS">CTPS <span style="color: red">*</span></label>
                    <input type="text" class="form-control" id="inputBasicCTPS" name="inputCTPS"
                           placeholder="CTPS" autocomplete="off"/>
                </div>
                <div class="form-group col-md-3">
                    <label class="form-control-label" for="inputBasicPIS">PIS <span style="color: red">*</span></label>
                    <input type="text" class="form-control" id="inputBasicPIS" name="inputPIS"
                           placeholder="PIS" autocomplete="off"/>
                </div>
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="inputBasicNumero">Número <span style="color: red">*</span></label>
                    <input type="text" class="form-control" id="inputBasicNumero" name="inputNumero" placeholder="Número" autocomplete="off"/>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-3">
                    <label class="form-control-label" for="inputBasicTelefone">Telefone Celular <span style="color: red">*</span></label>
                    <input type="text" class="form-control" id="inputBasicTelefone" name="inputTelefone"
                           placeholder="Telefone Celular" autocomplete="off"/>
                </div>
                <div class="form-group col-md-3">
                    <label class="form-control-label" for="inputBasicEmail">Endereço Email <span style="color: red">*</span></label>
                    <input type="email" class="form-control" id="inputBasicEmail" name="inputEmail"
                           placeholder="Endereço Email" autocomplete="off"/>
                </div>
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="inputBasicComplemento">Complemento <span style="color: red">*</span></label>
                    <input type="text" class="form-control" id="inputBasicComplemento" name="inputComplemento" placeholder="Complemento" autocomplete="off"/>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-3">
                    <label class="form-control-label" for="comboBoxBasicFuncao">Função <span style="color: red">*</span></label>
                    <div class="row">
                        <div class="col-sm-10">
                            <select class="form-control" id="comboBoxBasicFuncao" name="comboBoxFuncao">
                                <option value="" disabled selected>Selecionar Função</option>
                                <% for (FuncaoBean funcao : new FuncaoDAO().obterFuncoesInternas()) {%>
                                <option value="<%= funcao.getId()%>"><%= funcao.getNome()%></option>
                                <% }%>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="form-group col-md-3">
                    <label class="form-control-label" for="inputBasicDataAdmissao">Data de Admissão <span style="color: red">*</span></label>
                    <input type="text" class="form-control" id="inputBasicDataAdmissao" name="inputDataAdmissao" placeholder="Data de Admissão" autocomplete="off"/>
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
<script src="/js/datatable/jquery.min.js"></script>
<script src="/js/tabelas/tabela-colaboradores.js"></script>
<script src="/js/cadastro/cadastro-colaborador.js"></script>

<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file= "/padroes/padrao-interno-master/rodape.jsp"%>
<% } else { %>
<%@include file="/padroes/padrao-interno-regular/rodape.jsp"%>
<% }%>
