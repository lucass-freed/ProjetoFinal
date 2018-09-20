<%-- 
    Document   : tab-movimentacoes
    Created on : 30/08/2018, 09:23:02
    Author     : Michelle de Jesus Rogério
--%>
<%@page import="br.com.projetofinal.enumTypes.CriticidadeTypes"%>
<%@page import="br.com.projetofinal.bean.TicketBean"%>
<% TicketBean ticket4 = (TicketBean) request.getAttribute("ticket4");%>
<!-- TODO:
                INSERIR MENSAGEM DE SUCESSO QUANDO SALVAR
                - Encaminhar (abre um "FROM/TO" onde o FROM já vem autopreenchido com o colaborador logado e o TO é search)
    OBS.: Todas as movimentações serão enviadas para registro no log através do
            TicketLogBean log =  new TicketDAO().atualizarLog();
-->

<div class="tab-pane" id="tab-movimentacoes" role="#tab-movimentacoes">
    <% if (ticket4.getDataEncerramento() == null) {%>
    <div class="col-xl-12 col-xl-12">
        <div class="example-wrap">
            <div class="example example-buttons">
                <div class="btn-group btn-group-center-align">
                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-primary"data-target="#exampleNifty3dRotateInLeft"
                                data-toggle="modal">
                            <i class="icon wb-star" aria-hidden="true"></i>
                            <br>
                            <span class="text-uppercase hidden-sm-down">Alterar Status</span>
                        </button>
                    </div>
                    <!-- Modal -->
                    <div class="modal fade modal-rotate-from-left" id="exampleNifty3dRotateInLeft"
                         aria-hidden="true" aria-labelledby="exampleModalTitle" role="dialog"
                         tabindex="-1">
                        <div class="modal-dialog modal-simple">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                    <h4 class="modal-title">Alterar Status</h4>
                                </div>
                                <div class="modal-body col-md-6">
                                    <!-- Opções Alteração de Status -->
                                    <div class="example-wrap">
                                        <select class="form-control">
                                            <option></option>
                                            <option>Em Andamento</option>
                                            <option>Em Desenvolvimento</option>
                                            <option>Aguardando Informação Externa</option>
                                            <option>Aguardando Cliente Validar</option>
                                            <option>Concluir (mesmo método da aba conclusão)</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                    <button type="button" class="btn btn-primary">Salvar</button>
                                </div>

                                <!-- End Opções Alteração de Status -->
                            </div>
                        </div>
                    </div>
                    <!-- End Modal -->

                    <% if (ticket4.getCriticidade() == CriticidadeTypes.ALTISSIMA) {%>
                    <% } else {%>
                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-info" data-target="#alterarCriticidade" data-toggle="modal">
                            <i class="icon wb-time" aria-hidden="true"></i>
                            <br>
                            <span class="text-uppercase hidden-sm-down">Alterar Prioridade</span>
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="alterarCriticidade" aria-hidden="true" aria-labelledby="alterarCriticidade" 
                             role="dialog" tabindex="-1">
                            <div class="modal-dialog modal-simple modal-top">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">×</span>
                                        </button>
                                        <h4 class="modal-title" id="exampleOptionalSmall">Alterar Prioridade</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="modal-body col-md-6">

                                            <!-- Opções Alteração de Criticidade -->
                                            <div class="example-wrap">
                                                <% if (ticket4.getCriticidade() == CriticidadeTypes.BAIXA) {%>
                                                <select class="form-control">
                                                    <option></option>
                                                    <option>Média</option>
                                                    <option>Alta</option>
                                                    <option>Altíssima</option>
                                                </select>
                                                <% } else if (ticket4.getCriticidade() == CriticidadeTypes.MEDIA) {%>
                                                <select class="form-control">
                                                    <option></option>
                                                    <option>Alta</option>
                                                    <option>Altíssima</option>
                                                </select>
                                                <% } else {%>
                                                <select class="form-control">
                                                    <option></option>
                                                    <option>Altíssima</option>
                                                </select>
                                            </div>
                                            <%}%>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                                <button type="button" class="btn btn-primary">Salvar</button>
                                            </div>
                                            <!-- End Alteração de Criticidade -->
                                        </div>
                                    </div>
                                </div>
                                <!-- End Modal -->
                            </div>
                        </div>
                    </div>
                </div>
                <%}%>


                <div class="btn-group" role="group">


                    <button type="button" class="btn btn-success" data-target="#exampleNiftySlideFromRight"
                            data-toggle="modal">
                        <i class="icon wb-star" aria-hidden="true"></i>
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
                                <p>De... Para</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Modal -->
            </div>
        </div>
    </div>
</div>
<%}%>

<div class="panel box-shadow">
    <div class="panel-heading">
        <h3 class="panel-title">Últimas Movimentações</h3>
    </div>
    <div class="panel-body">
        <table class="table table-striped table-hover table-bordered text-shadow" style="width:100%" id="ultimas-movimentacoes">
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

