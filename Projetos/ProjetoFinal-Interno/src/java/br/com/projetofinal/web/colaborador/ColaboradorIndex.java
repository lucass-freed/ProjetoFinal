package br.com.projetofinal.web.colaborador;

import br.com.projetofinal.bean.ColaboradorBean;
import br.com.projetofinal.dao.ColaboradorDAO;
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
@WebServlet("/interno/colaboradores")
public class ColaboradorIndex extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }
        List<ColaboradorBean> colaboradores = new ColaboradorDAO().obterColaboradores();
        req.setAttribute("empresas", colaboradores);
        
        resp.setContentType("text/html;charset=UTF-8");
        req.setAttribute("title", "Colaboradores");
        req.setAttribute("tipo", req.getParameter("tipo") == null ? "" : req.getParameter("tipo"));
        req.getRequestDispatcher("/paginas/colaboradores/index.jsp").include(req, resp);
    }
}
