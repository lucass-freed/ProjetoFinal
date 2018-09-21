/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projetofinal.web.regular;

import br.com.projetofinal.bean.TagBean;
import br.com.projetofinal.bean.TicketBean;
import br.com.projetofinal.dao.TagsDAO;
import br.com.projetofinal.dao.TicketDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alunos
 */
@WebServlet("/chamado")
public class ChamadoIndex extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }
        //int id = Integer.parseInt(req.getParameter("id"));
        //TicketBean ticket = new TicketDAO.inserir(id);
        List<TagBean> tags = new TagsDAO().listarTags();
        req.setAttribute("tags", tags);        

        req.setAttribute("title", "Perfil");
        
        resp.setContentType("text/html;charset=UTF-8");
        req.getRequestDispatcher("/padrao-externo-regular/chamado/index.jsp").include(req, resp);
    }

}
