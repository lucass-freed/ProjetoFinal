package br.com.projetofinal.web.ticket.dataTable;

import br.com.projetofinal.bean.UsuarioBean;
import br.com.projetofinal.dao.TicketDAO;
import com.google.gson.Gson;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
@WebServlet(urlPatterns = {"/home/tickets/obtertodosparadatatable"})
public class TicketsUsuarioObterTodosParaDataTable extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HashMap<String, Object> resultado = new HashMap<>();
        UsuarioBean usuario = (UsuarioBean) request.getSession().getAttribute("usuario");
        List<HashMap<String, Object>> registros = new TicketDAO().obterTodosParaDataTableUsuario(usuario.getId());
        resultado.put("data", registros);
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().print(new Gson().toJson(resultado));
    }
}
