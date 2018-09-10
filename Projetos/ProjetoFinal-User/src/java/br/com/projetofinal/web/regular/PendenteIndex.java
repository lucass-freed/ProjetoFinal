package br.com.projetofinal.web.regular;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alunos
 */
@WebServlet("/pendente")
public class PendenteIndex extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
        }
        req.setAttribute("title", "Perfil");
        
        resp.setContentType("text/html;charset=UTF-8");
        req.getRequestDispatcher("/padrao-externo-regular/pendente/index.jsp").include(req, resp);
    }

}
