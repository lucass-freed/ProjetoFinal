package br.com.projetofinal.web.tag;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
@WebServlet("/interno/tag/editar")
public class TagsEditar extends HttpServlet {
    
    /**
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }
        resp.setContentType("text/html;charset=UTF-8");
        req.setAttribute("title", "Editar Tag");
        req.setAttribute("tipo", req.getParameter("tipo") == null ? "" : req.getParameter("tipo"));
        req.getRequestDispatcher("/paginas/tags/editar/index.jsp").include(req, resp);
    }
    
}