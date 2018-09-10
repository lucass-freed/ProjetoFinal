package br.com.projetofinal.web.master;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Thiago
 */
@WebServlet("/home-externo-master")
public class HomeExternoMaster extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
        }
        
        req.setAttribute("title", "Página inicial");
        
        resp.setContentType("text/html;charset=UTF-8");
        req.getRequestDispatcher("/home/home-externo-master.jsp").include(req, resp);
    }
    
    
    
}
