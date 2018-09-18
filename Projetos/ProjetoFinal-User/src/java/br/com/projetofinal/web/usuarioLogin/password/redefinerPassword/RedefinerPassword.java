package br.com.projetofinal.web.usuarioLogin.password.redefinerPassword;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
@WebServlet(urlPatterns = {"/externo/redefinir-senha"})
public class RedefinerPassword extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        resp.setContentType("text/html;charset=UTF-8");
        req.setAttribute("title", "Redefinir Senha");
        req.getRequestDispatcher("/paginas/password/redefiner-password/index.jsp").include(req, resp);
    }

}
