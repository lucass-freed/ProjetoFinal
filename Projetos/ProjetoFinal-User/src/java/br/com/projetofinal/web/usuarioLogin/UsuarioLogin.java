package br.com.projetofinal.web.usuarioLogin;

import br.com.projetofinal.Util.SHA512Metodos;
import br.com.projetofinal.bean.UsuarioBean;
import br.com.projetofinal.dao.UsuarioDAO;
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
        try {
            senha = new SHA512Metodos().criptografarSenha(senha);
        } catch (Exception e) {
            e.printStackTrace();
        }
        UsuarioBean usuario = new UsuarioDAO().validarLoginSenha(login, senha);
        HashMap<String, String> resultado = new HashMap<>();
        HttpSession sessao = request.getSession();

        if (usuario == null) {
            sessao.removeAttribute("usuario");
            resultado.put("status", "falhou");
        } else {
            sessao.setAttribute("usuario", usuario);

            resultado.put("status", "sucesso");
            resultado.put("id", String.valueOf(usuario.getId()));
            resultado.put("master", String.valueOf(usuario.isUsuarioMaster()));
        }
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().write(new Gson().toJson(resultado));
    }

}
