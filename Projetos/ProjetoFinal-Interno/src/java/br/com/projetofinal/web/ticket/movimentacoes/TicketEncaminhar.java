package br.com.projetofinal.web.ticket.movimentacoes;

import br.com.projetofinal.bean.ColaboradorBean;
import br.com.projetofinal.bean.FuncaoBean;
import br.com.projetofinal.bean.TicketBean;
import br.com.projetofinal.bean.TicketLogBean;
import br.com.projetofinal.dao.ColaboradorDAO;
import br.com.projetofinal.dao.FuncaoDAO;
import br.com.projetofinal.dao.TicketDAO;
import br.com.projetofinal.dao.TicketsLogDAO;
import br.com.projetofinal.enumTypes.EnumTicketStatusType;
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
@WebServlet("/interno/ticket/encaminhar")
public class TicketEncaminhar extends HttpServlet {
    
    /**
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }
        resp.setContentType("text/html;charset=UTF-8");
        int idTicket = Integer.parseInt(req.getParameter("ticketID"));
        ColaboradorBean colaboradorSessao = (ColaboradorBean) req.getSession().getAttribute("usuario");
        String escolha = req.getParameter("inputDestinos");
        if (escolha.equals("colaborador")) {
            int idColaborador = Integer.parseInt(req.getParameter("destino-colaborador"));
            ColaboradorBean colaborador = new ColaboradorDAO().obterColaboradorPorID(idColaborador);
            
            boolean setColaborador = new TicketDAO().alterarColaborador(idTicket, idColaborador);
            boolean setFuncao = new TicketDAO().alterarFuncao(idTicket, 0);
            
            TicketLogBean log = new TicketLogBean();
            log.setDataHoraMovto(new java.sql.Timestamp(new java.util.Date().getTime()));
            log.setIdColaborador(colaboradorSessao.getId());
            log.setObservacao("Encaminhado para o Colaborador: " + colaborador.getNome() + ", por " + colaboradorSessao.getNome() + ".");
            int a = new TicketsLogDAO().atualizarLog(log, idTicket);
        } else {
            int idFuncao = Integer.parseInt(req.getParameter("destino-funcao"));
            FuncaoBean funcao = new FuncaoDAO().obterFuncaoPeloID(idFuncao);
            
            boolean setFuncao = new TicketDAO().alterarFuncao(idTicket, idFuncao);
            boolean setColaborador = new TicketDAO().alterarColaborador(idTicket, 0);
            
            TicketLogBean log = new TicketLogBean();
            log.setDataHoraMovto(new java.sql.Timestamp(new java.util.Date().getTime()));
            log.setIdColaborador(colaboradorSessao.getId());
            log.setObservacao("Encaminhado para a Função: " + funcao.getNome() + ", por " + colaboradorSessao.getNome() + ".");
            int a = new TicketsLogDAO().atualizarLog(log, idTicket);
        }
        TicketBean ticket = new TicketDAO().obterTicketPorID(idTicket);
        if (ticket.getStatus() == EnumTicketStatusType.ABERTO) {
            boolean alterouStatus = new TicketDAO().alterarStatus(idTicket, "Em Andamento");
        }
        resp.sendRedirect("/interno/ticket?id=" + idTicket);
    }

}