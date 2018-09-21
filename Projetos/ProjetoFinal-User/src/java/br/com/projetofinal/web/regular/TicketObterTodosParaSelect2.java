package br.com.projetofinal.web.regular;

import br.com.projetofinal.bean.UsuarioBean;
import br.com.projetofinal.dao.TicketDAO;
import com.google.gson.Gson;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
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
@WebServlet("/ticket/obtertodosparaselect2")
public class TicketObterTodosParaSelect2 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }
        String termo = req.getParameter("term") == null ? "" : req.getParameter("term");
        HttpSession sessao = req.getSession();
        UsuarioBean usuario = (UsuarioBean) sessao.getAttribute("usuario");
        
        List<HashMap<String, String>> categorias = new TicketDAO().obterTodosParaSelect2(usuario.getId(), termo);
        HashMap<String, Object> resultado = new HashMap<>();
        resultado.put("results", categorias);
        resp.setContentType("text/html;charset=UTF-8");
        resp.getWriter().print(new Gson().toJson(resultado));
    }

}
