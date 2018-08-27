package br.com.projetofinal.web.ticket;

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
public class Ticket extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, 
            HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("interno/ticket.jsp").include(req,resp);
    }
}
