<%-- 
    Document   : index
    Created on : 22/09/2018, 15:46:34
    Author     : Lucas Rodrigo Frederico (lcuassfreed@hotmail.com)
--%>

<%@page import="br.com.projetofinal.bean.EmpresaBean"%>
<%@page import="br.com.projetofinal.dao.EmpresaDAO"%>
<%@page import="br.com.projetofinal.Util.DateFormatador"%>
<%@page import="br.com.projetofinal.Util.Formatador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file="/padroes/padrao-interno-master/dashboard.jsp" %>
<% } else { %>
<%@include file="/padroes/padrao-interno-regular/dashboard.jsp" %>
<% } %>

<% EmpresaBean empresa = new EmpresaDAO().obterPeloID(Integer.valueOf(request.getParameter("id")));%>

<!-- Page -->
<div class="panel">
    <div class="panel-body container-fluid box-shadow">
        <h2>Editar Empresa</h2>
        <hr>
        <form action="/empresa/alterar" method="post" id="editar" autocomplete="off">
            <div class="row row-lg">
                <div class="col-md-12">
                    <div class="example-wrap">
                        <div class="example">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label class="form-control-label" for="inputBasicCNPJ">CNPJ</label>
                                    <input type="text" class="form-control minha-classe" id="inputBasicCNPJ" name="inputCNPJ" autocomplete="off" value="<%= empresa.getCnpj()%>" placeholder="CNPJ" />
                                </div>
                                <input type="hidden" id="inputBasicID" name="inputID" value="<%= empresa.getId()%>">
                            </div>
                            <div class="row">
                                <div class="form-group col-md-6">  
                                    <label class="form-control-label" for="inputBasicNomeFantasia">Nome Fantasia</label>
                                    <input type="text" class="form-control minha-classe" id="inputBasicNomeFantasia" name="inputNomeFantasia" autocomplete="off" value="<%= empresa.getNomeFantasia()%>" placeholder="Nome Fantasia"/>
                                </div>
                                <div class="form-group col-md-6">    
                                    <label class="form-control-label" for="inputBasicRazaoSocial">Razão Social</label>
                                    <input type="text" class="form-control minha-classe" id="inputBasicRazaoSocial" name="inputRazaoSocial" autocomplete="off" value="<%= empresa.getRazaoSocial()%>" placeholder="Razão Social"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-6"> 
                                    <label class="form-control-label" for="inputBasicEmail">E-mail</label>
                                    <input type="email" class="form-control minha-classe" id="inputBasicEmail" name="inputEmail" autocomplete="off" value="<%= empresa.getEmail()%>" placeholder="E-mail" />
                                </div>
                                <div class="form-group col-md-6"> 
                                    <label class="form-control-label" for="inputBasicPhone">Telefone</label>
                                    <input type="text" class="form-control minha-classe" id="inputBasicPhone" name="inputPhone" value="<%= empresa.getTelefone()%>" placeholder="Telefone"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-6"> 
                                    <label class="form-control-label" for="inputBasicLogradouro">Logradouro</label>
                                    <input type="text" class="form-control minha-classe" id="inputBasicLogradouro" name="inputLogradouro" autocomplete="off" value="<%= empresa.getLogradouro()%>" placeholder="Logradouro"/>
                                </div>
                                <div class="form-group col-md-6">    
                                    <label class="form-control-label" for="inputBasicIE">Inscrição Estadual</label>
                                    <input type="text" class="form-control minha-classe" id="inputBasicIE" name="inputIE" autocomplete="off" value="<%= empresa.getInscricaoEstadual()%>" placeholder="Inscrição Estadual"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-6">   
                                    <label class="form-control-label" for="inputBasicNumero">Número</label>
                                    <input type="text" class="form-control minha-classe" id="inputBasicNumero" name="inputNumero" autocomplete="off" value="<%= empresa.getNumero()%>" placeholder="Número"/>
                                </div>
                                <div class="form-group col-md-6">   
                                    <label class="form-control-label" for="inputBasicComplemento">Complemento</label>
                                    <input type="text" class="form-control minha-classe" id="inputBasicComplemento" name="inputComplemento" autocomplete="off" value="<%= empresa.getComplemento()%>" placeholder="Complemento"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-6">  
                                    <label class="form-control-label" for="inputBasicBairro">Bairro</label>
                                    <input type="text" class="form-control minha-classe" id="inputBasicBairro" name="inputBairro" autocomplete="off" value="<%= empresa.getBairro()%>" placeholder="Bairro"/>
                                </div> 
                                <div class="form-group col-md-6">
                                    <label class="form-control-label" for="inputBasicCEP">CEP</label>
                                    <input type="text" class="form-control minha-classe" id="inputBasicCEP" name="inputCEP" autocomplete="off" value="<%= empresa.getCep()%>" placeholder="CEP"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-6">  
                                    <label class="form-control-label" for="inputBasicCidade">Cidade</label>
                                    <input type="text" class="form-control minha-classe" id="inputBasicCidade" name="inputCidade"autocomplete="off" value="<%= empresa.getCidade()%>" placeholder="Cidade"/>
                                </div>                               
                                <div class="form-group col-md-6"> 
                                    <label class="form-control-label" for="selectBasicUf">UF</label>
                                    <select class="form-control minha-classe" id="selectBasicUf" name="selectUf">
                                        <option value="<%= empresa.getUf().toLowerCase()%>" selected><%= empresa.getUf()%></option>
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
                                    <label class="form-control-label" for="inputBasicDataAtivacao">Data de Ativação</label>
                                    <input type="text" class="form-control" id="inputBasicDataAtivacao" name="inputDataAtivacao" autocomplete="off" value="<%= empresa.getDataAtivacao()%>" placeholder="Data de Ativação"/>
                                </div>
                                <div class="form-group col-md-6">   
                                    <label class="form-control-label" for="inputBasicDataExpiracao">Data de Expiração</label>
                                    <input type="text" class="form-control" id="inputBasicDataExpiracao" name="inputDataExpiracao" autocomplete="off" value="<%= empresa.getDataExpiracao()%>" placeholder="Data de Expiração"/>
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
<script src="/js/editar/editar-empresa.js"></script>

<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file= "/padroes/padrao-interno-master/rodape.jsp"%>
<% } else { %>
<%@include file="/padroes/padrao-interno-regular/rodape.jsp"%>
<% }%>
