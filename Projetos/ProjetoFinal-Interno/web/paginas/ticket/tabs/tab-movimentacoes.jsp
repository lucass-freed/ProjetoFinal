<%-- 
    Document   : tab-movimentacoes
    Created on : 30/08/2018, 09:23:02
    Author     : Michelle de Jesus Rog�rio
--%>
<!-- TODO:
    - Button movimentar
                ATEN��O: SE O CHAMADO ESTIVER CONCLU�DO, BOT�ES MOV N�O SER�O HABILITADOS
                - Alterar Status (if "conclu�do" ticket � finalizado)
                - Encaminhar (abre um "FROM/TO" onde o FROM j� vem autopreenchido com o colaborador logado e o TO � search)
                - Alterar Prioridade
                - + List 3 �ltimas movimenta��es
    OBS.: Todas as movimenta��es ser�o enviadas para registro no log atrav�s do
            TicketLogBean log =  new TicketDAO().atualizarLog();
-->

<div class="tab-pane" id="tab-movimentacoes" role="#tab-movimentacoes">

    <div>

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

                        <div class="btn-group" role="group">
                            <button type="button" class="btn btn-info" data-target=".example-modal-sm" data-toggle="modal">
                                <i class="icon wb-time" aria-hidden="true"></i>
                                <br>
                                <span class="text-uppercase hidden-sm-down">Alterar Criticidade</span>
                            </button>
                            <!-- Modal -->
                            <div class="modal fade example-modal-sm" aria-hidden="true" aria-labelledby="exampleOptionalSmall"
                                 role="dialog" tabindex="-1">
                                <div class="modal-dialog modal-simple modal-sm">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">�</span>
                                            </button>
                                            <h4 class="modal-title" id="exampleOptionalSmall">Alterar Criticidade</h4>
                                        </div>
                                        <div class="modal-body">
                                            Op��es de Criticidade
                                        </div>
                                    </div>
                                </div>
                                <!-- End Modal -->
                            </div>
                        </div>
                        <div class="btn-group" role="group">
                            <button type="button" class="btn btn-success">
                                <i class="icon wb-user" aria-hidden="true"></i>
                                <br>
                                <span class="text-uppercase hidden-sm-down">Encaminhar</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="panel box-shadow">
        <div class="panel-heading">
            <h3 class="panel-title">�ltimas Movimenta��es</h3>
        </div>
        <div class="panel-body">
            <table class="table table-striped table-hover table-bordered text-shadow" style="width:100%" id="ultimas-movimentacoes">
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

