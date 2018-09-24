package br.com.projetofinal.web.externo;

import br.com.projetofinal.bean.UsuarioBean;
import br.com.projetofinal.dao.UsuarioDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Thiago
 */
@WebServlet("/externo")
public class HomeExterno extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }
        
        UsuarioBean usuario = (UsuarioBean) req.getSession().getAttribute("usuario");

        
        req.setAttribute("title", "Página inicial");
        req.setAttribute("usuario", usuario);
        resp.setContentType("text/html;charset=UTF-8");
        req.getRequestDispatcher("/paginas/externo/index.jsp").include(req, resp);
    }
}
