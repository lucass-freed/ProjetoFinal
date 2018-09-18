<%-- 
    Document   : tab-conclusao
    Created on : 30/08/2018, 09:25:35
    Author     : Michelle de Jesus Rogério
--%>
<%@page import="br.com.projetofinal.bean.EmpresaBean"%>
<%@page import="br.com.projetofinal.bean.TicketBean"%>
<% TicketBean ticket3 = (TicketBean) request.getAttribute("ticket3");%>

<!--TODO:
    - Procedimento Resolução

-->
<div class="tab-pane" id="tab-conclusao" role="#tab-conclusao">
    <div class="example">
        <form autocomplete="off">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="storeDataAbertura">Data de Abertura</label>
                    <input type="text" class="form-control" id="storeDataAbertura" name="storeDataAbertura"
                           disabled="disabled" autocomplete="off" value="<%= ticket3.getDataAbertura()%>"/>
                </div>

                <% if (ticket3.getDataEncerramento() == null) {%>
                <!--if dataConclusao is null aparece botao-->
                <div class="exemple-title text-center mb-45">            
                    <div class="example example-buttons">
                        <button type="button" class="btn btn-outline btn-success">Concluir</button>
                    </div>
                </div>
                <%} else {%>
                <div class="form-group col-md-6">
                    <label class="form-control-label" for="storeDataConclusao">Data de Conclusão</label>
                    <input type="text" class="form-control" id="storeDataConclusao" name="storeDataConclusao"
                           disabled="disabled" autocomplete="off" value="<%= ticket3.getDataEncerramento()%>"/>
                </div>

                <!---div class="form-group col-md-6">
                    <label class="form-control-label" for="storeColaborador">Concluído Por</label>
                    <input type="text" class="form-control" id="storeColaborador" name="storeColaborador"
                           disabled="disabled" autocomplete="off" value="<%= ticket3.getDataAbertura()%>"/>
                </div-->
                <div class="form-group row col-md-6">
                    <p>Procedimento de Resolução<p>
                    <div class="col-md-9">
                        <textarea class="form-control" id="storeDataConclusao" name="storeDataConclusao"
                                  disabled="disabled" autocomplete="off" value="<%= ticket3.getDataEncerramento()%>"/>
                        </textarea>
                    </div>
                </div>

                <%}%>
            </div>