package br.com.projetofinal.web.usuario;

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
@WebServlet("/interno/perfil")
public class UsuarioPerfil extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }

        resp.setContentType("text/html;charset=UTF-8");
        req.setAttribute("title", "Perfil");
        req.setAttribute("tipo", req.getParameter("tipo") == null ? "" : req.getParameter("tipo"));
        req.getRequestDispatcher("/paginas/perfil/index.jsp").include(req, resp);
    }
}
