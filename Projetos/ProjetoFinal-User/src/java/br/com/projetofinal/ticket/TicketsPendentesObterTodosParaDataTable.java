package br.com.projetofinal.ticket;

import br.com.projetofinal.bean.UsuarioBean;
import br.com.projetofinal.dao.TicketDAO;
import br.com.projetofinal.dao.UsuarioDAO;
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
@WebServlet(urlPatterns = {"/ticketsPendentes/obtertodosparadatatable"})
public class TicketsPendentesObterTodosParaDataTable extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HashMap<String, Object> resultado = new HashMap<>();
        List<HashMap<String, Object>> registros;
        registros = new TicketDAO().obterTodosPendentesParaDataTableUsuario(((UsuarioBean) request.getSession()).getId());
        resultado.put("data", registros);
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().print(new Gson().toJson(resultado));
    }
}
