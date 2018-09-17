<%-- 
    Document   : tab-movimentacoes
    Created on : 30/08/2018, 09:23:02
    Author     : Michelle de Jesus Rog�rio
--%>
<!-- TODO:
    - Button movimentar
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
                        <button type="button" class="btn btn-primary">
                          <i class="icon wb-star" aria-hidden="true"></i>
                          <br>
                          <span class="text-uppercase hidden-sm-down">Alterar Status</span>
                        </button>
                      </div>

                      <div class="btn-group" role="group">
                        <button type="button" class="btn btn-info">
                          <i class="icon wb-time" aria-hidden="true"></i>
                          <br>
                          <span class="text-uppercase hidden-sm-down">Alterar Criticidade</span>
                           <div class="btn-group" role="group">
                      <button type="button" class="btn btn-primary dropdown-toggle" id="exampleIconDropdown1"
                        data-toggle="dropdown" aria-expanded="false">
                        <i class="icon wb-grid-9" aria-hidden="true"></i>
                      </button>
                      <div class="dropdown-menu" aria-labelledby="exampleIconDropdown1" role="menu">
                        <a class="dropdown-item" href="javascript:void(0)" role="menuitem">Dropdown link</a>
                        <a class="dropdown-item" href="javascript:void(0)" role="menuitem">Dropdown link</a>
                      </div>
                   
                        </button>
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

