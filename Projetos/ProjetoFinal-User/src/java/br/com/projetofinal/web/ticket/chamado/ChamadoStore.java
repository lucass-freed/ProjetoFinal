package br.com.projetofinal.web.ticket.chamado;

import br.com.projetofinal.bean.TagBean;
import br.com.projetofinal.bean.TicketBean;
import br.com.projetofinal.bean.TicketTagBean;
import br.com.projetofinal.bean.UsuarioBean;
import br.com.projetofinal.dao.TagsDAO;
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
        String[] tagsString = req.getParameterValues("tags[]");
        ArrayList<String> tagsList = new ArrayList<>();
        tagsList.addAll(Arrays.asList(tagsString));
        ArrayList<TagBean> tags = new ArrayList<>();
        for (int i = 0; i < tagsList.size(); i++) {
            tags.add(new TagsDAO().obterPeloID(Integer.parseInt(tagsList.get(i))));
        }

        ArrayList<CriticidadeTypes> criticidades = new ArrayList<>();
        for (int i = 0; i < tags.size(); i++) {
            criticidades.add(tags.get(i).getCriticidade());
        }

        if (criticidades.contains(CriticidadeTypes.ALTISSIMA)) {
            criticidade = CriticidadeTypes.ALTISSIMA;
        } else if (criticidades.contains(CriticidadeTypes.ALTA)) {
            criticidade = CriticidadeTypes.ALTA;
        } else if (criticidades.contains(CriticidadeTypes.MEDIA)) {
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
            for (String tag : tagsString) {
                TicketTagBean ticketTagBean = new TicketTagBean();
                ticketTagBean.setIdTickets(codigo);
                ticketTagBean.setIdTags(Integer.parseInt(tag));
                new TicketTagDAO().inserir(ticketTagBean);
            }
            resp.sendRedirect("/externo/chamado");
        }

    }
}
