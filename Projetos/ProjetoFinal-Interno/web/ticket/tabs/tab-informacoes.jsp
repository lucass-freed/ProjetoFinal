<%-- 
    Document   : tab-informacoes
    Created on : 30/08/2018, 09:20:11
    Author     : Michelle de Jesus Rogério
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.projetofinal.bean.EmpresaBean"%>
<% EmpresaBean empresa = (EmpresaBean) request.getAttribute("empresa");%>
<div class="tab-pane" id="tab-informacoes" role="tabpanel">
    <!--informações da empresa -->
    <div class="panel">
        <div class="panel-body container-fluid">
            <div class="row row-lg">
                <div class="col-md-12">
                    <div class="example-wrap">
                        <div class="col-md-12">
                            <h3 class="example-title col-md-4 float-left">Informações da Empresa</h3>
                        </div>
                        <div class="example">
                            <form method="get" action="#" autocomplete="off">
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <input type="text" class="form-control minha-classe" id="inputBasicCNPJ" name="inputCNPJ" autocomplete="off" placeholder="CNPJ" disabled="disabled" value="<%= empresa.getCnpj()%>"/>
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
                                        <input type="text" class="form-control minha-classe" id="inputPhone" placeholder="Telefone  Ex:(00)0000-0000" disabled="disabled" value="<%= empresa.getTelefone()%>"/>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="form-group col-md-6">                  
                                        <input type="text" class="form-control minha-classe" id="inputBasicDataAtivacao" name="inputDataAtivacao" autocomplete="off" placeholder="Data de Ativação  Ex: 00/00/0000"  disabled="disabled" value="<%= empresa.getDataAtivacao()%>"/>
                                    </div>
                                    <div class="form-group col-md-6">                   
                                        <input type="text" class="form-control minha-classe" id="inputBasicDataExpiracao" name="inputDataExpiracao" autocomplete="off" placeholder="Data de Expiração  Ex: 00/00/0000" disabled="disabled" value="<%= empresa.getDataExpiracao()%>"/>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--informações restantes-->
    <div class="panel">
        <div class="panel-body container-fluid">
            <div class="row row-lg">
                <div class="col-md-12">
                    <div class="example-wrap">
                        <div class="col-md-12">
                            <h3 class="example-title col-md-4 float-left">Informações Gerais</h3>
                        </div>
                        <div class="example">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</div>