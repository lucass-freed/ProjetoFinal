package br.com.projetofinal.web.ticket.pendentes;

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
@WebServlet("/externo/chamado/pendentes")
public class TicketsPendentes extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }
        req.setAttribute("title", "Chamados Pendentes");
        
        resp.setContentType("text/html;charset=UTF-8");
        req.getRequestDispatcher("/paginas/ticket/pendentes/index.jsp").include(req, resp);
    }

}
