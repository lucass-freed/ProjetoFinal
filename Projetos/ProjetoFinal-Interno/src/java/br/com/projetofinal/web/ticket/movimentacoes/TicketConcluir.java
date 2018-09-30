package br.com.projetofinal.web.ticket.movimentacoes;

import br.com.projetofinal.Util.TempoFormatador;
import br.com.projetofinal.bean.ColaboradorBean;
import br.com.projetofinal.bean.TicketBean;
import br.com.projetofinal.bean.TicketLogBean;
import br.com.projetofinal.dao.ColaboradorDAO;
import br.com.projetofinal.dao.FuncaoDAO;
import br.com.projetofinal.dao.TicketDAO;
import br.com.projetofinal.dao.TicketsLogDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.joda.time.DateTime;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
@WebServlet("/interno/ticket/concluir")
public class TicketConcluir extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }
        resp.setContentType("text/html;charset=UTF-8");
        ColaboradorBean colaborador = (ColaboradorBean) req.getSession().getAttribute("usuario");
        int id = Integer.parseInt(req.getParameter("ticketID"));
        String resolucao = req.getParameter("resolucao");
        boolean salvarDataResolucao = new TicketDAO().salvarDataResolucao(id);

        TicketBean ticket = new TicketDAO().obterTicketPorID(id);
        if (ticket.getIdColaborador() <= 0 && ticket.getIdFuncaoMovimentacao() <= 0) {
            boolean alterarColaborador = new TicketDAO().alterarColaborador(id, colaborador.getId());
        }
        ticket = new TicketDAO().obterTicketPorID(id);
        if (ticket.getIdColaborador() > 0) {
            TicketLogBean log = new TicketLogBean();
            log.setDataHoraMovto(new java.sql.Timestamp(new java.util.Date().getTime()));
            log.setIdColaborador(ticket.getIdColaborador());
            log.setObservacao("Concluído pelo Colaborador: " + new ColaboradorDAO().obterColaboradorPorID(ticket.getIdColaborador()).getNome() + ".");
            int a = new TicketsLogDAO().atualizarLog(log, id);
        } else if (ticket.getIdFuncaoMovimentacao() > 0) {
            TicketLogBean log = new TicketLogBean();
            log.setDataHoraMovto(new java.sql.Timestamp(new java.util.Date().getTime()));
            log.setIdFuncao(ticket.getIdFuncaoMovimentacao());
            log.setObservacao("Concluído pela Função: " + new FuncaoDAO().obterFuncaoPeloID(ticket.getIdFuncaoMovimentacao()).getNome() + ".");
            int a = new TicketsLogDAO().atualizarLog(log, id);
        }

        DateTime data1 = new DateTime(ticket.getDataAbertura().getTime());
        DateTime data2 = new DateTime(ticket.getDataEncerramento().getTime());
        boolean concluir = new TicketDAO().concluir(id, resolucao, TempoFormatador.formatarTempo(data1, data2));
        resp.sendRedirect("/interno/ticket?id=" + id);
    }
}
