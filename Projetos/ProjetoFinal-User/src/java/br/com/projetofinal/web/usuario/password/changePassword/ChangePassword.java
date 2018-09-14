package br.com.projetofinal.web.usuario.password.changePassword;

import br.com.projetofinal.bean.UsuarioBean;
import br.com.projetofinal.dao.UsuarioDAO;
import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
@WebServlet(urlPatterns = {"/interno/trocar-senha"})
public class ChangePassword extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
        }
        HttpSession sessao = req.getSession();
        String senha = req.getParameter("senha");
        UsuarioBean u = (UsuarioBean) sessao.getAttribute("usuario");
        UsuarioBean usuario = new UsuarioDAO().validarLoginSenha(u.getUsuario(), senha);
        HashMap<String, String> resultado = new HashMap<>();

        if (usuario == null) {
            sessao.removeAttribute("usuario");
            resultado.put("status", "falhou");
        } else {
            sessao.setAttribute("usuario", usuario);

            resultado.put("status", "sucesso");
            resultado.put("id", String.valueOf(usuario.getId()));
        }

        resp.setContentType("text/html;charset=UTF-8");
        req.setAttribute("title", "Mudar Senha");
        req.getRequestDispatcher("/paginas/password/change-password/index.jsp").include(req, resp);
    }

}
