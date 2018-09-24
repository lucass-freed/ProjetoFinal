package br.com.projetofinal.web.empresa;

import br.com.projetofinal.dao.EmpresaDAO;
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
@WebServlet("/empresa/excluir")
public class EmpresaExcluir extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }
        boolean apagou = new EmpresaDAO().excluir(Integer.parseInt(req.getParameter("id")));
        resp.sendRedirect("/interno/empresas");
    }
}
