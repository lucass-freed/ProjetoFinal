package br.com.projetofinal.web.usuarioLogin;

import br.com.projetofinal.Util.SHA512Metodos;
import br.com.projetofinal.bean.UsuarioBean;
import br.com.projetofinal.dao.UsuarioDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/usuario/update"})
public class UsuarioAlterar extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getSession().getAttribute("usuario") == null) {
            response.sendRedirect("/");
            return;
        }
        try {
            UsuarioBean usuario = (UsuarioBean) request.getSession().getAttribute("usuario");
            usuario.setSenha(new SHA512Metodos().criptografarSenha(request.getParameter("password")));
            boolean alterou = new UsuarioDAO().alterar(usuario);

            response.sendRedirect("/externo/usuario/perfil");
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
