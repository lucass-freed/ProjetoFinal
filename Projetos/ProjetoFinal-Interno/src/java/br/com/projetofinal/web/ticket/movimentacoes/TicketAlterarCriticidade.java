package br.com.projetofinal.web.ticket.movimentacoes;

import br.com.projetofinal.bean.ColaboradorBean;
import br.com.projetofinal.bean.TicketLogBean;
import br.com.projetofinal.dao.ColaboradorDAO;
import br.com.projetofinal.dao.TicketDAO;
import br.com.projetofinal.dao.TicketsLogDAO;
import br.com.projetofinal.enumTypes.CriticidadeTypes;
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
@WebServlet("/interno/ticket/alterarCriticidade")
public class TicketAlterarCriticidade extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }
        resp.setContentType("text/html;charset=UTF-8");
        int idTicket = Integer.parseInt(req.getParameter("id"));
        int idColaborador = Integer.parseInt(req.getParameter("idColaborador"));
        CriticidadeTypes criticidade = CriticidadeTypes.getEnum(req.getParameter("criticidade"));
        
        TicketLogBean log = new TicketLogBean();
        log.setDataHoraMovto(new java.sql.Timestamp(new java.util.Date().getTime()));
        log.setIdColaborador(idColaborador);
        log.setObservacao("Criticidade alterada para " + CriticidadeTypes.getText(CriticidadeTypes.getEnum(req.getParameter("criticidade"))) + ".");
        
        boolean alterouCriticidade = new TicketDAO().alterarCriticidade(idTicket, criticidade);
        boolean alterouColaborador = new TicketDAO().alterarColaborador(idTicket, idColaborador);
        int a = new TicketsLogDAO().atualizarLog(log, idTicket);
        resp.sendRedirect("/interno/ticket?id=" + idColaborador);
    }

}
