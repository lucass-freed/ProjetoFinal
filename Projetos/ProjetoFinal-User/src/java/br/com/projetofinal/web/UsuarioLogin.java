package br.com.projetofinal.web;

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
        UsuarioBean usuario = new UsuarioDAO().validarLoginSenha(login, senha);
        if (usuario == null) {
            response.getWriter().write("Deu ruim");
        } else {
            HttpSession sessao = request.getSession();
            
            sessao.setAttribute("usuario-" + usuario.getId(), usuario);
            
            HashMap<String, String> resultado = new HashMap<>();
            resultado.put("id", String.valueOf(usuario.getId()));
            resultado.put("tipo", usuario.getFuncao().getNome());
            Gson gson = new Gson();
            response.getWriter().write(gson.toJson(resultado));
        }
    }
    
}
