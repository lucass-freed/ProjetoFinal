<%-- 
    Document   : tab-descricao
    Created on : 30/08/2018, 09:15:41
    Author     : Michelle de Jesus Rogério
--%>

<div class="tab-pane active" id="tab-descricao" role="tabpanel">
    <!--Descrição do Ticket -->
    <h4><%= ticket.getTitulo()%></h4>
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