package br.com.projetofinal.web.ticket.chamado;

import br.com.projetofinal.bean.TicketBean;
import br.com.projetofinal.bean.TicketTagBean;
import br.com.projetofinal.bean.UsuarioBean;
import br.com.projetofinal.dao.TicketDAO;
import br.com.projetofinal.dao.TicketTagDAO;
import br.com.projetofinal.enumTypes.CriticidadeTypes;
import br.com.projetofinal.enumTypes.EnumTicketStatusType;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Matheus Ruan Werner
 */
@WebServlet("/externo/chamado/store")
public class ChamadoStore extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }

        UsuarioBean usuarioSessao = (UsuarioBean) req.getSession().getAttribute("usuario");

        TicketBean ticket = new TicketBean();
            ticket.setIdEmpresa(usuarioSessao.getIdEmpresa());
        ticket.setIdUsuario(usuarioSessao.getId());
        ticket.setTitulo(req.getParameter("titulo"));

        CriticidadeTypes criticidade = null;
        String[] tags = req.getParameterValues("tags[]");
        ArrayList<String> tagsList = new ArrayList<>();
        tagsList.addAll(Arrays.asList(tags));

        if (tagsList.contains("1") || tagsList.contains("6")) {
            criticidade = CriticidadeTypes.ALTISSIMA;
        } else if (tagsList.contains("5")) {
            criticidade = CriticidadeTypes.ALTA;
        } else if (tagsList.contains("3") || tagsList.contains("2") || tagsList.contains("7")) {
            criticidade = CriticidadeTypes.MEDIA;
        } else {
            criticidade = CriticidadeTypes.BAIXA;
        }

        ticket.setCriticidade(criticidade);
        ticket.setStatus(EnumTicketStatusType.ABERTO);
        ticket.setDescricao(req.getParameter("descricao"));
        ticket.setDataAbertura(new java.sql.Timestamp(new java.util.Date().getTime()));

        int codigo = new TicketDAO().inserir(ticket);

        if (codigo > 0) {
//            for (String tag : tags) {
//                TicketTagBean ticketTagBean = new TicketTagBean();
//                ticketTagBean.setIdTickets(codigo);
//                ticketTagBean.setIdTags(Integer.parseInt(tag));
//                new TicketTagDAO().inserir(ticketTagBean);
//            }
            resp.sendRedirect("/externo/chamado");
        }

    }
}
