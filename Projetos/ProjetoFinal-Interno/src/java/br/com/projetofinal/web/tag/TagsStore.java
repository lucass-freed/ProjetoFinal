package br.com.projetofinal.web.tag;

import br.com.projetofinal.bean.TagBean;
import br.com.projetofinal.dao.TagsDAO;
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
@WebServlet("/interno/tag/store")
public class TagsStore extends HttpServlet {

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

        TagBean tag = new TagBean();
        tag.setTitulo(req.getParameter("inputTitulo"));
        tag.setCriticidade(CriticidadeTypes.getEnum(req.getParameter("selectCriticidade")));

        int codigo = new TagsDAO().inserir(tag);

        if (codigo > 0) {
            resp.sendRedirect("/interno/tags");
        }
    }

}
