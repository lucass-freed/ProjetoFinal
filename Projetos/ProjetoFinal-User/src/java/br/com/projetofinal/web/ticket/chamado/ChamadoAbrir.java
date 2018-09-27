package br.com.projetofinal.web.ticket.chamado;

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
 * @author Matheus Ruan Werner  
 */
@WebServlet("/externo/chamado")
public class ChamadoAbrir extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }
    
        List<TagBean> tags = new TagsDAO().listarTags();
        req.setAttribute("tags", tags);        

        req.setAttribute("title", "Abrir Chamado");
        resp.setContentType("text/html;charset=UTF-8");
        req.getRequestDispatcher("/paginas/ticket/chamado/abrir.jsp").include(req, resp);
    }

}
