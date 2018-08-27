<%-- 
    Document   : index
    Created on : 26/08/2018, 18:06:27
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/padrao-externo-master/master.jsp" %>

<!-- Page -->
    
      <div class="page-content vertical-align-middle animation-slide-top animation-duration-1">
        <div class="panel">
          <div class="panel-body container-fluid">
            <div class="row row-lg">
              <div class="col-md-12">
                <div class="example-wrap">
                  <div class="brand">
                    <img class="brand-img" src="../../assets/images/logo-blue@2x.png">
                    <h3 class="brand-text font-size-18">FlowDesk</h3>
                  </div>
                  <h2 class="brand-text font-size-20">Cadastro de Empresa</h2>
                  <div class="example">
                    <form method="post" action="#" autocomplete="off">
                      <div class="form-group form-material floating" data-plugin="formMaterial">
                          <input type="text" class="form-control" id="inputBasicCNPJ" name="inputCNPJ" autocomplete="off" />
                            <label class="floating-label">CNPJ</label>
                      </div>
                      </div>
                      <div class="form-group form-material floating" data-plugin="formMaterial">                  
                        <input type="text" class="form-control" id="inputBasicRazaoSocial" name="inputRazaoSocial"
                          autocomplete="off" />
                          <label class="floating-label">Razão Social</label>
                      </div>
                      <div class="form-group form-material floating" data-plugin="formMaterial">                  
                        <input type="text" class="form-control" id="inputBasicNomeFantasia" name="inputNomeFantasia" autocomplete="off" />
                        <label class="floating-label">Nome Fantasia</label>
                      </div>
                      <div class="form-group form-material floating" data-plugin="formMaterial">                  
                        <input type="text" class="form-control" id="inputBasicIE" name="inputIE" autocomplete="off" />
                        <label class="floating-label">Inscrição Estadual</label>
                      </div>
                      <div class="form-group form-material floating" data-plugin="formMaterial"> 
                        <input type="email" class="form-control" id="inputBasicEmail" name="inputEmail"
                          autocomplete="off" />
                          <label class="floating-label">E-mail</label>
                      </div>
                      <div class="form-group form-material floating" data-plugin="formMaterial"> 
                        <input type="text" class="form-control" id="inputPhone"/>
                        <label class="floating-label">Telefone  Ex:(00)0000-0000</label>             
                      </div>
                      <div class="form-group form-material floating" data-plugin="formMaterial">                   
                        <input type="text" class="form-control" id="inputBasicLogradouro" name="inputLogradouro" autocomplete="off" />
                        <label class="floating-label">Logradouro</label>  
                      </div>
                      <div class="form-group form-material floating" data-plugin="formMaterial">                  
                        <input type="text" class="form-control" id="inputBasicNumero" name="inputNumero" autocomplete="off" />
                        <label class="floating-label">Número</label> 
                      </div>
                      <div class="form-group form-material floating" data-plugin="formMaterial">                 
                        <input type="text" class="form-control" id="inputBasicComplemento" name="inputComplemento" autocomplete="off" />
                        <label class="floating-label">Complemento</label> 
                      </div>
                      <div class="form-group form-material floating" data-plugin="formMaterial">                   
                        <input type="text" class="form-control" id="inputBasicBairro" name="inputBairro" autocomplete="off" />
                        <label class="floating-label">Bairro</label>
                      </div> 
                      <div class="form-group form-material floating" data-plugin="formMaterial">
                        <input type="text" class="form-control" id="inputBasicCEP" name="inputCEP" autocomplete="off" />
                        <label class="floating-label">CEP</label>
                      </div>
                      <div class="form-group form-material floating" data-plugin="formMaterial">                   
                        <input type="text" class="form-control" id="inputBasicCidade" name="inputCidade"autocomplete="off" />
                        <label class="floating-label">Cidade</label>
                      </div>                               
                      <div class="form-group form-material floating" data-plugin="formMaterial"> 
                        <select class="form-control">
                          <option disabled="disabled" selected="selected"></option>
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
                        <label class="floating-label">Selecione um Estado</label>
                      </div>
                      <div class="form-group form-material floating" data-plugin="formMaterial">                  
                        <input type="text" class="form-control" id="inputBasicDataAtivacao" name="inputDataAtivacao" autocomplete="off"/>
                        <label class="floating-label">Data de Ativação  Ex: dd/mm/aaaa</label>
                      </div>
                      <div class="form-group form-material floating" data-plugin="formMaterial">                   
                        <input type="text" class="form-control" id="inputBasicDataExpiracao" name="inputDataExpiracao" autocomplete="off"/>
                        <label class="floating-label">Data de Expiração  Ex: dd/mm/aaaa</label>
                      </div>
                     <div class="row">
                        <div class="col-md-12">
                          <button type="button" class="btn btn-outline-danger col-md-4 float-left">Cancelar</button>
                          <button type="button" class="btn btn-outline-primary col-md-4 float-right">Salvar</button>
                        
                      </div>
                     </div>
                    </form>
                  </div>
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
        
<%@include file="rodape.jsp" %>
