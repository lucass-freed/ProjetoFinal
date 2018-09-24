package br.com.projetofinal.web.ticket;

import br.com.projetofinal.bean.TicketBean;
import br.com.projetofinal.dao.TicketDAO;
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
@WebServlet("/interno/tickets/pesquisar")
public class TicketPesquisar extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }

        String pesquisa = req.getParameter("search");
        List<TicketBean> tickets = new TicketDAO().obterResultado(pesquisa);

        req.setAttribute("tickets", tickets);
        req.setAttribute("title", "Pesquisar Tickets");
        
        resp.setContentType("text/html;charset=UTF-8");
        req.getRequestDispatcher("/paginas/ticket/pesquisar/index.jsp").include(req, resp);
    }

}
