package br.com.projetofinal.web.interno;

import br.com.projetofinal.bean.TicketBean;
import br.com.projetofinal.dao.TicketDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/interno")
public class HomeInterno extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
        }
        
        List<TicketBean> tickets = new TicketDAO().listarTickets();
        req.setAttribute("tickets", tickets);

        resp.setContentType("text/html;charset=UTF-8");
        req.setAttribute("title", "Página inicial");
        req.getRequestDispatcher("/paginas/interno/index.jsp").include(req, resp);
    }

}
