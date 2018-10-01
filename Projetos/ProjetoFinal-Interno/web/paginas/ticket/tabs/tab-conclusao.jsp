<%-- 
    Document   : tab-conclusao
    Created on : 30/08/2018, 09:25:35
    Author     : Michelle de Jesus Rogério
--%>
<%@page import="br.com.projetofinal.enumTypes.EnumTicketStatusType"%>
<%@page import="br.com.projetofinal.dao.TicketDAO"%>
<%@page import="br.com.projetofinal.Util.DateFormatador"%>
<%@page import="br.com.projetofinal.bean.EmpresaBean"%>
<%@page import="br.com.projetofinal.bean.TicketBean"%>
<% TicketBean ticket3 = (TicketBean) request.getAttribute("ticket3");%>

<!--TODO:
    - Procedimento Resolução

-->
<div class="tab-pane" id="tab-conclusao" role="#tab-conclusao">
    <div class="example">
        <div class="form-row">
            <div class="form-group col-md-6">
                <label class="form-control-label" for="storeDataAbertura">Data de Abertura</label>
                <input type="text" class="form-control" id="storeDataAbertura" name="storeDataAbertura"
                       disabled="disabled" autocomplete="off" value="<%= DateFormatador.timesStampFormatoBrComHora(ticket3.getDataAbertura())%>"/>
            </div>
        </div>

        <% if (is) {%>
        <% if (ticket3.getDataEncerramento() == null) {%>
            <!--if dataConclusao is null aparece botao-->
            </br>
            <div class="form-row">
                <div class="col-md-8" style="text-align: left">
                    <button type="button" class="btn btn-round btn-animate btn-animate-vertical btn-success btn-pill-right col-md-6 btn-outline" 
                            data-target="#modalConclusao" data-toggle="modal">
                        <span><i class="icon wb-check" aria-hidden="true"></i>Concluir</span>
                    </button>
                    <!-- Modal -->
                    <div class="modal fade modal-success modal-slide-in-right" id="modalConclusao" aria-hidden="true"
                         aria-labelledby="exampleModalTitle" role="dialog" tabindex="-1">
                        <div class="modal-dialog modal-simple">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                    <h4 class="modal-title">Concluir Ticket</h4>
                                </div>
                                <form action="/interno/ticket/concluir" method="post" id="formConcluir" autocomplete="off">
                                    <input type="hidden" value="<%= ticket3.getId()%>" name="ticketID"/>
                                    <div class="modal-body">
                                        </br>
                                        <div class="form-row">
                                            <div class="form-group col-md-12">
                                                <label class="form-control-label">Procedimento de Resolução</label>
                                                <textarea name="resolucao" rows="7" class="form-control" autocomplete="off"/></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                        <button type="submit" class="btn btn-primary">Salvar</button>
                                    </div>
                                </form>
                            </div>
                            <!-- End Modal -->
                        </div>
                    </div>
                    <!-- End Modal -->
                </div>
            </div>
            <%} else {%>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label class="form-control-label">Data de Conclusão</label>
                    <input type="text" class="form-control" disabled="disabled" autocomplete="off" value="<%= DateFormatador.timesStampFormatoBrComHora(ticket3.getDataEncerramento())%>"/>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label class="form-control-label">Sazonalidade</label>
                    <input type="text" class="form-control" disabled="disabled" autocomplete="off" value="<%= ticket3.getSazonalidade()%>"/>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group row col-md-6">
                    <div class="col-md-12">
                        <label class="form-control-label">Procedimento de Resolução</label>
                        <textarea rows="10" class="form-control" disabled="disabled" autocomplete="off"/><%= ticket3.getProcedimentoResolucao()%></textarea>
                    </div>
                </div>
            </div>
            <%}%>
        <%}%>
    </div>
</div>