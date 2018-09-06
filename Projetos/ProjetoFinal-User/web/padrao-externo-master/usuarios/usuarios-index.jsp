<%-- 
    Document   : index
    Created on : 26/08/2018, 18:11:07
    Author     : User
--%>

<%@page import="java.util.List"%>
<%@page import="br.com.projetofinal.dao.UsuarioDAO"%>
<%@page import="br.com.projetofinal.bean.UsuarioBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/padrao-externo-master/master.jsp" %>
<% List<UsuarioBean> usuarios = (List<UsuarioBean>) request.getAttribute("usuarios"); %> 

</div>
</div>
        
    <div class="example table-responsive col-md-12">
        <table class="table table-bordered">
            <thead>
                <tr class="row">
                    <th class="col-md-5">Nome</th>
                    <th class="col-md-3">Cargo</th>
                    <th class="text-nowrap col-md-4">Ação</th>
                </tr>				
            </thead>
            
            
            <tbody>
                
                <% for(UsuarioBean usuario: usuarios){ %>
                
                    <tr class="row">
                        <td class="col-md-5"><%= usuario.getNome() %></td> 
                        <td class="col-md-3"><%= usuario.getFuncao() %></td>
                        <td class="text-nowrap col-md-4">
                            <button type="button" class="btn btn-outline btn-success col-md-6">
                                <i class="icon wb-pencil" aria-hidden="true"></i> Editar
                           </button>
                           <button type="button" class="btn btn-outline btn-danger col-md-6">
                               <i class="icon wb-close" aria-hidden="true"></i> Excluir
                           </button>

                        </td>
                   </tr>
                <% } %>
                
                
                
                
                
            </tbody>
        </table>
    </div>
<%@include file="../rodape.jsp" %>
