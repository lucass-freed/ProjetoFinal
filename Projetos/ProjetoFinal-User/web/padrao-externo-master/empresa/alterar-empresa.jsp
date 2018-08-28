<%-- 
    Document   : cadastro
    Created on : 27/08/2018, 10:12:34
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/padrao-externo-master/master.jsp" %>


<!-- Page -->
    
        <div class="panel">
          <div class="panel-body container-fluid">
            <div class="row row-lg">
              <div class="col-md-6">
                <div class="example-wrap">
                  <h4 class="example-title">Cadastro de Empresa</h4>
                  <div class="example">
                    <form method="post" action="#" autocomplete="off">
                      <div class="row">
	                      <div class="form-group col-md-6">
	                          <input type="text" class="form-control" id="inputBasicCNPJ" name="inputCNPJ" autocomplete="off" placeholder="CNPJ" />
	                      </div>
                      </div>
                      </div>
                      <div class="form-group col-md-6">                  
                        <input type="text" class="form-control" id="inputBasicRazaoSocial" name="inputRazaoSocial"
                          autocomplete="off" placeholder="Razão Social" />
                      </div>
                      <div class="form-group col-md-6">                  
                        <input type="text" class="form-control" id="inputBasicNomeFantasia" name="inputNomeFantasia" autocomplete="off" placeholder="Nome Fantasia" />
                      </div>
                      <div class="form-group col-md-6">                  
                        <input type="text" class="form-control" id="inputBasicIE" name="inputIE" autocomplete="off" placeholder="Inscrição Estadual" />
                      </div>
                      <div class="form-group col-md-6"> 
                        <input type="email" class="form-control" id="inputBasicEmail" name="inputEmail"
                          autocomplete="off" placeholder="E-mail" />
                      </div>
                      <div class="form-group col-md-6"> 
                        <input type="text" class="form-control" id="inputPhone" placeholder="Telefone  Ex:(00)0000-0000" />
                      </div>
                      <div class="form-group col-md-6">                   
                        <input type="text" class="form-control" id="inputBasicLogradouro" name="inputLogradouro" autocomplete="off" placeholder="Logradouro" />
                      </div>
                      <div class="form-group col-md-6">                  
                        <input type="text" class="form-control" id="inputBasicNumero" name="inputNumero" autocomplete="off" placeholder="Número" />
                      </div>
                      <div class="form-group col-md-6">                 
                        <input type="text" class="form-control" id="inputBasicComplemento" name="inputComplemento" autocomplete="off" placeholder="Complemento" />
                      </div>
                      <div class="form-group col-md-6">                   
                        <input type="text" class="form-control" id="inputBasicBairro" name="inputBairro" autocomplete="off" placeholder="Bairro" />
                      </div> 
                      <div class="form-group col-md-6">
                        <input type="text" class="form-control" id="inputBasicCEP" name="inputCEP" autocomplete="off" placeholder="CEP  Ex:00000-000" />
                      </div>
                      <div class="form-group col-md-6">                   
                        <input type="text" class="form-control" id="inputBasicCidade" name="inputCidade"autocomplete="off" placeholder="Cidade" />
                      </div>                               
                      <div class="form-group col-md-6"> 
                        <select class="form-control">
                          <option disabled="disabled" selected="selected">Selecione um Estado</option>
                          <option value="ac">AC</option>
                          <option value="al">AL</option>
                          <option value="ap">AP</option>
                          <option value="am">AM</option>
                          <option value="ba">BA</option>
                          <option value="ce">CE</option>
                          <option value="df">DF</option>
                          <option value="es">ES</option>
                          <option value="go">GO</option>
                          <option value="ma">MA</option>
                          <option value="mg">MG</option>
                          <option value="ms">MS</option>
                          <option value="mt">MT</option>
                          <option value="pa">PA</option>
                          <option value="pb">PB</option>
                          <option value="pe">PE</option>
                          <option value="pi">PI</option>
                          <option value="pr">PR</option>
                          <option value="rj">RJ</option>
                          <option value="rn">RN</option>
                          <option value="ro">RO</option>
                          <option value="rr">RR</option>
                          <option value="rs">RS</option>
                          <option value="sc">SC</option>
                          <option value="se">SE</option>
                          <option value="sp">SP</option>
                          <option value="to">TO</option>
                        </select>
                      </div>
                      <div class="form-group col-md-6">                  
                        <input type="text" class="form-control" id="inputBasicDataAtivacao" name="inputDataAtivacao" autocomplete="off" placeholder="Data de Ativação  Ex: 00/00/0000" />
                      </div>
                      <div class="form-group col-md-6">                   
                        <input type="text" class="form-control" id="inputBasicDataExpiracao" name="inputDataExpiracao" autocomplete="off" placeholder="Data de Expiração  Ex: 00/00/0000" />
                      </div>
                     <div class="row">
                        <div class="col-md-12">
                          <button type="button" class="btn btn-outline-danger col-md-4 float-left">Cancelar</button>
                          <button type="button" class="btn btn-outline-primary col-md-4 float-right">Alterar</button>
                        
                      </div>
                     </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
    
    <!-- End Page -->


       <script src="../../../global/vendor/babel-external-helpers/babel-external-helpers.js"></script>
    <script src="../../../global/vendor/jquery/jquery.js"></script>

    <script src="../../../global/js/Plugin.js"></script>
    <script src="../../../global/vendor/breakpoints/breakpoints.js"></script>

    <script src="../../../global/vendor/formatter/jquery.formatter.js"></script>

    <script src="../../../global/js/Plugin/formatter.js"></script>

    <script>
      Breakpoints();
    </script>
    
    <script>
      (function(document, window, $){
        'use strict';
    
        var Site = window.Site;
        $(document).ready(function(){
          Site.run();
        });
      })(document, window, jQuery);

      $('#inputPhone').formatter({
  'pattern': '({{99}}){{9999}}-{{9999}}',
  'persistent': false
});  
      $('#inputBasicCEP').formatter({
  'pattern': '{{99999}}-{{999}}',
  'persistent': false
});   
      $('#inputBasicDataAtivacao').formatter({
  'pattern': '{{99}}/{{99}}/{{9999}}',
  'persistent': false
});  
      $('#inputBasicDataExpiracao').formatter({
  'pattern': '{{99}}/{{99}}/{{9999}}',
  'persistent': false
}); 
    </script>

<%@include file="/padrao-externo-master/rodape.jsp" %>