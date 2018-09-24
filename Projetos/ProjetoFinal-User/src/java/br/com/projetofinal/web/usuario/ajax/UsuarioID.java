package br.com.projetofinal.web.usuario.ajax;

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

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
@WebServlet("/usuario/id")
public class UsuarioID extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }

        HashMap<String, String> resultado = new HashMap<>();
        HttpSession sessao = req.getSession();
        UsuarioBean usuario = (UsuarioBean) sessao.getAttribute("usuario");

        resultado.put("id", String.valueOf(usuario.getId()));
        resp.setContentType("text/html;charset=UTF-8");
        resp.getWriter().write(new Gson().toJson(resultado));

    }

}
