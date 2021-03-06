package br.com.projetofinal.web.tag;

import br.com.projetofinal.dao.TagsDAO;
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
@WebServlet("/interno/tags/obtertodosparadatatable")
public class TagsObterTodosParaDatatable extends HttpServlet {

    /**
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        HashMap<String, Object> resultado = new HashMap<>();
        List<HashMap<String, Object>> registros = new TagsDAO().obterTodosParaDataTable();
        resultado.put("data", registros);
        resp.getWriter().print(new Gson().toJson(resultado));
    }
}
