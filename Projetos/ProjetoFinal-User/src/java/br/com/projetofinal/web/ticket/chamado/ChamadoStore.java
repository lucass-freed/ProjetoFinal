package br.com.projetofinal.web.ticket.chamado;

import br.com.projetofinal.bean.TicketBean;
import br.com.projetofinal.bean.TicketTagBean;
import br.com.projetofinal.web.ticket.Ticket;
import java.io.IOException;
import java.util.Arrays;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alunos
 */
@WebServlet("/externo/chamado/store")
public class ChamadoStore extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }
        
        TicketBean ticket = new TicketBean();
        // popular ticket com as info do form
        // cadastrar ticket 
        
        String[] tags = req.getParameterValues("tags[]");
        for (String tag : tags) {
            TicketTagBean ticketTagBean = new TicketTagBean();
            ticketTagBean.setIdTags(Integer.parseInt(tag));
            ticketTagBean.setIdTickets(ticket.getId());
            new TicketTagDAO().inserir(ticketTagBean);
        }
        
        System.out.println(Arrays.toString(tags));
    }

}
