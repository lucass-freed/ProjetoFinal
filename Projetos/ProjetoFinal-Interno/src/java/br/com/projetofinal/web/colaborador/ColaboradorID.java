package br.com.projetofinal.web.colaborador;

import br.com.projetofinal.bean.ColaboradorBean;
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
@WebServlet("/colaborador/id")
public class ColaboradorID extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }

        HashMap<String, String> resultado = new HashMap<>();
        HttpSession sessao = req.getSession();
        ColaboradorBean colaborador = (ColaboradorBean) sessao.getAttribute("usuario");

        resultado.put("id", String.valueOf(colaborador.getId()));
        resp.setContentType("text/html;charset=UTF-8");
        resp.getWriter().write(new Gson().toJson(resultado));

    }

}
