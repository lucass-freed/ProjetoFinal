package br.com.projetofinal.web.ticket;

import br.com.projetofinal.bean.EmpresaBean;
import br.com.projetofinal.bean.TicketBean;
import br.com.projetofinal.dao.EmpresaDAO;
import br.com.projetofinal.dao.TicketDAO;
import java.io.IOException;
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
        int id = Integer.parseInt(req.getParameter("id"));
        int idEmpresa = Integer.parseInt(req.getParameter("id"));
        EmpresaBean empresa = new EmpresaDAO().obterPeloId(idEmpresa);
        TicketBean ticket = new TicketDAO().obterTicketPorID(id);

        req.setAttribute("ticket", ticket);
        req.setAttribute("ticket1", ticket);
        req.setAttribute("empresa", empresa);
        req.setAttribute("tipo", req.getParameter("tipo") == null ? "" : req.getParameter("tipo"));
        req.getRequestDispatcher("/ticket/index.jsp").include(req, resp);
    }
}
