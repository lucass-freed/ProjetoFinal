package br.com.projetofinal.web.usuario;

import br.com.projetofinal.bean.UsuarioBean;
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
@WebServlet("/externo/perfil")
public class UsuarioPerfil extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }
        
        
        UsuarioBean usuario = (UsuarioBean) req.getSession().getAttribute("usuario");

        resp.setContentType("text/html;charset=UTF-8");
        req.setAttribute("title", "Perfil");
        req.setAttribute("usuario", usuario);
        req.getRequestDispatcher("/paginas/usuario/perfil/index.jsp").include(req, resp);
    }
}
