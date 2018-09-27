package br.com.projetofinal.web.funcao;

import br.com.projetofinal.dao.FuncaoDAO;
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
@WebServlet("/interno/funcoes/excluir")
public class FuncaoExcluir extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }
        boolean apagou = new FuncaoDAO().apagar(Integer.parseInt(req.getParameter("id")));
        resp.sendRedirect("/interno/funcoes");
    }
}