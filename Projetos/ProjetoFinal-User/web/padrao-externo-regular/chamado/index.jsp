<%-- 
    Document   : index
    Created on : 28/08/2018, 08:17:15
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/padrao-externo-regular/usuario/master.jsp"%>

<div class="panel">
<div class="panel-body container-fluid">
<div class="page-content">
 <div class="col-xl-4 col-lg-12">
                <!-- Example Styles -->
                <div class="text-center">
                    <img class="navbar-brand-logo" src="/tema/assets/images/logo.png" title="FlowDesk">
                    <h3 class="example-title text-center mb-45">
                            Abertura de Chamado 
                    </h3>

                      </p>
                      <div class="color-selector-wrap clearfix">
                  
                      <ul class="color-selector">
                         
                        <div> 
                          <button type="button" class="btn btn-primary" id="inputStylePrimary" name="colorChosen" data-target="#exampleModalPrimary"
                                  data-toggle="modal"/>Iniciar Perguntas</button>
                          <label for="inputStylePrimary"></label>
                        </div>
                        <!--<li class="btn btn-outline btn-success">
                          <input type="radio" id="inputStyleSuccess" name="colorChosen" data-target="#exampleModalSuccess"
                            data-toggle="modal" />
                          <label for="inputStyleSuccess"></label>
                        </li>
                        <li class="btn btn-outline btn-danger">
                          <input type="radio" id="inputStyleDanger" name="colorChosen" data-target="#exampleModalDanger"
                            data-toggle="modal" />
                          <label for="inputStyleDanger"></label>
                        </li> -->
                        
                      </ul>
                    </div>
                        
                  </div>
                  </div>
                   
                  </div>
    
                


                    <!-- Primeira Pergunta -->
                    <div class="modal fade modal-primary" id="exampleModalPrimary" aria-hidden="true"
                      aria-labelledby="exampleModalPrimary" role="dialog" tabindex="-1">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">×</span>
                            </button>
                            <h4 class="modal-title">Chamado</h4>
                          </div>
                          <div class="modal-body">
                              <p><h3>Pergunta 1</h3></p>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal"
                                    data-target="#exampleModalSuccess"  data-toggle="modal">Sim</button>
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Não</button>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- End Modal -->

                    <!-- Modal -->
                    <div class="modal fade modal-success" id="exampleModalSuccess" aria-hidden="true"
                      aria-labelledby="exampleModalSuccess" role="dialog" tabindex="-1">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">×</span>
                            </button>
                            <h4 class="modal-title">Chamado</h4>
                          </div>
                          <div class="modal-body">
                              <p><h3>Pergunta 2</h3></p>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal"
                                    data-target="#exampleModalDanger"  data-toggle="modal" >Sim</button>
                            
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Não</button>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- End Modal -->

                    <!-- Modal -->
                    <div class="modal fade modal-danger" id="exampleModalDanger" aria-hidden="true"
                      aria-labelledby="exampleModalDanger" role="dialog" tabindex="-1">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">×</span>
                            </button>
                            <h4 class="modal-title">Chamado</h4>
                          </div>
                          <div class="modal-body">
                              <p><h3>Pergunta 3</h3></p>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal"
                                  data-target="#exampleFormModal"  data-toggle="modal"   >Sim</button>
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Não</button>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- End Modal -->

                   
                    <!-- End Modal -->
                  </div>
                </div>
                <!-- End Example Styles -->
              </div>
              
 
                    <!-- Modal -->
                    <div class="modal fade" id="exampleFormModal" aria-hidden="false" aria-labelledby="exampleFormModalLabel"
                      role="dialog" tabindex="-1">
                      <div class="modal-dialog modal-simple">
                        <form class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">×</span>
                            </button>
                            <h4 class="modal-title" id="exampleFormModalLabel">Chamado</h4>
                          </div>
                          <div class="modal-body">
                            <div class="row">
                              <div class="col-xl-4 form-group">
                                <input type="text" class="form-control" name="firstName" placeholder="First Name">
                              </div>
                              <div class="col-xl-4 form-group">
                                <input type="email" class="form-control" name="lastName" placeholder="Last Name">
                              </div>
                              <div class="col-xl-4 form-group">
                                <input type="email" class="form-control" name="email" placeholder="Your Email">
                              </div>
                              <div class="col-xl-12 form-group">
                                <textarea class="form-control" rows="5" placeholder="Type your message"></textarea>
                              </div>
                              <div class="col-md-12 float-right">
                                <button class="btn btn-primary btn-outline" data-dismiss="modal" type="button">Add Comment</button>
                              </div>
                            </div>
                          </div>
                        </form>
                      </div>
                    </div>
                    <!-- End Modal -->
                  </div>
                </div>
                <!-- End Example Form Modal -->
              </div>


<%@include file="/padrao-externo-regular/usuario/rodape.jsp"%>
