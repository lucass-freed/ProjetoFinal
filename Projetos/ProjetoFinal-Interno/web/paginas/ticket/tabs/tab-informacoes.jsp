<%-- 
    Document   : tab-informacoes
    Created on : 30/08/2018, 09:20:11
    Author     : Michelle de Jesus Rogério
--%>

<%@page import="br.com.projetofinal.Util.DateFormatador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.projetofinal.bean.EmpresaBean"%>
<%@page import="br.com.projetofinal.bean.TicketBean"%>
<% TicketBean ticket2 = (TicketBean) request.getAttribute("ticket2");%>

<div class="tab-pane" id="tab-informacoes" role="#tab-informacoes">
    <h4 class="example-title">Informações da Empresa</h4>
    <div class="example">
        <form autocomplete="off">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="storeCNPJ">CNPJ</label>
                    <input type="text" class="form-control" id="storeCNPJ" name="storeCNPJ"
                           disabled="disabled" autocomplete="off" value="<%= ticket2.getEmpresa().getCnpj()%>"/>
                </div>
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="storeInscricaoEstadual">Inscrição Estadual</label>
                    <input type="text" class="form-control" id="storeInscricaoEstadual" name="storeInscricaoEstadual"
                           disabled="disabled" autocomplete="off" value="<%= ticket2.getEmpresa().getInscricaoEstadual()%>"/>
                </div>
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="storeRazaoSocial">Razão Social</label>
                    <input type="text" class="form-control" id="storeRazaoSocial" name="storeRazaoSocial"
                           disabled="disabled" autocomplete="off" value="<%= ticket2.getEmpresa().getRazaoSocial()%>"/>
                </div>
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="storeNomeFantasia">Nome Fantasia</label>
                    <input type="text" class="form-control" id="storeNomeFantasia" name="storeNomeFantasia"
                           disabled="disabled" autocomplete="off" value="<%= ticket2.getEmpresa().getNomeFantasia()%>"/>
                </div>


                <div class="form-group col-md-6">
                    <label class="form-control-label" for="storeDataAtivacao">Data de Ativação</label>
                    <input type="text" class="form-control" id="storeDataAtivacao" name="storeDataAtivacao"
                           disabled="disabled" autocomplete="off" value="<%= DateFormatador.formatoBr(ticket2.getEmpresa().getDataAtivacao())%>"/>
                </div>
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="storeDataExpiração">Data de Expiração</label>
                    <input type="text" class="form-control" id="storeDataExpiração" name="storeDataExpiração"
                           disabled="disabled" autocomplete="off" value="<%= DateFormatador.formatoBr(ticket2.getEmpresa().getDataExpiracao())%>"/>
                </div>
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="storeValidadeCertificado">Validade do Certificado</label>
                    <input type="text" class="form-control" id="storeValidadeCertificado" name="storeValidadeCertificado"
                           disabled="disabled" autocomplete="off" value="<%= ticket2.getEmpresa().getValidadeCertificado()%>"/>
                </div>
            </div>

    </div>
    <div>
        <h4 class="example-title">Dados de Contato</h4>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label class="form-control-label" for="storeEmail">Email</label>
                <input type="text" class="form-control" id="storeEmail" name="storeEmail"
                       disabled="disabled" autocomplete="off" value="<%= ticket2.getEmpresa().getEmail()%>"/>
            </div>
            <div class="form-group col-md-6">
                <label class="form-control-label" for="storeTelefone">Telefone</label>
                <input type="text" class="form-control" id="storeTelefone" name="storeTelefone"
                       disabled="disabled" autocomplete="off" value="<%= ticket2.getEmpresa().getTelefone()%>"/>
            </div>
        </div>
        </form>
    </div>
</div>