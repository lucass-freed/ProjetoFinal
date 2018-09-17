package br.com.projetofinal.web.usuario;

import br.com.projetofinal.bean.ColaboradorBean;
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

@WebServlet(urlPatterns = {"/usuario/change-password"})
public class UsuarioChangePassword extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String senha = request.getParameter("senha");
        ColaboradorBean colaborador = new ColaboradorDAO().validarSenha(senha);
        HashMap<String, String> resultado = new HashMap<>();
        HttpSession sessao = request.getSession();

        if (colaborador == null) {
            sessao.removeAttribute("usuario");
            resultado.put("status", "falhou");
        } else {
            sessao.setAttribute("usuario", colaborador);

            resultado.put("status", "sucesso");
            resultado.put("id", String.valueOf(colaborador.getId()));
        }
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().write(new Gson().toJson(resultado));
    }

}
