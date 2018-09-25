<%-- 
    Document   : index
    Created on : 27/08/2018, 10:12:34
    Author     : Thiago
--%>

<%@page import="br.com.projetofinal.dao.EmpresaDAO"%>
<%@page import="br.com.projetofinal.Util.DateFormatador"%>
<%@page import="br.com.projetofinal.Util.Formatador"%>
<%@page import="br.com.projetofinal.bean.EmpresaBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file="/padroes/padrao-externo-master/dashboard.jsp" %>
<% } else { %>
<%@include file="/padroes/padrao-externo-regular/dashboard.jsp" %>
<% }%>


<!-- Page -->
<div class="panel">
    <div class="panel-body container-fluid">
        <div class="row row-lg">
            <div class="col-md-12">
                <div class="example-wrap">
                    <form action="/externo/empresa/store" method="post" id="alterar-empresa" >
                    <% EmpresaBean empresa = (EmpresaBean) request.getAttribute("empresa");%>
                    <div class="example">
                        <input type="hidden" id="inputBasicId" value="<%= empresa.getId() %>">
                        <div class="row">
                            <div class="col-md-12">
                                <button type="button" class="btn btn-outline-success col-md-4 float-right" id="botao-alterar">Alterar</button>
                                <h3 class="example-title col-md-5 float-left">Cadastro de Empresa</h3>
                            </div>

                        </div>
                        <div class="row">
                            <div class="form-group col-md-12">
                                <input type="text" class="form-control minha-classe" id="inputBasicCNPJ" name="inputCNPJ" autocomplete="off" placeholder="CNPJ" disabled="disabled" value="<%= Formatador.formatoCnpj(empresa.getCnpj())%>"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-12">                  
                                <input type="text" class="form-control minha-classe" id="inputBasicRazaoSocial" name="inputRazaoSocial"
                                       autocomplete="off" placeholder="Razão Social" disabled="disabled" value="<%= empresa.getRazaoSocial()%>"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-12">                  
                                <input type="text" class="form-control minha-classe" id="inputBasicNomeFantasia" name="inputNomeFantasia" autocomplete="off" placeholder="Nome Fantasia" disabled="disabled" value="<%= empresa.getNomeFantasia()%>"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-12">                  
                                <input type="text" class="form-control minha-classe" id="inputBasicIE" name="inputIE" autocomplete="off" placeholder="Inscrição Estadual" disabled="disabled" value="<%= empresa.getInscricaoEstadual()%>"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6"> 
                                <input type="email" class="form-control minha-classe" id="inputBasicEmail" name="inputEmail"
                                       autocomplete="off" placeholder="E-mail" disabled="disabled" value="<%= empresa.getEmail()%>"/>
                            </div>
                            <div class="form-group col-md-6"> 
                                <input type="text" class="form-control minha-classe" id="inputPhone" placeholder="Telefone  Ex:(00)0000-0000" disabled="disabled" value="<%= Formatador.formatoTelefone(empresa.getTelefone())%>"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-12">                   
                                <input type="text" class="form-control minha-classe" id="inputBasicLogradouro" name="inputLogradouro" autocomplete="off" placeholder="Logradouro" disabled="disabled" value="<%= empresa.getLogradouro()%>"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">                  
                                <input type="text" class="form-control minha-classe" id="inputBasicNumero" name="inputNumero" autocomplete="off" placeholder="Número" disabled="disabled" value="<%= empresa.getNumero()%>"/>
                            </div>
                            <div class="form-group col-md-6">                 
                                <input type="text" class="form-control minha-classe" id="inputBasicComplemento" name="inputComplemento" autocomplete="off" placeholder="Complemento" disabled="disabled" value="<%= empresa.getComplemento()%>"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">                   
                                <input type="text" class="form-control minha-classe" id="inputBasicBairro" name="inputBairro" autocomplete="off" placeholder="Bairro" disabled="disabled" value="<%= empresa.getBairro()%>"/>
                            </div> 
                            <div class="form-group col-md-6">
                                <input type="text" class="form-control minha-classe" id="inputBasicCEP" name="inputCEP" autocomplete="off" placeholder="CEP  Ex:00000-000" disabled="disabled" value="<%= Formatador.formatoCep(empresa.getCep())%>"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">                   
                                <input type="text" class="form-control minha-classe" id="inputBasicCidade" name="inputCidade"autocomplete="off" placeholder="Cidade" disabled="disabled" value="<%= empresa.getCidade()%>"/>
                            </div>                               
                            <div class="form-group col-md-6"> 
                                <select class="form-control minha-classe" disabled="disabled" id="selectBasicUf">
                                    <option selected="selected"><%= empresa.getUf()%></option>
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
                                <input type="text" class="form-control" id="inputBasicDataAtivacao" name="inputDataAtivacao" autocomplete="off" placeholder="Data de Ativação  Ex: 00/00/0000"  disabled="disabled" value="<%= DateFormatador.formatoBr(empresa.getDataAtivacao())%>"/>
                            </div>
                            <div class="form-group col-md-6">                   
                                <input type="text" class="form-control" id="inputBasicDataExpiracao" name="inputDataExpiracao" autocomplete="off" placeholder="Data de Expiração  Ex: 00/00/0000" disabled="disabled" value="<%= DateFormatador.formatoBr(empresa.getDataExpiracao())%>"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <button type="button" class="btn btn-outline-danger col-md-4 float-left" id="botao-cancelar" onclick="acao-cancelar.js">Cancelar</button>
                                <button type="button" class="btn btn-outline-primary col-md-4 float-right minha-classe" disabled="disabled" id="botao-salvar" onclick="acao-editar.js">Salvar</button>

                            </div>
                        </div>
                    </div>
                    </form>
                </div>
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
<script src="/js/empresa/validator.js"></script>


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

    $('#inputPhone').formatter({
        'pattern': '({{99}}){{9999}}-{{9999}}',
        'persistent': false
    });
    $('#inputBasicCEP').formatter({
        'pattern': '{{99999}}-{{999}}',
        'persistent': false
    });
    $('#inputBasicDataAtivacao').formatter({
        'pattern': '{{99}}/{{99}}/{{9999}}',
        'persistent': false
    });
    $('#inputBasicDataExpiracao').formatter({
        'pattern': '{{99}}/{{99}}/{{9999}}',
        'persistent': false
    });
    $('#inputBasicCNPJ').formatter({
        'pattern': '{{99}}.{{999}}.{{999}}/{{9999}}-{{99}}',
        'persistent': false
    });
</script>
<script>
    $("#botao-alterar").click(function () {
        $(".minha-classe").click($('.minha-classe').removeAttr('disabled'));
    });

    $("#botao-cancelar").click(function () {
        $(".minha-classe").click($('.minha-classe').attr('disabled', 'disabled'));
    });
</script>
<script src="/js/acao-cancelar.js"></script>
<script src="/js/acao-salvar.js"></script>

<% if (request.getSession().getAttribute("isMaster").equals("true")) { %>
<%@include file= "/padroes/padrao-externo-master/rodape.jsp"%>
<% } else { %>
<%@include file="/padroes/padrao-externo-regular/rodape.jsp"%>
<% }%>
