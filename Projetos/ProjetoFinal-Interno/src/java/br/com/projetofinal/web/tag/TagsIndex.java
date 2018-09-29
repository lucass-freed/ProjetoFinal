package br.com.projetofinal.web.tag;

import br.com.projetofinal.bean.TagBean;
import br.com.projetofinal.dao.TagsDAO;
import java.io.IOException;
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
@WebServlet("/interno/tags")
public class TagsIndex extends HttpServlet {

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
        List<TagBean> tags = new TagsDAO().obterTodos();
        req.setAttribute("tags", tags);
        
        resp.setContentType("text/html;charset=UTF-8");
        req.setAttribute("title", "Tags");
        req.setAttribute("tipo", req.getParameter("tipo") == null ? "" : req.getParameter("tipo"));
        req.getRequestDispatcher("/paginas/tags/index.jsp").include(req, resp);
    }
}
