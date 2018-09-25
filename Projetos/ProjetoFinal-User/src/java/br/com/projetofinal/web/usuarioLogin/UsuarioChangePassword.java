package br.com.projetofinal.web.usuarioLogin;

import br.com.projetofinal.Util.SHA512Metodos;
import br.com.projetofinal.bean.UsuarioBean;
import com.google.gson.Gson;
import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/usuario/change-password"})
public class UsuarioChangePassword extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String senha = request.getParameter("senha");
        try {
            senha = new SHA512Metodos().criptografarSenha(senha);
        } catch (Exception e) {
            e.printStackTrace();
        }
        HttpSession sessao = request.getSession();
        UsuarioBean usuario = (UsuarioBean) sessao.getAttribute("usuario");

        HashMap<String, String> resultado = new HashMap<>();

        if (!usuario.getSenha().equalsIgnoreCase(senha)) {
            resultado.put("status", "falhou");
        } else {
            resultado.put("status", "sucesso");
            resultado.put("id", String.valueOf(usuario.getId()));
        }
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().write(new Gson().toJson(resultado));
    }

}
