<%-- 
    Document   : index
    Created on : 26/08/2018, 18:11:07
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../master.jsp" %>

</div>
</div>
    <div class="example table-responsive">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>Cargo</th>
                    <th class="text-nowrap">Ação</th>
                </tr>				
            </thead>
            <tbody>
                <tr>
                    <td>Thiago Avancini</td>
                    <td>Gerente</td>
                    <td class="text-nowrap">
                        <button type="button" class="btn btn-outline btn-success">
                            <i class="icon wb-pencil" aria-hidden="true"></i> Editar
                        </button>
                        <button type="button" class="btn btn-outline btn-danger">
                            <i class="icon wb-close" aria-hidden="true"></i> Excluir
                        </button>
                        
                    </td>      
                </tr>
            </tbody>
        </table>
    </div>
<%@include file="../rodape.jsp" %>
