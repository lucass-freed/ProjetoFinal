<%-- 
    Document   : tabs
    Created on : 30/08/2018, 09:15:02
    Author     : Michelle de Jesus Rogério
--%>

<div class="nav-tabs-horizontal" data-plugin="tabs">
    <ul class="nav nav-tabs" role="tablist">
        <li class="nav-item" role="presentation">
            <a class="nav-link active" data-toggle="tab" href="#tab-descricao"
               aria-controls="tab-descricao" role="tab">Descrição</a>
        </li>
        <li class="nav-item" role="presentation">
            <a class="nav-link" data-toggle="tab" href="#exampleTabsTwo"
               aria-controls="exampleTabsTwo" role="tab">Informações</a>
        </li>
        <li class="nav-item" role="presentation">
            <a class="nav-link" data-toggle="tab" href="#exampleTabsThree"
               aria-controls="exampleTabsThree" role="tab">Movimentação</a>
        </li>
        <li class="nav-item" role="presentation">
            <a class="nav-link" data-toggle="tab" href="#exampleTabsFour"
               aria-controls="exampleTabsFour" role="tab">Conclusão</a>
        </li>
    </ul>
    <div class="tab-content pt-20">
        <%@include file="tab-descricao.jsp" %>
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