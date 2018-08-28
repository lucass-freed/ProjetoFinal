<%-- 
    Document   : index
    Created on : 26/08/2018, 16:00:28
    Author     : Lucas Rodrigo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/padrao-interno-master/dashboard.jsp" %>

<h2>Cadastro Interno</h2>
<div class="panel box-shadow">
    <div class="panel-body container-fluid">
        <div class="row row-lg">
            <div class="col-md-6">
                <div class="example-wrap">
                    <h4 class="example-title">Informações Pessoais</h4>
                    <div class="example">
                        <form autocomplete="off">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label class="form-control-label" for="inputBasicNome">Usuário</label>
                                    <input type="text" class="form-control" id="inputBasicNome" name="inputNome"
                                           placeholder="Usuário" autocomplete="off"/>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="form-control-label" for="inputBasicSobrenome">Senha</label>
                                    <input type="text" class="form-control" id="inputBasicSobrenome" name="inputSobrenome"
                                           placeholder="Senha" autocomplete="off"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label class="form-control-label" for="inputBasicNome">Nome</label>
                                    <input type="text" class="form-control" id="inputBasicNome" name="inputNome"
                                           placeholder="Nome" autocomplete="off"/>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="form-control-label" for="inputBasicSobrenome">Sobrenome</label>
                                    <input type="text" class="form-control" id="inputBasicSobrenome" name="inputSobrenome"
                                           placeholder="Sobrenome" autocomplete="off"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="form-control-label" for="inputBasicCPF">CPF</label>
                                <input type="text" class="form-control" id="inputBasicCPF" name="inputCPF"
                                       placeholder="CPF" autocomplete="off"/>
                            </div>
                            <div class="form-group">
                                <label class="form-control-label" for="inputBasicDataNascimento">Data de Nascimento</label>
                                <input type="text" class="form-control" id="inputBasicDataNascimento" name="inputDataNascimento" placeholder="Data de Nascimento" autocomplete="off"/>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label class="form-control-label" for="inputBasicCTPS">CTPS</label>
                                    <input type="text" class="form-control" id="inputBasicCTPS" name="inputCTPS"
                                           placeholder="CTPS" autocomplete="off"/>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="form-control-label" for="inputBasicPIS">PIS</label>
                                    <input type="text" class="form-control" id="inputBasicPIS" name="inputPIS"
                                           placeholder="PIS" autocomplete="off"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="form-control-label" for="inputBasicTelefone">Telefone Celular</label>
                                <input type="text" class="form-control" id="inputBasicTelefone" name="inputTelefone"
                                       placeholder="Telefone Celular" autocomplete="off"/>
                            </div>
                            <div class="form-group">
                                <label class="form-control-label" for="inputBasicEmail">Endereço Email</label>
                                <input type="email" class="form-control" id="inputBasicEmail" name="inputEmail"
                                       placeholder="Endereço Email" autocomplete="off"/>
                            </div>
                            <div class="form-group">
                                <label class="form-control-label" for="comboBoxBasicFuncao">Função</label>
                                <div class="row">
                                    <div class="col-sm-5">
                                        <select class="form-control" id="comboBoxBasicFuncao" name="comboBoxFuncao">
                                            <option disabled="disabled" selected="selected"></option>
                                            <option value="Gerente">Gerente</option>
                                            <option value="Programador">Programador</option>
                                            <option value="Suporte">Suporte</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" style="text-align: center;">
                                <button type="button" class="btn btn-primary">Cadastrar</button>
                            </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="example-wrap">
                    <h4 class="example-title">Endereço</h4>
                    <div class="example">
                        <div class="form-group">
                            <label class="form-control-label" for="inputBasicCEP">CEP</label>
                            <input type="text" class="form-control" id="inputBasicCEP" name="inputCEP"
                                   placeholder="CEP" autocomplete="off"/>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label class="form-control-label" for="inputBasicCidade">Cidade</label>
                                <input type="text" class="form-control" id="inputBasicCidade" name="inputCidade"
                                       placeholder="Cidade" autocomplete="off"/>
                            </div>
                            <div class="form-group col-md-6">
                                <label class="form-control-label" for="inputBasicUF">UF</label>
                                <input type="text" class="form-control" id="inputBasicUF" name="inputUF" placeholder="UF" autocomplete="off" maxlength="2"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-control-label" for="inputBasicBairro">Bairro</label>
                            <input type="text" class="form-control" id="inputBasicBairro" name="inputBairro"
                                   placeholder="Bairro" autocomplete="off"/>
                        </div>
                        <div class="form-group">
                            <label class="form-control-label" for="inputBasicLogradouro">Logradouro</label>
                            <input type="text" class="form-control" id="inputBasicLogradouro" name="inputLogradouro"
                                   placeholder="Logradouro" autocomplete="off"/>
                        </div>
                        <div class="form-group">
                            <label class="form-control-label" for="inputBasicNumero">Número</label>
                            <input type="text" class="form-control" id="inputBasicNumero" name="inputNumero"
                                   placeholder="Número" autocomplete="off"/>
                        </div>
                        <div class="form-group">
                            <label class="form-control-label" for="inputBasicComplemento">Complemento</label>
                            <input type="text" class="form-control" id="inputBasicComplemento" name="inputComplemento"
                                   placeholder="Complemento" autocomplete="off"/>
                        </div>
                    </div>
                </div>
            </div>
            </form>
        </div>
        <!-- End Panel Input Grid -->
    </div>
</div>

<script src="/ProjetoFinal-Interno/tema/global/vendor/babel-external-helpers/babel-external-helpers.js"></script>
<script src="/ProjetoFinal-Interno/tema/global/vendor/jquery/jquery.js"></script>

<script src="/ProjetoFinal-Interno/tema/global/js/Plugin.js"></script>
<script src="/ProjetoFinal-Interno/tema/global/vendor/breakpoints/breakpoints.js"></script>

<script src="/ProjetoFinal-Interno/tema/global/vendor/formatter/jquery.formatter.js"></script>

<script src="/ProjetoFinal-Interno/tema/global/js/Plugin/formatter.js"></script>

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

    $('#inputBasicTelefone').formatter({
        'pattern': '({{99}}){{99999}}-{{9999}}',
        'persistent': false
    });
    $('#inputBasicCPF').formatter({
        'pattern': '{{999}}.{{999}}.{{999}}-{{99}}',
        'persistent': false
    });
    $('#inputBasicDataNascimento').formatter({
        'pattern': '{{99}}/{{99}}/{{9999}}',
        'persistent': false
    });
    $('#inputBasicCEP').formatter({
        'pattern': '{{99999}}-{{999}}',
        'persistent': false
    });
</script>

<%@include file="/padrao-interno-master/rodape.jsp" %>
