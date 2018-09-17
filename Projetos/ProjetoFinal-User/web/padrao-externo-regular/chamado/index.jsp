<%-- 
    Document   : index
    Created on : 28/08/2018, 08:17:15
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/padrao-externo-regular/usuario/master.jsp"%>

 <form class="comments-add mt-35" action="#" method="post">
                <h3 class="mb-35">Abrir Chamado</h3>
                <div class="form-group">
                  <input type="text" class="form-control" name="name" placeholder="Título">
                </div>
                <div class="form-group">
                  <input type="email" class="form-control" name="email" placeholder="Email">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="email" placeholder="Website">
                </div>
                <div class="form-group">
                  <textarea class="form-control" rows="5" placeholder="Comment here"></textarea>
                </div>
                <div class="form-group">
                  <button type="button" class="btn btn-primary">Enviar</button>
                </div>
              </form>
            </div>
          </div>
        </div>
        <!-- End Panel Comments Full -->
      </div>
    </div>

<%@include file="/padrao-externo-regular/usuario/rodape.jsp"%>
