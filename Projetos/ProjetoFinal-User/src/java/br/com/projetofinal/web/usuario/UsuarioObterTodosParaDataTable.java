package br.com.projetofinal.web.usuario;

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

@WebServlet(urlPatterns = {"/usuario/obtertodosparadatatable"})
public class UsuarioObterTodosParaDataTable extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HashMap<String, Object> resultado = new HashMap<>();
        List<HashMap<String, Object>> registros = new UsuarioDAO().obterTodosParaDataTable();
        resultado.put("data", registros);
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().print(new Gson().toJson(resultado));
    }
}
