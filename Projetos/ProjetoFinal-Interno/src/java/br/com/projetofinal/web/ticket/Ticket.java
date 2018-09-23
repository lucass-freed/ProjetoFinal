package br.com.projetofinal.web.ticket;

import br.com.projetofinal.bean.TicketBean;
import br.com.projetofinal.bean.TicketTagBean;
import br.com.projetofinal.dao.TicketDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Michelle de Jesus Rogério (themicaloo@gmail.com)
 * @date 2018-08-27
 */
@WebServlet("/interno/ticket")
public class Ticket extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req,
            HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }
        int id = Integer.parseInt(req.getParameter("id"));
        TicketBean ticket = new TicketDAO().obterTicketPorID(id);
        List<TicketTagBean> ticketsTags = new TicketDAO().obterTagsPorTicket(ticket.getId());

        //atributo usado no index
        req.setAttribute("ticket", ticket);
        //atributo usado na tab descrição
        req.setAttribute("ticket1", ticket);
        req.setAttribute("ticket2", ticket);
        req.setAttribute("ticket3", ticket);
        req.setAttribute("ticket4", ticket);
        req.setAttribute("ticketsTags", ticketsTags);
        req.setAttribute("tipo", req.getParameter("tipo") == null ? "" : req.getParameter("tipo"));
        req.setAttribute("title", "Tickets");
        resp.setContentType("text/html;charset=UTF-8");
        req.getRequestDispatcher("/paginas/ticket/index.jsp").include(req, resp);
    }
}
