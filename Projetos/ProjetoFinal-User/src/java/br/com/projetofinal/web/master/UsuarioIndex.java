package br.com.projetofinal.web.master;

import br.com.projetofinal.bean.UsuarioBean;
import br.com.projetofinal.dao.UsuarioDAO;
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
@WebServlet("/usuario-master-externo")
public class UsuarioIndex extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
        }

        List<UsuarioBean> usuarios = new UsuarioDAO().obterUsuarios();
        req.setAttribute("usuarios", usuarios);
        req.setAttribute("title", "Perfil");
        req.setAttribute("usuario", req.getSession().getAttribute("usuario"));
        
        resp.setContentType("text/html;charset=UTF-8");
        req.getRequestDispatcher("padrao-externo-master/usuarios/usuarios-index.jsp").include(req, resp);
    }

}
