<%-- 
    Document   : tab-movimentacoes
    Created on : 30/08/2018, 09:23:02
    Author     : Michelle de Jesus Rog�rio
--%>
<%@page import="br.com.projetofinal.bean.FuncaoBean"%>
<%@page import="br.com.projetofinal.dao.FuncaoDAO"%>
<%@page import="br.com.projetofinal.dao.ColaboradorDAO"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projetofinal.bean.ColaboradorBean"%>
<%@page import="br.com.projetofinal.enumTypes.EnumTicketStatusType"%>
<%@page import="br.com.projetofinal.enumTypes.CriticidadeTypes"%>
<%@page import="br.com.projetofinal.bean.TicketBean"%>
<% TicketBean ticket4 = (TicketBean) request.getAttribute("ticket4");%>
<% ColaboradorBean colaborador = (ColaboradorBean) request.getSession().getAttribute("usuario");%>

<!-- TODO:
                INSERIR MENSAGEM DE SUCESSO QUANDO SALVAR
                - Encaminhar (abre um "FROM/TO" onde o FROM j� vem autopreenchido com o colaborador logado e o TO � search)
    OBS.: Todas as movimenta��es ser�o enviadas para registro no log atrav�s do
            TicketLogBean log =  new TicketDAO().atualizarLog();
-->

<div class="tab-pane" id="tab-movimentacoes" role="#tab-movimentacoes">
    <div class="col-xl-12 col-xl-12">
        <div class="example-wrap">
            <% boolean is = false;%>
            <% if(ticket4.getIdColaborador() > 0) { %>
                <% if (ticket4.getIdColaborador() == colaborador.getId()) { %>
                    <% is = true;%>
                <%}%>
            <%} else if (ticket4.getIdFuncaoMovimentacao() > 0) { %>
                <% if (ticket4.getIdFuncaoMovimentacao() == colaborador.getIdFuncao()) { %>
                    <% is = true;%>
                <%}%>
            <%} else {%>
                <% is = true;%>
            <%}%>
            <% if (ticket4.getDataEncerramento() == null && is) {%>
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
                    <div class="modal fade modal-primary" id="alterarCriticidade" aria-hidden="true" aria-labelledby="alterarCriticidade" role="dialog" tabindex="-1">
                        <div class="modal-dialog modal-simple">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">�</span>
                                    </button>
                                    <h4 class="modal-title" id="exampleOptionalSmall">Alterar Prioridade</h4>
                                </div>
                                <form action="javascript:alterarCriticidade(<%= ticket4.getId()%>);" id="formAlterarCriticidade" autocomplete="off">
                                    <input type="hidden" id="Basicid" name="id" value="<%= ticket4.getId()%>">
                                    <input type="hidden" id="BasicidColaborador" name="idColaborador" value="<%= colaborador.getId()%>">
                                    <div class="modal-body col-md-6">
                                        <!-- Op��es Altera��o de Criticidade -->
                                        <div class="example-wrap">
                                            <select class="form-control" id="BasicCriticidade" name="criticidade">
                                                <option value="" disabled selected>Selecionar Criticidade</option>
                                                <% if (ticket4.getCriticidade() == CriticidadeTypes.BAIXA) {%>
                                                <option value="MEDIA">M�dia</option>
                                                <option value="ALTA">Alta</option>
                                                <option value="ALTISSIMA">Alt�ssima</option>
                                                <% } else if (ticket4.getCriticidade() == CriticidadeTypes.MEDIA) {%>
                                                <option value="BAIXA">Baixa</option>
                                                <option value="ALTA">Alta</option>
                                                <option value="ALTISSIMA">Alt�ssima</option>
                                                <% } else if (ticket4.getCriticidade() == CriticidadeTypes.ALTA) {%>
                                                <option value="BAIXA">Baixa</option>
                                                <option value="MEDIA">M�dia</option>
                                                <option value="ALTISSIMA">Alt�ssima</option>
                                                <% } else {%>
                                                <option value="BAIXA">Baixa</option>
                                                <option value="MEDIA">M�dia</option>
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
                                <!-- End Altera��o de Criticidade -->
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
                    <div class="modal fade modal-success modal-slide-in-right" id="exampleNiftySlideFromRight" aria-hidden="true"
                         aria-labelledby="exampleModalTitle" role="dialog" tabindex="-1">
                        <div class="modal-dialog modal-simple">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">�</span>
                                    </button>
                                    <h4 class="modal-title">Movimentar Ticket</h4>
                                </div>
                                <form action="/interno/ticket/encaminhar" method="post" id="formEncaminhar" autocomplete="off">
                                    <div class="modal-body">
                                        <input type="hidden" value="<%= ticket4.getId()%>" name="ticketID"/>
                                        </br>
                                        <p>De</p>
                                        <select disabled="disabled" class="form-control" id="origem-movto" name="origem-movto">
                                            <option value="" disabled selected><%=colaborador.getNome()%></option>
                                        </select>
                                        </br>
                                        <p>Para</p>
                                        <div class="radio-custom radio-primary">
                                            <input type="radio" value="funcao" id="inputRadiosFuncao" name="inputDestinos" onclick="javascrit:showSelectFuncao();">
                                            <label class="col-md-2" for="inputRadiosFuncao">Fun��o</label>
                                            <input type="radio" value="colaborador" id="inputRadiosColaborador" name="inputDestinos" onclick="javascrit:showSelectColaborador();">
                                            <label for="inputRadiosColaborador">Colaborador</label>
                                        </div>

                                        <div id="destino-funcao" style="visibility: hidden">
                                            <select class="form-control" name="destino-funcao">
                                                <option value="" disabled selected>Selecionar Fun��o</option>
                                                <% List<FuncaoBean> funcoes = new FuncaoDAO().obterFuncoesInternas();%>
                                                <% for (FuncaoBean funcao : funcoes) {%>
                                                <option value="<%= funcao.getId()%>"><%= funcao.getNome()%></option>
                                                <%}%>
                                            </select>
                                        </div>
                                        <div id="destino-colaborador" style="visibility: hidden">
                                            <select class="form-control" name="destino-colaborador">
                                                <option value="" disabled selected>Selecionar Colaborador</option>
                                                <% List<ColaboradorBean> colaboradores = new ColaboradorDAO().obterColaboradores();%>
                                                <% for (ColaboradorBean c : colaboradores) {%>
                                                <% if (!c.getNome().equals(colaborador.getNome())) {%>
                                                    <option value="<%= c.getId()%>"><%= c.getNome()%></option>
                                                    <%}%>
                                                <%}%>
                                            </select>
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
            <%}%>

            <div class="panel box-shadow">
                <div class="panel-heading">
                    <h3 class="panel-title">�ltimas Movimenta��es</h3>
                </div>
                <div class="panel-body">
                    <table class="table table-striped table-hover compact table-bordered text-shadow" style="width:100%" id="ultimas-movimentacoes">
                        <thead class="thead-light">
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Movimentado Por</th>
                                <th scope="col">Data da Movimenta��o</th>
                                <th scope="col">Observa��o</th>
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

