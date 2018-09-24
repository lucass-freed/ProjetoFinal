package br.com.projetofinal.web.ticket.chamado;

import br.com.projetofinal.bean.TicketBean;
import br.com.projetofinal.bean.TicketTagBean;
import br.com.projetofinal.dao.TicketDAO;
import br.com.projetofinal.dao.TicketTagDAO;
import br.com.projetofinal.enumTypes.CriticidadeTypes;
import br.com.projetofinal.enumTypes.EnumTicketStatusType;
import br.com.projetofinal.web.ticket.Ticket;
import java.io.IOException;
import java.sql.Date;
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
        ticket.setId(Integer.parseInt(req.getParameter("id")));
        ticket.setIdEmpresa(Integer.parseInt(req.getParameter("idEmpresa")));
        ticket.setIdColaborador(Integer.parseInt(req.getParameter("id_colaborador")));
        ticket.setIdSazonalidade(Integer.parseInt(req.getParameter("id_ticket_sazonalidade")));
        ticket.setIdUsuario(Integer.parseInt(req.getParameter("id_usuario")));
        ticket.setTitulo(req.getParameter("titulo"));
        ticket.setCriticidade(CriticidadeTypes.valueOf(req.getParameter("criticidade")));
        ticket.setStatus(EnumTicketStatusType.valueOf(req.getParameter("situacao")));
        ticket.setDescricao(req.getParameter("descricao"));
        ticket.setSistemaOperacional(req.getParameter("sistemaOperacional"));
        ticket.setVersaoBanco(req.getParameter("versaoBanco"));
        ticket.setDataAbertura(Date.valueOf(req.getParameter("data_ativacao")));
        
        int codigo = new TicketDAO().inserir(ticket);
        
        if(codigo > 0){
            resp.sendRedirect("/externo/chamado");
        }
        
        
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
