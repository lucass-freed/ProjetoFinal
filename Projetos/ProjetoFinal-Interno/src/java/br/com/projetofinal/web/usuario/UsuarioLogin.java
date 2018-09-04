package br.com.projetofinal.web.usuario;

import br.com.projetofinal.bean.ColaboradorBean;
import br.com.projetofinal.bean.UsuarioBean;
import br.com.projetofinal.dao.ColaboradorDAO;
import com.google.gson.Gson;
import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/usuario/login"})
public class UsuarioLogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        ColaboradorBean usuario = new ColaboradorDAO().validarLoginSenha(login, senha);
        HashMap<String, String> resultado = new HashMap<>();
        HttpSession sessao = request.getSession();

        if (usuario == null) {
            sessao.removeAttribute("usuario");
            resultado.put("status", "falhou");
        } else {
            sessao.setAttribute("usuario", usuario);

            resultado.put("status", "sucesso");
            resultado.put("id", String.valueOf(usuario.getId()));
        }
        response.getWriter().write(new Gson().toJson(resultado));
    }

}
