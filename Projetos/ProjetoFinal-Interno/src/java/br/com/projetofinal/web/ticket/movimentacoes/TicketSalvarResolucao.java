package br.com.projetofinal.web.ticket.movimentacoes;

import br.com.projetofinal.dao.TicketDAO;
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
@WebServlet("/interno/ticket/salvarResolucao")
public class TicketSalvarResolucao extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }
        resp.setContentType("text/html;charset=UTF-8");
        int id = Integer.parseInt(req.getParameter("id"));
        String resolucao = req.getParameter("resolucao");
        boolean alterou = new TicketDAO().salvarResolucao(id, resolucao);
        resp.sendRedirect("/interno/ticket?id=" + id);
    }
}
