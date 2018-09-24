package br.com.projetofinal.web.usuario.dataTable;

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
@WebServlet(urlPatterns = {"/usuarios/obtertodosparadatatable"})
public class UsuarioObterTodosParaDataTable extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HashMap<String, Object> resultado = new HashMap<>();
        List<HashMap<String, Object>> registros = new UsuarioDAO().obterTodosParaDataTable();
        resultado.put("data", registros);
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().print(new Gson().toJson(resultado));
    }
}
