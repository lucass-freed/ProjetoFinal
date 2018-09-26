package br.com.projetofinal.web.usuario;

import br.com.projetofinal.dao.UsuarioDAO;
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
@WebServlet("/usuario/excluir")
public class UsuarioExcluir extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if(req.getSession().getAttribute("usuario") == null){
            resp.sendRedirect("/");
            return;
        }
        boolean apagou = new UsuarioDAO().apagar(Integer.parseInt(req.getParameter("id")));
        resp.sendRedirect("/externo/usuarios");

    }
    
}
