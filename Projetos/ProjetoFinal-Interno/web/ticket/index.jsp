<%-- 
    Document   : index
    Created on : 27/08/2018, 08:29:23
    Author     : Michelle de Jesus Rogério
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% if(request.getAttribute("tipo").toString().equals("master")){ %>
<%@include file="../padrao-interno-master/dashboard.jsp" %>
<% } else { %>
<%@include file="../padrao-interno-regular/dashboard.jsp" %>
<% } %>

  <div class="page">
      <div class="page-content container-fluid">
        <!-- Panel Tabs -->
        <div class="panel">
          <div class="panel-heading">
            <h3 class="panel-title">Ticket 
            #Select com ID do Ticket;
            </h3>
          </div>
          <div class="panel-body container">
            <div class="row row-lg">
              <div class="col-xl-12">
                <!-- Tabs -->
                <div class="example-wrap">
                  <div class="nav-tabs-horizontal" data-plugin="tabs">
                    <ul class="nav nav-tabs" role="tablist">
                      <li class="nav-item" role="presentation"><a class="nav-link active" data-toggle="tab" href="#exampleTabsOne"
                          aria-controls="exampleTabsOne" role="tab">Descrição</a></li>
                      <li class="nav-item" role="presentation"><a class="nav-link" data-toggle="tab" href="#exampleTabsTwo"
                          aria-controls="exampleTabsTwo" role="tab">Informações</a></li>
                      <li class="nav-item" role="presentation"><a class="nav-link" data-toggle="tab" href="#exampleTabsThree"
                          aria-controls="exampleTabsThree" role="tab">Movimentação</a></li>
                      <li class="nav-item" role="presentation"><a class="nav-link" data-toggle="tab" href="#exampleTabsFour"
                          aria-controls="exampleTabsFour" role="tab">Conclusão</a></li>
                    </ul>
                    <div class="tab-content pt-20">
                      <div class="tab-pane active" id="exampleTabsOne" role="tabpanel">
                        <!--Descrição do Ticket -->
                        <h4>Título do Ticket</h4>
                        <div class="criticidade" style="text-align: right;">
                                <span class="badge badge-success">Baixa</span>  
                                <span class="badge badge-primary">Média</span>
                                <span class="badge badge-warning">Alta</span>
                                <span class="badge badge-danger">Altíssima</span>
                        </div>
                        <div class="page-content container-fluid">
                        <div class="row">
                        <div class="col-lg-8">
                        Exemplo de descrição do problema:::
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Neglegentur sabinum instructus
                        fingitur accusantibus harum neque consuetudine intereant
                        numeris, ipse tuemur suum apud mediocrem iactant. Libidinibus
                        amatoriis dicta albuci manum, statue.
                        </div>
                        </div>
                        </div>
                        <div class="example-wrap">
                  <div class="tags" style="text-align: right;">
                      <!--Acho que aqui vai um for para percorer as tags-->
                    <span class="badge badge-outline badge-dark">ExemploTag</span>
                    <span class="badge badge-outline badge-dark">Banco de Dados</span>
                    <span class="badge badge-outline badge-dark">Rede e Internet</span>
                    <span class="badge badge-outline badge-dark">Periféricos</span>
                  </div>
                        </div>
                        
                      </div>
                      <div class="tab-pane" id="exampleTabsTwo" role="tabpanel">                          
                        Negant parvos fructu nostram mutans supplicii ac dissentias, maius tibi licebit
                        ruinae philosophia. Salutatus repellere titillaret expetendum
                        ipsi. Cupiditates intellegam exercitumque privatio concederetur,
                        sempiternum, verbis malint dissensio nullas noctesque earumque.
                      </div>
                      <div class="tab-pane" id="exampleTabsThree" role="tabpanel">
                        Benivole horrent tantalo fuisset adamare fugiendam tractatos indicaverunt animis
                        chaere, brevi minuendas, ubi angoribus iisque deorsum audita
                        haec dedocendi utilitas. Panaetium erimus platonem varias
                        imperitos animum, iudiciorumque operis multa disputando.
                      </div>
                      <div class="tab-pane" id="exampleTabsFour" role="tabpanel">
                        Metus subtilius texit consilio fugiendam, opinionum levius amici inertissimae pecuniae
                        tribus ordiamur, alienus artes solitudo, minime praesidia
                        proficiscuntur reiciat detracta involuta veterum. Rutilius
                        quis honestatis hominum, quisquis percussit sibi explicari.
                      </div>
                    </div>
                  </div>
                </div>
                <!-- End Tabs -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- End Page -->
<% if(request.getAttribute("tipo").toString().equals("master")){ %>
<%@include file="../padrao-interno-master/rodape.jsp" %>
<% } else { %>
<%@include file="../padrao-interno-regular/rodape.jsp" %>
<% } %>