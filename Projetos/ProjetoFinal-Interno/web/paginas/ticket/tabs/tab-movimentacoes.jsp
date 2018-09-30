<%-- 
    Document   : tab-movimentacoes
    Created on : 30/08/2018, 09:23:02
    Author     : Michelle de Jesus Rogério
--%>
<%@page import="br.com.projetofinal.bean.ColaboradorBean"%>
<%@page import="br.com.projetofinal.enumTypes.EnumTicketStatusType"%>
<%@page import="br.com.projetofinal.enumTypes.CriticidadeTypes"%>
<%@page import="br.com.projetofinal.bean.TicketBean"%>
<% TicketBean ticket4 = (TicketBean) request.getAttribute("ticket4");%>
<% ColaboradorBean colaborador = (ColaboradorBean) request.getSession().getAttribute("usuario");%>

<!-- TODO:
                INSERIR MENSAGEM DE SUCESSO QUANDO SALVAR
                - Encaminhar (abre um "FROM/TO" onde o FROM já vem autopreenchido com o colaborador logado e o TO é search)
    OBS.: Todas as movimentações serão enviadas para registro no log através do
            TicketLogBean log =  new TicketDAO().atualizarLog();
-->

<div class="tab-pane" id="tab-movimentacoes" role="#tab-movimentacoes">
    <div class="col-xl-12 col-xl-12">
        <div class="example-wrap">
            <% if (ticket4.getDataEncerramento() == null) {%>
            <div class="example example-buttons">
                <div class="btn-group btn-group-center-align">

                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-info" data-target="#alterarCriticidade" data-toggle="modal">
                            <i class="icon wb-star" aria-hidden="true"></i>
                            <br>
                            <span class="text-uppercase hidden-sm-down">Alterar Prioridade</span>
                        </button>
                    </div>

                    <!-- Modal -->
                    <div class="modal fade" id="alterarCriticidade" aria-hidden="true" aria-labelledby="alterarCriticidade" role="dialog" tabindex="-1">
                        <div class="modal-dialog modal-simple">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                    <h4 class="modal-title" id="exampleOptionalSmall">Alterar Prioridade</h4>
                                </div>
                                <form action="/interno/ticket/alterarCriticidade" method="post" id="formAlterarCriticidade" autocomplete="off">
                                    <input type="hidden" id="Basicid" name="id" value="<%= ticket4.getId()%>">
                                    <input type="hidden" id="BasicidColaborador" name="idColaborador" value="<%= colaborador.getId()%>">
                                    <div class="modal-body col-md-6">
                                        <!-- Opções Alteração de Criticidade -->
                                        <div class="example-wrap">
                                            <select class="form-control" name="criticidade">
                                                <option value="" disabled selected>Selecionar Criticidade</option>
                                                <% if (ticket4.getCriticidade() == CriticidadeTypes.BAIXA) {%>
                                                <option value="MEDIA">Média</option>
                                                <option value="ALTA">Alta</option>
                                                <option value="ALTISSIMA">Altíssima</option>
                                                <% } else if (ticket4.getCriticidade() == CriticidadeTypes.MEDIA) {%>
                                                <option value="BAIXA">Baixa</option>
                                                <option value="ALTA">Alta</option>
                                                <option value="ALTISSIMA">Altíssima</option>
                                                <% } else if (ticket4.getCriticidade() == CriticidadeTypes.ALTA) {%>
                                                <option value="BAIXA">Baixa</option>
                                                <option value="ALTA">Alta</option>
                                                <option value="ALTISSIMA">Altíssima</option>
                                                <% } else {%>
                                                <option value="BAIXA">Baixa</option>
                                                <option value="MEDIA">Média</option>
                                                <option value="ALTA">Alta</option>
                                                <%}%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                        <button type="submit" class="btn btn-primary">Salvar</button>
                                    </div>
                                </form>
                                <!-- End Alteração de Criticidade -->
                            </div>
                            <!-- End Modal -->
                        </div>
                    </div>


                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-success" data-target="#exampleNiftySlideFromRight"
                                data-toggle="modal">
                            <i class="icon wb-time" aria-hidden="true"></i>
                            <br>
                            <span class="text-uppercase hidden-sm-down">Encaminhar</span>
                        </button>
                    </div>
                    <!-- Modal -->
                    <div class="modal fade modal-slide-in-right" id="exampleNiftySlideFromRight" aria-hidden="true"
                         aria-labelledby="exampleModalTitle" role="dialog" tabindex="-1">
                        <div class="modal-dialog modal-simple">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                    <h4 class="modal-title">Movimentar Ticket</h4>
                                </div>
                                <div class="modal-body">
                                    <p>De</p>
                                    <select class="form-control" id="origem-movto" name="origem-movto">
                                        <option value="" disabled selected><%=colaborador.getNome()%></option>
                                    </select>
                                    </br>
                                    <p>Para</p>
                                    <div class="radio-custom radio-primary">
                                        <input type="radio" id="inputRadiosFuncao" name="inputDestinos" onclick="javascrit:showSelectFuncao();">
                                        <label class="col-md-2" for="inputRadiosFuncao">Função</label>
                                        <input type="radio" id="inputRadiosColaborador" name="inputDestinos" onclick="javascrit:showSelectColaborador();">
                                        <label for="inputRadiosColaborador">Colaborador</label>
                                    </div>

                                    <div id="destino-funcao" style="visibility: hidden">
                                        <select class="form-control" name="destino-movto">
                                            <option value="" disabled selected>Selecionar Destino</option>
                                            <option>Baixa</option>
                                            <option>Média</option>
                                            <option>Média</option>
                                            <option>Média</option>
                                            <option>Média</option>
                                            <option>Alta</option>
                                            <option>Altíssima</option>
                                        </select>
                                    </div>
                                    <div id="destino-colaborador" style="visibility: hidden">
                                        <select class="form-control" name="destino-movto">
                                            <option value="" disabled selected>Selecionar Destino</option>
                                            <option>Baixa</option>
                                            <option>Média</option>
                                            <option>Alta</option>
                                            <option>Altíssima</option>
                                            <option>Altíssima</option>
                                            <option>Altíssima</option>
                                            <option>Altíssima</option>
                                            <option>Altíssima</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                    <button type="button" class="btn btn-primary">Salvar</button>
                                </div>
                            </div>
                            <!-- End Modal -->
                        </div>
                    </div>
                    <!-- End Modal -->
                </div>
            </div>
            <%}%>

            <div class="panel box-shadow">
                <div class="panel-heading">
                    <h3 class="panel-title">Últimas Movimentações</h3>
                </div>
                <div class="panel-body">
                    <table class="table table-striped table-hover compact table-bordered text-shadow" style="width:100%" id="ultimas-movimentacoes">
                        <thead class="thead-light">
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Movimentado Por</th>
                                <th scope="col">Data da Movimentação</th>
                                <th scope="col">Observação</th>
                            </tr>
                        </thead>
                        <tbody>



                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

