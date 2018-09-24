package br.com.projetofinal.web.empresa;

import br.com.projetofinal.web.colaborador.*;
import br.com.projetofinal.dao.ColaboradorDAO;
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
@WebServlet("/empresa/editar")
public class EmpresaEditar extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }
        resp.setContentType("text/html;charset=UTF-8");
        req.setAttribute("title", "Editar Empresa");
        req.setAttribute("tipo", req.getParameter("tipo") == null ? "" : req.getParameter("tipo"));
        req.getRequestDispatcher("/paginas/empresas/editar/index.jsp").include(req, resp);
    }
    
}
